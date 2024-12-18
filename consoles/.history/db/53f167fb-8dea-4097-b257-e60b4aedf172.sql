SELECT SUM(Paginas)
    FROM Cuenta_Publica.dbo.[01DatosDiario]
UNION
SELECT SUM(Paginas)
    FROM Cuenta_Publica.dbo.[02DatosEgresos]
UNION
SELECT SUM(Paginas)
    FROM Cuenta_Publica.dbo.[03DatosIngreso]
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM KCSystem.dbo.viewBatchList
;-- -. . -..- - / . -. - .-. -.--
SELECT BatchClassName
     , ModuleName
     , BatchStatusName
     , ActualDocs
     , ActualPages
    FROM KCSystem.dbo.viewBatchList
;-- -. . -..- - / . -. - .-. -.--
SELECT BatchClassName
     , ModuleName
     , BatchStatusName
     , ActualDocs
     , ActualPages
    FROM KCSystem.dbo.viewBatchList
    GROUP BY BatchClassName, ModuleName, BatchStatusName, ActualDocs, ActualPages
;-- -. . -..- - / . -. - .-. -.--
SELECT BatchClassName
     , ModuleName
     , BatchStatusName
     , SUM(ActualDocs)  AS ActualDocs
     , SUM(ActualPages) AS ActualPages
    FROM KCSystem.dbo.viewBatchList
    GROUP BY BatchClassName, ModuleName, BatchStatusName
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM CATASTRO_TULUM.DBO.DATOS
;-- -. . -..- - / . -. - .-. -.--
SELECT FechaProcesado
     , COUNT(*)     AS DOCUMENTOS
     , SUM(Paginas) AS PAGINAS
    FROM CATASTRO_TULUM.dbo.Datos
    GROUP BY FechaProcesado
;-- -. . -..- - / . -. - .-. -.--
SELECT FechaProcesado
     , COUNT(*)     AS DOCUMENTOS
     , SUM(Paginas) AS PAGINAS
    FROM CATASTRO_TULUM.dbo.Datos
    GROUP BY FechaProcesado
ORDER BY CONVERT(DATE, FechaProcesado, 103)
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.prd.ProductionLines
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.Batches
WHERE ProductionLineId = 10
;-- -. . -..- - / . -. - .-. -.--
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
                                               WHERE Number = 344)
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
                            WHERE Number = 344)
              ) x
              PIVOT
              (
                  MAX(Value)
                  FOR DisplayLabel IN (' + @cols + ')
              ) p ';

EXECUTE (@query);
;-- -. . -..- - / . -. - .-. -.--
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
                                               FROM SICPD.trx.Batches B
                                                        INNER JOIN SICPD.trx.Audits A ON B.AuditId = A.Id
                                               WHERE Number = 344)
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
                            FROM SICPD.trx.Batches B
                                     INNER JOIN SICPD.trx.Audits A ON B.AuditId = A.Id
                            WHERE Number = 344)
              ) x
              PIVOT
              (
                  MAX(Value)
                  FOR DisplayLabel IN (' + @cols + ')
              ) p ';

EXECUTE (@query);
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.Audits
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.Audits
WHERE Number = 344
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM SICPD.trx.AuditContents
    WHERE AuditId IN (SELECT Id
                          FROM SICPD.trx.FinalAudits
                          WHERE Number = 344)
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM SICPD.trx.AuditContents
    WHERE AuditId IN (SELECT Id
                          FROM SICPD.trx.Audits
                          WHERE Number = 344)
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.Batches
WHERE Id = 99770
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchField
    WHERE Value IN (
                    '901001001053001',
                    '901001001054001',
                    '901001001054002')
;-- -. . -..- - / . -. - .-. -.--
SELECT BatchID
                                  FROM KCSystem.dbo.BatchField
                                  WHERE Value IN (
                                                  '901001001053001',
                                                  '901001001054001',
                                                  '901001001054002')
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchCatalog
    WHERE ExternalBatchID IN (SELECT BatchID
                                  FROM KCSystem.dbo.BatchField
                                  WHERE Value IN (
                                                  '901001001053001',
                                                  '901001001054001',
                                                  '901001001054002'))
;-- -. . -..- - / . -. - .-. -.--
SELECT BatchID, DocID
    FROM KCSystem.dbo.BatchField
    WHERE Value IN (
                    '901001001053001',
                    '901001001054001',
                    '901001001054002')
;-- -. . -..- - / . -. - .-. -.--
SELECT BatchID, DocID, Value
    FROM KCSystem.dbo.BatchField
    WHERE Value IN (
                    '901001001053001',
                    '901001001054001',
                    '901001001054002')
;-- -. . -..- - / . -. - .-. -.--
SELECT BatchClassName
     , ModuleName
     , BatchStatusName
     , COUNT(BatchName) AS LOTES
     , SUM(ActualDocs)  AS ActualDocs
     , SUM(ActualPages) AS ActualPages
    FROM KCSystem.dbo.viewBatchList
    GROUP BY BatchClassName, ModuleName, BatchStatusName
;-- -. . -..- - / . -. - .-. -.--
SELECT B.Id AS CONTENEDOR
     , BC.BatchName
     , ActualDocs
     , ActualPages
     , ProcessID
     , State
     , B.ModuleId
     , B.StatusId
     , AuditId
     , FinalAuditId
     , ClassName
    FROM KCSystem.dbo.BatchCatalog BC
             INNER JOIN SICPD.trx.Batches B ON BC.BatchName = B.BatchName COLLATE DATABASE_DEFAULT
    WHERE ProcessID = 14999
      AND State = 128
;-- -. . -..- - / . -. - .-. -.--
UPDATE SICPD.trx.Batches
SET ModuleId = 64
WHERE BatchName IN (
                    'Catastro_Tulum - CAJA 004 - CATASTRO TULUM',
                    'Catastro_Tulum - CAJA 001 - CATASTRO TULUM COMPLEMENTO'
    )
;-- -. . -..- - / . -. - .-. -.--
UPDATE SICPD.trx.Batches
SET ModuleId = 64 AND StatusId = 2
    WHERE BatchName NOT IN (
        'Catastro_Tulum - CAJA 003 - CATASTRO TULUM'
        )
;-- -. . -..- - / . -. - .-. -.--
UPDATE SICPD.trx.Batches
SET ModuleId = 128 AND StatusId = 2
WHERE BatchName IN (
                    'Catastro_Tulum - CAJA 003 - CATASTRO TULUM'
    )
;-- -. . -..- - / . -. - .-. -.--
UPDATE SICPD.trx.Batches
SET ModuleId = 128 , StatusId = 2
WHERE BatchName IN (
                    'Catastro_Tulum - CAJA 003 - CATASTRO TULUM'
    )
;-- -. . -..- - / . -. - .-. -.--
UPDATE SICPD.trx.Batches
SET ModuleId = 64 , StatusId = 2
    WHERE BatchName NOT IN (
        'Catastro_Tulum - CAJA 003 - CATASTRO TULUM'
        )
;-- -. . -..- - / . -. - .-. -.--
SELECT B.Id AS CONTENEDOR
     , BC.BatchName
     , ActualDocs
     , ActualPages
     , ProcessID
     , State
     , B.ModuleId
     , B.StatusId
     , AuditId
     , FinalAuditId
     , ClassName
    FROM KCSystem.dbo.BatchCatalog BC
             INNER JOIN SICPD.trx.Batches B ON BC.BatchName = B.BatchName COLLATE DATABASE_DEFAULT
    WHERE ProcessID = 5
      AND State = 128
;-- -. . -..- - / . -. - .-. -.--
UPDATE SICPD.trx.Batches
SET ModuleId = 128 , StatusId = 2
WHERE BatchName IN (
                    'Catastro_Tulum - CAJA 008 - CATASTRO TULUM ',
                   'Catastro_Tulum - CAJA 009 - CATASTRO TULUM '
    )
;-- -. . -..- - / . -. - .-. -.--
EXEC SICPD.TRX.AuditGetCandidates
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.FinalAudits
WHERE Number = 347
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.Batches
WHERE AuditId IN (
SELECT Id FROM SICPD.trx.Audits
WHERE Number = 347)
;-- -. . -..- - / . -. - .-. -.--
SELECT Id FROM SICPD.trx.Audits
WHERE Number = 347
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.Audits
WHERE Number = 347
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.Batches
WHERE AuditId IN (
SELECT ID FROM SICPD.trx.Audits
WHERE Number = 347)
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.Batches
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.Batches
WHERE BatchName LIKE '%038%'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.Batches
WHERE BatchName LIKE '%038%'
AND BatchClass = 'Catastro_TULUM'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.Batches
WHERE ID IN (
SELECT BATCHID FROM SICPD.trx.AuditContents
WHERE AuditId IN (
SELECT ID FROM SICPD.trx.Audits
WHERE Number = 347))
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM CATASTRO_TULUM02.dbo.Datos D
             INNER JOIN CATASTRO_TULUM02.dbo.DOCUMENTOS D2 ON D.DID = D2.DID
;-- -. . -..- - / . -. - .-. -.--
SELECT BatchName
    FROM SICPD.trx.Batches
    WHERE Id IN (SELECT BatchId
                     FROM SICPD.trx.AuditContents
                     WHERE AuditId IN (SELECT Id
                                           FROM SICPD.trx.Audits
                                           WHERE Number = 347))
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM CATASTRO_TULUM.dbo.Datos
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM CATASTRO_TULUM02.dbo.Datos
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM CATASTRO_TULUM02.dbo.Datos D
INNER JOIN DBO.DOCUMENTOS D2 ON D.DID = D2.DID
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM CATASTRO_TULUM02.dbo.Datos D
INNER JOIN CATASTRO_TULUM02.DBO.DOCUMENTOS D2 ON D.DID = D2.DID
;-- -. . -..- - / . -. - .-. -.--
SELECT sum(Paginas) FROM CATASTRO_TULUM02.dbo.Datos D
INNER JOIN CATASTRO_TULUM02.DBO.DOCUMENTOS D2 ON D.DID = D2.DID
;-- -. . -..- - / . -. - .-. -.--
SELECT FechaProcesado
     , COUNT(*)     AS DOCUMENTOS
     , SUM(Paginas) AS PAGINAS
    FROM CATASTRO_TULUM02.dbo.Datos D
             INNER JOIN CATASTRO_TULUM02.dbo.Documentos D2 ON D.DID = D2.DID
GROUP BY FechaProcesado
;-- -. . -..- - / . -. - .-. -.--
UPDATE CATASTRO_TULUM02.dbo.Datos
SET Migrado = 0
WHERE Migrado IS NULL
;-- -. . -..- - / . -. - .-. -.--
UPDATE CATASTRO_TULUM02.dbo.Datos
SET Migrado = NULL
WHERE FechaProcesado = '12/10/2024'
;-- -. . -..- - / . -. - .-. -.--
UPDATE CATASTRO_TULUM02.dbo.Datos
SET Migrado = NULL
WHERE FechaProcesado = '30/10/2024'
;-- -. . -..- - / . -. - .-. -.--
SELECT FechaProcesado
     ,Migrado
     , COUNT(*)     AS DOCUMENTOS
     , SUM(Paginas) AS PAGINAS
    FROM CATASTRO_TULUM02.dbo.Datos D
             INNER JOIN CATASTRO_TULUM02.dbo.Documentos D2 ON D.DID = D2.DID
GROUP BY FechaProcesado , Migrado
;-- -. . -..- - / . -. - .-. -.--
SELECT Migrado
     , COUNT(*)     AS DOCUMENTOS
     , SUM(Paginas) AS PAGINAS
    FROM CATASTRO_TULUM02.dbo.Datos D
             INNER JOIN CATASTRO_TULUM02.dbo.Documentos D2 ON D.DID = D2.DID
    GROUP BY Migrado
;-- -. . -..- - / . -. - .-. -.--
SELECT Migrado
     , COUNT(*)     AS DOCUMENTOS
     , SUM(Paginas) AS PAGINAS
, sum(PaginasDdoc) AS PAGINASDDOC
    FROM CATASTRO_TULUM02.dbo.Datos D
             INNER JOIN CATASTRO_TULUM02.dbo.Documentos D2 ON D.DID = D2.DID
    GROUP BY Migrado
;-- -. . -..- - / . -. - .-. -.--
SELECT FechaProcesado
     , Migrado
     , COUNT(*)     AS DOCUMENTOS
     , SUM(PaginasDdoc) AS PAGINAS
    FROM CATASTRO_TULUM02.dbo.Datos D
             INNER JOIN CATASTRO_TULUM02.dbo.Documentos D2 ON D.DID = D2.DID
    GROUP BY FechaProcesado, Migrado
;-- -. . -..- - / . -. - .-. -.--
SELECT FechaProcesado
     , Migrado
     , COUNT(*)     AS DOCUMENTOS
     , SUM(PaginasDdoc) AS PAGINAS
    FROM CATASTRO_TULUM02.dbo.Datos D
             INNER JOIN CATASTRO_TULUM02.dbo.Documentos D2 ON D.DID = D2.DID
    GROUP BY FechaProcesado, Migrado
ORDER BY CONVERT(DATE, FechaProcesado, 103)
;-- -. . -..- - / . -. - .-. -.--
SELECT Migrado
     , COUNT(*)         AS DOCUMENTOS
     , SUM(PaginasDdoc) AS PAGINASDDOC
    FROM CATASTRO_TULUM02.dbo.Datos D
             INNER JOIN CATASTRO_TULUM02.dbo.Documentos D2 ON D.DID = D2.DID
    GROUP BY Migrado
;-- -. . -..- - / . -. - .-. -.--
SELECT FechaProcesado
     , Migrado
     , COUNT(*)         AS DOCUMENTOS
     , SUM(PaginasDdoc) AS PAGINAS
    FROM CATASTRO_TULUM02.dbo.Datos D
             INNER JOIN CATASTRO_TULUM02.dbo.Documentos D2 ON D.DID = D2.DID
    GROUP BY FechaProcesado, Migrado
    ORDER BY CONVERT(DATE, FechaProcesado, 103)
;-- -. . -..- - / . -. - .-. -.--
SELECT FechaProcesado
     , Migrado
     , COUNT(*)         AS DOCUMENTOS
     , SUM(Paginas) AS PAGINAS
     , SUM(PaginasDdoc) AS PAGINASddoc
    FROM CATASTRO_TULUM02.dbo.Datos D
             INNER JOIN CATASTRO_TULUM02.dbo.Documentos D2 ON D.DID = D2.DID
    GROUP BY FechaProcesado, Migrado
    ORDER BY CONVERT(DATE, FechaProcesado, 103)
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM CATASTRO_TULUM02.dbo.Datos D
             INNER JOIN CATASTRO_TULUM02.dbo.Documentos D2 ON D.DID = D2.DID
    WHERE convert(DATE, FechaMigrado, 103) => '2024-11-22'
    GROUP BY Migrado
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM CATASTRO_TULUM02.dbo.Datos D
             INNER JOIN CATASTRO_TULUM02.dbo.Documentos D2 ON D.DID = D2.DID
    WHERE convert(DATE, FechaMigrado, 103) >= '2024-11-22'
    GROUP BY Migrado
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM CATASTRO_TULUM02.dbo.Datos D
             INNER JOIN CATASTRO_TULUM02.dbo.Documentos D2 ON D.DID = D2.DID
    WHERE convert(DATE, FechaMigrado, 103) >= '2024-11-22'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM CATASTRO_TULUM02.dbo.Datos D
             INNER JOIN CATASTRO_TULUM02.dbo.Documentos D2 ON D.DID = D2.DID
    WHERE convert(DATE, FechaProcesado, 103) >= '2024-11-22'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM CATASTRO_TULUM02.dbo.Datos D
             INNER JOIN CATASTRO_TULUM02.dbo.Documentos D2 ON D.DID = D2.DID
    WHERE convert(DATE, FechaProcesado, 103) > '2024-11-21'
;-- -. . -..- - / . -. - .-. -.--
SELECT ID
     , ClaveCatastral
     , Folionumero
     , Categoria
     , UbicacionPredio
     , NombrePropietario
     , Padron
     , Localidad
     , Region
     , Supermanzana
     , Manzana
     , Lote
     , Condominio
     , D.DID
     , GID
     , PaginasDdoc
     , Migrado
     , NombreLote
     , FechaProcesado
    FROM CATASTRO_TULUM02.dbo.Datos D
             INNER JOIN CATASTRO_TULUM02.dbo.Documentos D2 ON D.DID = D2.DID
    WHERE CONVERT(DATE, FechaProcesado, 103) > '2024-11-21'
;-- -. . -..- - / . -. - .-. -.--
SELECT ID
     , ClaveCatastral
     , Folionumero
     , Categoria
     , UbicacionPredio
     , NombrePropietario
     , Padron
     , Localidad
     , Region
     , Supermanzana
     , Manzana
     , Lote
     , Condominio
     , D.DID
     , GID
     , PaginasDdoc
     , Migrado
     , NombreLote
     , FechaProcesado
    FROM CATASTRO_TULUM02.dbo.Datos
    WHERE CONVERT(DATE, FechaProcesado, 103) > '2024-11-21'
;-- -. . -..- - / . -. - .-. -.--
AS DOCUMENTOS
;-- -. . -..- - / . -. - .-. -.--
SELECT ID
     , ClaveCatastral
     , Folionumero
     , Categoria
     , UbicacionPredio
     , NombrePropietario
     , Padron
     , Localidad
     , Region
     , Supermanzana
     , Manzana
     , Lote
     , Condominio
     , DID
     , GID
     , PaginasDdoc
     , Migrado
     , NombreLote
     , FechaProcesado
    FROM CATASTRO_TULUM02.dbo.Datos
    WHERE CONVERT(DATE, FechaProcesado, 103) > '2024-11-21'
;-- -. . -..- - / . -. - .-. -.--
SELECT FechaProcesado
     , Migrado
     , COUNT(*)         AS DOCUMENTOS
     --, SUM(Paginas) AS PAGINAS
     , SUM(PaginasDdoc) AS PAGINASddoc
    FROM CATASTRO_TULUM02.dbo.Datos D
             INNER JOIN CATASTRO_TULUM02.dbo.Documentos D2 ON D.DID = D2.DID
    GROUP BY FechaProcesado, Migrado
    ORDER BY CONVERT(DATE, FechaProcesado, 103)
;-- -. . -..- - / . -. - .-. -.--
SELECT ID
     , ClaveCatastral
     , Folionumero
     , Categoria
     , UbicacionPredio
     , NombrePropietario
     , Padron
     , Localidad
     , Region
     , Supermanzana
     , Manzana
     , Lote
     , Condominio
     , DID
     , GID
     , PaginasDdoc
     , Migrado
     , NombreLote
     , FechaProcesado
    FROM CATASTRO_TULUM02.dbo.Datos
    WHERE CONVERT(DATE, FechaProcesado, 103) > '2024-11-29'
;-- -. . -..- - / . -. - .-. -.--
SELECT ID
     , ClaveCatastral
     , Folionumero
     , Categoria
     , UbicacionPredio
     , NombrePropietario
     , Padron
     , Localidad
     , Region
     , Supermanzana
     , Manzana
     , Lote
     , Condominio
     , DID
     , GID
     , PaginasDdoc
     , Migrado
     , NombreLote
     , FechaProcesado
    FROM CATASTRO_TULUM02.dbo.Datos
    WHERE CONVERT(DATE, FechaProcesado, 103) > '2024-12-13'
;-- -. . -..- - / . -. - .-. -.--
SELECT ID
     , ClaveCatastral
     , Folionumero
     , Categoria
     , UbicacionPredio
     , NombrePropietario
     , Padron
     , Localidad
     , Region
     , Supermanzana
     , Manzana
     , Lote
     , Condominio
     , DID
     , GID
     , PaginasDdoc
     , Migrado
     , NombreLote
     , FechaProcesado
    FROM CATASTRO_TULUM02.dbo.Datos
    WHERE CONVERT(DATE, FechaProcesado, 103) > '2024-12-12'
;-- -. . -..- - / . -. - .-. -.--
SELECT ID
     , ClaveCatastral
     , Folionumero
     , Categoria
     , UbicacionPredio
     , NombrePropietario
     , Padron
     , Localidad
     , Region
     , Supermanzana
     , Manzana
     , Lote
     , Condominio
     , DID
     , GID
     , PaginasDdoc
     , Migrado
     , NombreLote
     , FechaProcesado
    FROM CATASTRO_TULUM02.dbo.Datos
    WHERE CONVERT(DATE, FechaProcesado, 103) > '2024-12-06'