DECLARE @cols AS NVARCHAR(MAX),
    @query AS NVARCHAR(MAX);

SET @cols = STUFF((SELECT DISTINCT ',' +
                                   QUOTENAME(DisplayLabel)
                       FROM KCSystem.dbo.BatchField BF
                                INNER JOIN KCSystem.dbo.BatchCatalog BC ON BC.ExternalBatchID = BF.BatchID
                                INNER JOIN KCSystem.dbo.BatchDocument BD
                                           ON BF.BatchID = BD.BatchID AND BF.DocID = BD.DocID
                                INNER JOIN KCSystem.dbo.IndexField BI
                                           ON BF.IndexFieldID = BI.IndexFieldID AND
                                              BC.BatchDefID = BI.PublishedBatchDefID
                       WHERE BatchName IN (SELECT BatchName COLLATE DATABASE_DEFAULT
                                               FROM ddoc_Control.trx.Batches B
                                                        INNER JOIN ddoc_Control.trx.Audits A ON B.AuditId = A.Id
                                               WHERE Number = 577)
                       FOR XML PATH(''), TYPE).value('.', 'NVARCHAR(MAX)'), 1, 1, '');

SET @query = 'SELECT BatchName, DocID, UniqueID, PDFGenerationFileName, ' + @cols + '
              FROM
              (
                  SELECT BatchName, BD.DocID,UniqueID, PDFGenerationFileName, DisplayLabel, Value
                  FROM KCSystem.dbo.BatchField BF
                         INNER JOIN KCSystem.dbo.BatchCatalog BC ON BC.ExternalBatchID = BF.BatchID
                         INNER JOIN KCSystem.dbo.BatchDocument BD ON BF.BatchID = BD.BatchID AND BF.DocID = BD.DocID
                         INNER JOIN KCSystem.dbo.IndexField BI
                                    ON BF.IndexFieldID = BI.IndexFieldID AND BC.BatchDefID = BI.PublishedBatchDefID
                   WHERE BatchName IN (SELECT BatchName COLLATE DATABASE_DEFAULT
                            FROM ddoc_Control.trx.Batches B
                                     INNER JOIN ddoc_Control.trx.Audits A ON B.AuditId = A.Id
                            WHERE Number = 577)
              ) x
              PIVOT
              (
                  MAX(Value)
                  FOR DisplayLabel IN (' + @cols + ')
              ) p ';

EXECUTE (@query);

EXEC usp_GenerateBatchPivot 534;