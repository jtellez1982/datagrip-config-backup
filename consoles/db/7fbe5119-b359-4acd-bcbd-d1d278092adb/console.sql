SELECT BatchID
     , COUNT(*) AS FALTANTES
    FROM KCSystem.dbo.BatchDocument A
             INNER JOIN KCSystem.dbo.BatchCatalog B ON A.BatchID = B.ExternalBatchID
    WHERE PDFGenerationFileName = ''
      AND ProcessID = 14999
      AND State = 4
    GROUP BY BatchID

SELECT BatchID, PDFGenerationFileName
    FROM KCSystem.dbo.BatchDocument
    WHERE UniqueID IN (
                       108223,
                       108004,
                       108487,
                       108491
        )

SELECT *
    FROM KCSystem.dbo.BatchCatalog
    WHERE ExternalBatchID = 1710

SELECT *
    FROM SICPD.trx.FinalAuditContents
    WHERE BatchId IN (SELECT Id
                          FROM SICPD.trx.Batches
                          WHERE BatchName = 'GRUPO LARRABEZUA - SALIDA - AICM_CAJA136_L06_7')

SELECT * 
FROM SICPD.trx.FinalAudits
WHERE Id = 2099

SELECT *
    FROM SICPD.trx.Batches
    WHERE BatchName = 'GRUPO LARRABEZUA - SALIDA - AICM_CAJA136_L06_7'

SELECT BatchID
     , COUNT(*) AS FALTANTES
    FROM KCSystem.dbo.BatchDocument A
             INNER JOIN KCSystem.dbo.BatchCatalog B ON A.BatchID = B.ExternalBatchID
    WHERE PDFGenerationFileName IS NULL
      AND ProcessID = 14999
      AND State = 4
    GROUP BY BatchID

SELECT *
    FROM Larrabezua.dbo.Entradas
    WHERE NumeroPaleta = 1241121