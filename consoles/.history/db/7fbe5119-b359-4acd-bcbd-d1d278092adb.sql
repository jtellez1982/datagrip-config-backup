SELECT * FROM KCSystem.dbo.BatchDocument
WHERE PDFGenerationFileName = ''
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM KCSystem.dbo.BatchCatalog
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM KCSystem.dbo.BatchDocument
WHERE PDFGenerationFileName = ''
AND BatchID IN (
    SELECT * FROM KCSystem.dbo.BatchCatalog
             WHERE ProcessID = 14999
             AND State = 4
    )
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM KCSystem.dbo.BatchDocument
WHERE PDFGenerationFileName = ''
AND BatchID IN (
    SELECT ExternalBatchID FROM KCSystem.dbo.BatchCatalog
             WHERE ProcessID = 14999
             AND State = 4
    )
;-- -. . -..- - / . -. - .-. -.--
SELECT BatchID, UniqueID, PDFGeneration, PDFGenerationFileType, PDFGenerationFileName
    FROM KCSystem.dbo.BatchDocument
    WHERE PDFGenerationFileName = ''
      AND BatchID IN (SELECT ExternalBatchID
                          FROM KCSystem.dbo.BatchCatalog
                          WHERE ProcessID = 14999
                            AND State = 4)
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM KCSystem.dbo.Processes
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM KCSystem.dbo.BatchDocument
WHERE BatchID = 1270
;-- -. . -..- - / . -. - .-. -.--
SELECT BatchID, UniqueID, PDFGeneration, PDFGenerationFileType, PDFGenerationFileName FROM KCSystem.dbo.BatchDocument
WHERE BatchID = 1270
;-- -. . -..- - / . -. - .-. -.--
SELECT COUNT(*) AS FALTANTES
    FROM KCSystem.dbo.BatchDocument
    WHERE PDFGenerationFileName = ''
      AND BatchID IN (SELECT ExternalBatchID
                          FROM KCSystem.dbo.BatchCatalog
                          WHERE ProcessID = 14999
                            AND State = 4)
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchDocument
WHERE BatchID = 1272
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchDocument
WHERE BatchID = 1273
;-- -. . -..- - / . -. - .-. -.--
SELECT BatchID,
    COUNT(*) AS FALTANTES
    FROM KCSystem.dbo.BatchDocument
    WHERE PDFGenerationFileName = ''
      AND BatchID IN (SELECT ExternalBatchID
                    
                          FROM KCSystem.dbo.BatchCatalog
                          WHERE ProcessID = 14999
                            AND State = 4)
GROUP BY BatchID
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchDocument
WHERE PDFGenerationFileName LIKE '\000%'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchDocument
WHERE PDFGenerationFileName LIKE '%\000%'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM KCSystem.dbo.BatchCatalog
WHERE ExternalBatchID = 1272
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchDocument
WHERE PDFGenerationFileName LIKE '%.PDF\000%'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchDocument
WHERE BatchID = 1270
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM KCSystem.dbo.BatchCatalog
WHERE ExternalBatchID = 1288
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchDocument
WHERE BatchID = 1288
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchDocument
WHERE BatchID = 1295
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchDocument
WHERE BatchID = 1301
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchDocument
WHERE BatchID = 1289
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.Batches
;-- -. . -..- - / . -. - .-. -.--
SELECT B.Id AS CONTENEDOR
     , BC.BatchName
     , ProcessID
     , State
     , B.ModuleId
     , B.StatusId
     , AuditId
     , FinalAuditId
     , ActualDocs
     , ActualPages
     , ClassName
    FROM KCSystem.dbo.BatchCatalog BC
             INNER JOIN SICPD.trx.Batches B ON BC.BatchName = B.BatchName COLLATE DATABASE_DEFAULT
    WHERE ProcessID = 14999
      AND State = 128
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
             INNER JOIN ddoc_Control.trx.Batches B ON BC.BatchName = B.BatchName COLLATE DATABASE_DEFAULT
    WHERE ProcessID = 5
      AND State = 128
;-- -. . -..- - / . -. - .-. -.--
UPDATE SICPD.trx.Batches
SET ModuleId = 1024
  , StatusId = 2
    WHERE BatchName IN (SELECT BatchCatalog.BatchName COLLATE DATABASE_DEFAULT 
                            FROM KCSystem.dbo.BatchCatalog
                            WHERE ProcessID = 14999
                              AND State = 128)
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM KCSystem.dbo.BatchDocument
WHERE BatchID = 1401
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM KCSystem.dbo.BatchDocument
WHERE BatchID = 1404
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM KCSystem.dbo.BatchDocument
WHERE BatchID = 1407
;-- -. . -..- - / . -. - .-. -.--
SELECT BatchID,
    COUNT(*) AS FALTANTES
    FROM KCSystem.dbo.BatchDocument
    WHERE PDFGenerationFileName = ''
      AND BatchID IN (SELECT ExternalBatchID
                          FROM KCSystem.dbo.BatchCatalog
                          WHERE ProcessID = 14999
                            AND State = 4)
GROUP BY BatchID
;-- -. . -..- - / . -. - .-. -.--
SELECT BatchID
     , COUNT(*) AS FALTANTES
     , StationID
    FROM KCSystem.dbo.BatchDocument A
             INNER JOIN KCSystem.dbo.BatchCatalog B ON A.BatchID = B.ExternalBatchID
    WHERE PDFGenerationFileName = ''
      AND ProcessID = 14999
      AND State = 4
    GROUP BY BatchID
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchDocument
    WHERE PDFGenerationFileName LIKE '000'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchDocument
    WHERE PDFGenerationFileName LIKE '%000%'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchDocument
    WHERE PDFGenerationFileName LIKE '%\000%'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchDocument
    WHERE PDFGenerationFileName LIKE '%\0001%'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID = 1413
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.AuditContents
WHERE BatchId IN (
SELECT ID FROM SICPD.trx.Batches
         WHERE BatchName LIKE '%CAJA111%')
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.Batches
WHERE BatchName LIKE '%CAJA111%'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.Batches
WHERE BatchName LIKE '%CAJA111%' OR BatchName LIKE '%CAJA112%' OR BatchName LIKE '%CAJA113%'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM SICPD.trx.AuditContents
    WHERE BatchId IN (SELECT Id
                          FROM SICPD.trx.Batches
                          WHERE BatchName LIKE '%CAJA111%'
                             OR BatchName LIKE '%CAJA112%'
                             OR BatchName LIKE '%CAJA113%')
;-- -. . -..- - / . -. - .-. -.--
UPDATE KCSystem.dbo.BatchCatalog
SET ProcessID = 14999
  , State     = 2
    WHERE BatchName LIKE '%CAJA111%'
       OR BatchName LIKE '%CAJA112%'
       OR BatchName LIKE '%CAJA113%'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.cat.Modules
;-- -. . -..- - / . -. - .-. -.--
UPDATE SICPD.trx.Batches
SET ModuleId = 512
  , StatusId = 2
    WHERE BatchName LIKE '%CAJA111%'
       OR BatchName LIKE '%CAJA112%'
       OR BatchName LIKE '%CAJA113%'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM SICPD.trx.Batches
    WHERE BatchName LIKE '%CAJA111%'
       OR BatchName LIKE '%CAJA112%'
       OR BatchName LIKE '%CAJA113%'
;-- -. . -..- - / . -. - .-. -.--
SELECT BatchID
     , COUNT(*) AS FALTANTES
     , StationID
    FROM KCSystem.dbo.BatchDocument A
             INNER JOIN KCSystem.dbo.BatchCatalog B ON A.BatchID = B.ExternalBatchID
    WHERE PDFGenerationFileName = ''
      AND ProcessID = 14999
      AND State = 4
    GROUP BY BatchID, StationID
;-- -. . -..- - / . -. - .-. -.--
SELECT BatchID
     , COUNT(*) AS FALTANTES
     --, StationID
    FROM KCSystem.dbo.BatchDocument A
             INNER JOIN KCSystem.dbo.BatchCatalog B ON A.BatchID = B.ExternalBatchID
    WHERE PDFGenerationFileName = ''
      AND ProcessID = 14999
      AND State = 4
;-- -. . -..- - / . -. - .-. -.--
SELECT BatchID
     , COUNT(*) AS FALTANTES
     --, StationID
    FROM KCSystem.dbo.BatchDocument A
             INNER JOIN KCSystem.dbo.BatchCatalog B ON A.BatchID = B.ExternalBatchID
    WHERE PDFGenerationFileName = ''
      AND ProcessID = 14999
      AND State = 4
    GROUP BY BatchID
;-- -. . -..- - / . -. - .-. -.--
SELECT BatchID
     , COUNT(*) AS FALTANTES
    FROM KCSystem.dbo.BatchDocument A
             INNER JOIN KCSystem.dbo.BatchCatalog B ON A.BatchID = B.ExternalBatchID
WHERE BatchID IN (
    1443,
                 1406,
                 1407,
                 1408
    )
GROUP BY BatchID
;-- -. . -..- - / . -. - .-. -.--
SELECT PDFGeneration, PDFGenerationFileName
    FROM KCSystem.dbo.BatchDocument A
             INNER JOIN KCSystem.dbo.BatchCatalog B ON A.BatchID = B.ExternalBatchID
    WHERE BatchID IN (
                      1406,
                      1407,
                      1408
        )
;-- -. . -..- - / . -. - .-. -.--
SELECT BatchID
     , COUNT(*) AS FALTANTES
    FROM KCSystem.dbo.BatchDocument A
             INNER JOIN KCSystem.dbo.BatchCatalog B ON A.BatchID = B.ExternalBatchID
    WHERE PDFGenerationFileName IS NULL
      AND ProcessID = 14999
    GROUP BY BatchID
;-- -. . -..- - / . -. - .-. -.--
SELECT BatchID
     , COUNT(*) AS FALTANTES
    FROM KCSystem.dbo.BatchDocument A
             INNER JOIN KCSystem.dbo.BatchCatalog B ON A.BatchID = B.ExternalBatchID
    WHERE PDFGenerationFileName IS NULL
      AND ProcessID = 14999
      AND State = 2
    GROUP BY BatchID
;-- -. . -..- - / . -. - .-. -.--
SELECT BatchID
     , COUNT(*) AS FALTANTES
    FROM KCSystem.dbo.BatchDocument A
             INNER JOIN KCSystem.dbo.BatchCatalog B ON A.BatchID = B.ExternalBatchID
    WHERE PDFGenerationFileName IS NULL
      AND ProcessID = 14999
      AND State = 4
    GROUP BY BatchID
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
      AND State = 2
;-- -. . -..- - / . -. - .-. -.--
UPDATE SICPD.trx.Batches
SET ModuleId = 512
  , StatusId = 2
    WHERE BatchName IN (SELECT BatchCatalog.BatchName COLLATE DATABASE_DEFAULT 
                            FROM KCSystem.dbo.BatchCatalog
                            WHERE ProcessID = 14999
                              AND State = 128)
;-- -. . -..- - / . -. - .-. -.--
UPDATE SICPD.trx.Batches
SET ModuleId = 1024
  , StatusId = 2
WHERE ID IN (
    SELECT BATCHID FROM SICPD.trx.FinalAuditContents
                   WHERE AuditId IN (
                       SELECT Id FROM SICPD.trx.Audits
                                 WHERE Number = 84
                       )
    )
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchCatalog
    WHERE BatchName IN (SELECT BatchName
                            FROM SICPD.trx.Batches
                            WHERE Id IN (SELECT BatchId
                                             FROM SICPD.trx.FinalAuditContents
                                             WHERE AuditId IN (SELECT Id
                                                                   FROM SICPD.trx.Audits
                                                                   WHERE Number = 84)))
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchCatalog
    WHERE BatchName IN (SELECT BatchName COLLATE DATABASE_DEFAULT 
                            FROM SICPD.trx.Batches
                            WHERE Id IN (SELECT BatchId
                                             FROM SICPD.trx.FinalAuditContents
                                             WHERE AuditId IN (SELECT Id
                                                                   FROM SICPD.trx.Audits
                                                                   WHERE Number = 84)))
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.FinalAuditContents
WHERE AuditId IN (
    SELECT * FROM SICPD.trx.Audits
             WHERE Number = 84
    )
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.Audits
             WHERE Number = 84
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.FinalAuditContents
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.FinalAudits
             WHERE Number = 84
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.FinalAuditContents
WHERE AuditId IN (
    SELECT ID FROM SICPD.trx.FinalAudits
             WHERE Number = 84
    )
;-- -. . -..- - / . -. - .-. -.--
SELECT BatchId FROM SICPD.trx.FinalAuditContents
WHERE AuditId IN (
    SELECT ID FROM SICPD.trx.FinalAudits
             WHERE Number = 84
    )
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM SICPD.trx.Batches
    WHERE Id IN (SELECT BatchId
                     FROM SICPD.trx.FinalAuditContents
                     WHERE AuditId IN (SELECT Id
                                           FROM SICPD.trx.FinalAudits
                                           WHERE Number = 84))
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM KCSystem.dbo.BatchCatalog
WHERE BatchName IN (
SELECT BatchName
    FROM SICPD.trx.Batches
    WHERE Id IN (SELECT BatchId
                     FROM SICPD.trx.FinalAuditContents
                     WHERE AuditId IN (SELECT Id
                                           FROM SICPD.trx.FinalAudits
                                           WHERE Number = 84)))
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM KCSystem.dbo.BatchCatalog
WHERE BatchName IN (
SELECT BatchName
    FROM SICPD.trx.Batches
    WHERE Id IN (SELECT BatchId COLLATE DATABASE_DEFAULT 
                     FROM SICPD.trx.FinalAuditContents
                     WHERE AuditId IN (SELECT Id
                                           FROM SICPD.trx.FinalAudits
                                           WHERE Number = 84)))
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM KCSystem.dbo.BatchCatalog
WHERE BatchName IN (
SELECT BatchName COLLATE DATABASE_DEFAULT
    FROM SICPD.trx.Batches
    WHERE Id IN (SELECT BatchId 
                     FROM SICPD.trx.FinalAuditContents
                     WHERE AuditId IN (SELECT Id
                                           FROM SICPD.trx.FinalAudits
                                           WHERE Number = 84)))
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchCatalog
    WHERE BatchName IN (SELECT BatchName COLLATE DATABASE_DEFAULT
                            FROM SICPD.trx.Batches
                            WHERE Id IN (SELECT BatchId
                                             FROM SICPD.trx.FinalAuditContents
                                             WHERE AuditId IN (SELECT Id
                                                                   FROM SICPD.trx.FinalAudits
                                                                   WHERE Number = 84)))
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.AuditContents
WHERE BatchId IN (
    SELECT * FROM SICPD.trx.Batches
             WHERE BatchName = 'GRUPO LARRABEZUA - ENTRADA - AIFA_CAJA43_L04_14'
    )
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.AuditContents
WHERE BatchId IN (
    SELECT ID FROM SICPD.trx.Batches
             WHERE BatchName = 'GRUPO LARRABEZUA - ENTRADA - AIFA_CAJA43_L04_14'
    )
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.Batches
          WHERE BatchName = 'GRUPO LARRABEZUA - ENTRADA - AIFA_CAJA43_L04_14'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.AuditContents
WHERE BatchId IN (
    SELECT ID FROM SICPD.trx.Batches
             WHERE BatchName IN (
                                 'GRUPO LARRABEZUA - SALIDA - AICM_CAJA108_L04_8',
                                 'GRUPO LARRABEZUA - SALIDA - AIFA_CAJA39_L07_7',
                                 'GRUPO LARRABEZUA - SALIDA - AIFA_CAJA41_L07_8',
                                 'GRUPO LARRABEZUA - SALIDA - AICM_CAJA110_L05_9',
                                 'GRUPO LARRABEZUA - SALIDA - AICM_CAJA110_L08_9'
                 )
    )
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.AuditContents
WHERE BatchId IN (
    SELECT ID FROM SICPD.trx.Batches
             WHERE BatchName = 'GRUPO LARRABEZUA - SALIDA - AICM_CAJA108_L04_8'
    )
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.Batches
          WHERE BatchName = 'GRUPO LARRABEZUA - SALIDA - AICM_CAJA108_L04_8'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.AuditContents
WHERE BatchId IN (
    SELECT ID FROM SICPD.trx.Batches
             WHERE BatchName = 'GRUPO LARRABEZUA - SALIDA - AIFA_CAJA39_L07_7'
    )
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.Batches
          WHERE BatchName = 'GRUPO LARRABEZUA - SALIDA - AIFA_CAJA39_L07_7'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.AuditContents
WHERE BatchId IN (
    SELECT ID FROM SICPD.trx.Batches
             WHERE BatchName = 'GRUPO LARRABEZUA - SALIDA - AIFA_CAJA41_L07_8'
    )
;-- -. . -..- - / . -. - .-. -.--
SELECT AuditId, ReprocessCount FROM SICPD.trx.Batches
          WHERE BatchName = 'GRUPO LARRABEZUA - SALIDA - AIFA_CAJA41_L07_8'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.Batches
          WHERE BatchName = 'GRUPO LARRABEZUA - SALIDA - AIFA_CAJA41_L07_8'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.AuditContents
WHERE BatchId IN (
    SELECT ID FROM SICPD.trx.Batches
             WHERE BatchName = 'GRUPO LARRABEZUA - SALIDA - AICM_CAJA110_L05_9'
    )
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.Batches
          WHERE BatchName = 'GRUPO LARRABEZUA - SALIDA - AICM_CAJA110_L05_9'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.AuditContents
WHERE BatchId IN (
    SELECT ID FROM SICPD.trx.Batches
             WHERE BatchName = 'GRUPO LARRABEZUA - SALIDA - AICM_CAJA110_L08_9'
    )
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.Batches
          WHERE BatchName = 'GRUPO LARRABEZUA - SALIDA - AICM_CAJA110_L08_9'
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
    WHERE BC.BatchName IN (SELECT BatchName COLLATE DATABASE_DEFAULT
                            FROM SICPD.trx.Batches
                            WHERE Id IN (SELECT BatchId
                                             FROM SICPD.trx.FinalAuditContents
                                             WHERE AuditId IN (SELECT Id
                                                                   FROM SICPD.trx.FinalAudits
                                                                   WHERE Number = 84)))
;-- -. . -..- - / . -. - .-. -.--
UPDATE SICPD.trx.Batches
SET ModuleId = 512
  , StatusId = 2
    WHERE BatchName IN (SELECT BatchCatalog.BatchName COLLATE DATABASE_DEFAULT
                            FROM KCSystem.dbo.BatchCatalog
                            WHERE ProcessID = 14999
                              AND State = 128)
;-- -. . -..- - / . -. - .-. -.--
UPDATE SICPD.trx.Batches
SET ModuleId = 1024
  , StatusId = 2
    WHERE BatchName IN (SELECT BatchName COLLATE DATABASE_DEFAULT
                            FROM SICPD.trx.Batches
                            WHERE Id IN (SELECT BatchId
                                             FROM SICPD.trx.FinalAuditContents
                                             WHERE AuditId IN (SELECT Id
                                                                   FROM SICPD.trx.FinalAudits
                                                                   WHERE Number = 84)))
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM KCSystem.dbo.BatchDocument
WHERE UniqueID = 87746
;-- -. . -..- - / . -. - .-. -.--
SELECT UniqueID FROM KCSystem.dbo.BatchDocument
WHERE BatchID IN (
    SELECT ExternalBatchID FROM KCSystem.dbo.BatchCatalog
             WHERE ProcessID = 14999
             AND State = 128
    )
;-- -. . -..- - / . -. - .-. -.--
SELECT BatchID, UniqueID FROM KCSystem.dbo.BatchDocument
WHERE BatchID IN (
    SELECT ExternalBatchID FROM KCSystem.dbo.BatchCatalog
             WHERE ProcessID = 14999
             AND State = 128
    )
ORDER BY BatchID, UniqueID
;-- -. . -..- - / . -. - .-. -.--
SELECT BatchID, UniqueID, PDFGenerationFileName FROM KCSystem.dbo.BatchDocument
WHERE BatchID IN (
    SELECT ExternalBatchID FROM KCSystem.dbo.BatchCatalog
             WHERE ProcessID = 14999
             AND State = 128
    )
ORDER BY BatchID, UniqueID, PDFGenerationFileName
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.AuditContents
WHERE BatchId = 1419
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.Audits
WHERE Id = 1094
;-- -. . -..- - / . -. - .-. -.--
UPDATE SICPD.trx.Batches
SET ModuleId = 128
  , StatusId = 2
    WHERE BatchName IN (SELECT BatchCatalog.BatchName COLLATE DATABASE_DEFAULT
                            FROM KCSystem.dbo.BatchCatalog
                            WHERE ProcessID = 5
                              AND State = 128)
      AND AuditId IS NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM KCSystem.dbo.BatchCatalog
WHERE BatchName = 'GRUPO LARRABEZUA - SALIDA - AICM_CAJA111_L02_7'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchDocument
    WHERE UniqueID = 1407
;-- -. . -..- - / . -. - .-. -.--
DELETE KCSystem.dbo.kfxDocDDPDFProcessed
WHERE KofaxDocumentId = 89181
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID = 1407
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM SICPD.trx.Audits
    WHERE Id = 1094
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM SICPD.trx.AuditContents
    WHERE BatchId IN (SELECT Id
                          FROM SICPD.trx.Batches
                          WHERE BatchName LIKE '%CAJA 42%')
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM SICPD.trx.AuditContents
    WHERE BatchId IN (SELECT Id
                          FROM SICPD.trx.Batches
                          WHERE BatchName LIKE '%CAJA42%')
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM SICPD.trx.Batches
    WHERE BatchName LIKE '%CAJA42%'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM SICPD.trx.AuditContents
    WHERE BatchId IN (SELECT Id
                          FROM SICPD.trx.Batches
                          WHERE BatchName LIKE '%GRUPO LARRABEZUA - ENTRADA - AIFA_CAJA42_L04_14%')
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM KCSystem.dbo.BatchCatalog
WHERE BatchName LIKE '%CAJA42%' + '%L04%'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM SICPD.trx.Batches
    WHERE BatchName LIKE '%GRUPO LARRABEZUA - ENTRADA - AIFA_CAJA42_L04_14%'
;-- -. . -..- - / . -. - .-. -.--
UPDATE SICPD.trx.Batches
SET ModuleId = 1024
  , StatusId = 2
    WHERE BatchName IN (SELECT BatchCatalog.BatchName COLLATE DATABASE_DEFAULT
                            FROM KCSystem.dbo.BatchCatalog
                            WHERE ProcessID = 14999
                              AND State = 128)
      AND AuditId IS NULL
;-- -. . -..- - / . -. - .-. -.--
UPDATE SICPD.trx.Batches
SET ModuleId = 1024
  , StatusId = 2
    WHERE BatchName IN (SELECT BatchCatalog.BatchName COLLATE DATABASE_DEFAULT
                            FROM KCSystem.dbo.BatchCatalog
                            WHERE ProcessID = 14999
                              AND State = 128)
      AND FinalAuditId IS NULL
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
    WHERE B.BatchName IN ('GRUPO LARRAEZUA - SALIDA - AICM_CAJA108_L08_8')
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
    WHERE B.BatchName IN ('GRUPO LARRABEZUA - SALIDA - AICM_CAJA108_L08_8','GRUPO LARRABEZUA - ENTRADA - AICM_CAJA113_L01_14')
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM KCSystem.dbo.BatchCatalog
WHERE ProcessID = 14999
AND State = 128
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID IN (SELECT ExternalBatchID
                          FROM KCSystem.dbo.BatchCatalog
                          WHERE ProcessID = 14999
                            AND State = 128)
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID IN (SELECT ExternalBatchID
                          FROM KCSystem.dbo.BatchCatalog
                          WHERE ProcessID = 14999
                            AND State = 128)
AND Indexed = 0
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID IN (SELECT ExternalBatchID
                          FROM KCSystem.dbo.BatchCatalog
                          WHERE ProcessID = 14999
                            AND State = 128)
AND IndexVerified = 0
;-- -. . -..- - / . -. - .-. -.--
SELECT BatchID
     , COUNT(*) AS FALTANTES
    FROM KCSystem.dbo.BatchDocument A
             INNER JOIN KCSystem.dbo.BatchCatalog B ON A.BatchID = B.ExternalBatchID
    WHERE PDFGenerationFileName = ''
      AND ProcessID = 14999
      AND State = 2
    GROUP BY BatchID
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM KCSystem.dbo.BatchCatalog
WHERE ExternalBatchID IN (
    1446,
                         1462,
                         1466,
                         1483
    )
;-- -. . -..- - / . -. - .-. -.--
SELECT BatchID
     , COUNT(*) AS FALTANTES
    FROM KCSystem.dbo.BatchDocument A
             INNER JOIN KCSystem.dbo.BatchCatalog B ON A.BatchID = B.ExternalBatchID
    WHERE PDFGenerationFileName = ''
      AND ProcessID = 14999
    GROUP BY BatchID
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM KCSystem.dbo.BatchCatalog
WHERE ExternalBatchID IN (
    1446,
                         1462,
                         1466,
    )
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM KCSystem.dbo.BatchCatalog
WHERE ExternalBatchID IN (
    1446,
                         1462,
                         1466
    )
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchField
    WHERE BatchID IN (SELECT ExternalBatchID
                          FROM KCSystem.dbo.BatchCatalog
                          WHERE ProcessID = 14999
                            AND State = 128)
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID = 1463
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM KCSystem.dbo.BatchCatalog
WHERE ProcessID = 14999
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID = 1462
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID = 1483
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM Larrabezua.dbo.Entradas
WHERE NumeroPaleta = 1241121
;-- -. . -..- - / . -. - .-. -.--
SELECT BatchID
     , COUNT(*) AS FALTANTES
    FROM KCSystem.dbo.BatchDocument A
             INNER JOIN KCSystem.dbo.BatchCatalog B ON A.BatchID = B.ExternalBatchID
    WHERE PDFGenerationFileName = ''
      AND ProcessID = 14999
      AND State = 128
    GROUP BY BatchID
;-- -. . -..- - / . -. - .-. -.--
UPDATE KCSystem.dbo.BatchCatalog
SET ProcessID = 14999, State = 2
WHERE ExternalBatchID IN (
                          1468,
                          1469,
                          1470,
                          1471,
                          1472,
                          1473,
                          1474,
                          1475,
                          1476,
                          1477
    )
;-- -. . -..- - / . -. - .-. -.--
SELECT BatchID
     , COUNT(*) AS FALTANTES
    FROM KCSystem.dbo.BatchDocument A
             INNER JOIN KCSystem.dbo.BatchCatalog B ON A.BatchID = B.ExternalBatchID
    WHERE PDFGenerationFileName = ''
      AND ProcessID = 14999
      --AND State = 4
    GROUP BY BatchID
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
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM SICPD.trx.AuditContents
    WHERE BatchId IN (SELECT Id
                          FROM SICPD.trx.Batches
                          WHERE BatchName LIKE '%GRUPO LARRABEZUA - SALIDA - AICM_CAJA114_L03_7%')
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM SICPD.trx.Batches
    WHERE BatchName LIKE '%GRUPO LARRABEZUA - SALIDA - AICM_CAJA114_L03_7%'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID = 1448
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM SICPD.trx.FinalAuditContents
    WHERE BatchId IN (SELECT Id
                          FROM SICPD.trx.Batches
                          WHERE BatchName LIKE '%GRUPO LARRABEZUA - ENTRADA - AIFA_CAJA42_L01_14%')
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
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM Larrabezua.dbo.Entradas
WHERE Migrado IS NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM Larrabezua.dbo.Salidas
WHERE Migrado IS NULL
;-- -. . -..- - / . -. - .-. -.--
UPDATE Larrabezua.dbo.Entradas
SET Migrado = 0
WHERE Migrado IS NULL
;-- -. . -..- - / . -. - .-. -.--
UPDATE Larrabezua.dbo.Salidas
SET Migrado = 0
WHERE Migrado IS NULL
;-- -. . -..- - / . -. - .-. -.--
UPDATE Larrabezua.dbo.Salidas
SET Migrado = 0
WHERE DID = 91184
;-- -. . -..- - / . -. - .-. -.--
UPDATE Larrabezua.dbo.Salidas
SET Migrado = NULL
WHERE DID = 91184
;-- -. . -..- - / . -. - .-. -.--
UPDATE Larrabezua.dbo.Salidas
SET Migrado = NULL
WHERE Migrado = 0
;-- -. . -..- - / . -. - .-. -.--
UPDATE Larrabezua.dbo.Entradas
SET Migrado = NULL
WHERE Migrado = 0
;-- -. . -..- - / . -. - .-. -.--
UPDATE SICPD.trx.Batches
SET ModuleId = 128
  , StatusId = 2
    WHERE BatchName IN (SELECT BatchCatalog.BatchName COLLATE DATABASE_DEFAULT
                            FROM KCSystem.dbo.BatchCatalog
                            WHERE ProcessID = 5
                              AND State = 128)
      AND FinalAuditId IS NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM SICPD.trx.AuditContents
    WHERE BatchId IN (SELECT Id
                          FROM SICPD.trx.Batches
                          WHERE BatchName LIKE '%GRUPO LARRABEZUA - SALIDA - AIFA_CAJA41_L01_8%')
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
    WHERE ProcessID = 2
AND State = 32
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
AND State = 32
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM SICPD.trx.FinalAuditContents
    WHERE BatchId IN (SELECT Id
                          FROM SICPD.trx.Batches
                          WHERE BatchName LIKE '%GRUPO LARRABEZUA - ENTRADA - AIFA_CAJA42_L04_14%')
;-- -. . -..- - / . -. - .-. -.--
UPDATE SICPD.trx.Batches
SET ModuleId = 512
  , StatusId = 2
    WHERE BatchName IN (SELECT BatchCatalog.BatchName COLLATE DATABASE_DEFAULT
                            FROM KCSystem.dbo.BatchCatalog
                            WHERE ProcessID = 14999
                              AND State = 128)
      AND FinalAuditId IS NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM SICPD.trx.Batches
    WHERE BatchName IN (
        'GRUPO LARRABEZUA - SALIDA - AIFA_CAJA41_L01_8',
'GRUPO LARRABEZUA - ENTRADA - AIFA_CAJA42_L04_14'

        )
;-- -. . -..- - / . -. - .-. -.--
EXEC SICPD.TRX.FinalAuditGetCandidates
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM KCSystem.dbo.BatchDocument
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM KCSystem.dbo.BatchField
WHERE Value LIKE '%11300%'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM KCSystem.dbo.BatchField
WHERE Value LIKE '%C841474%'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM KCSystem.dbo.BatchField
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM KCSystem.dbo.BatchDefID
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM KCSystem.dbo.IndexField
WHERE DisplayLabel = 'Guia Master'
AND PublishedBatchDefID (91,92,94,95,82,88,93)
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM KCSystem.dbo.IndexField
WHERE DisplayLabel = 'Guia Master'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM KCSystem.dbo.IndexField
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.IndexField I
             INNER JOIN KCSystem.dbo.BatchDefID BD ON I.PublishedBatchDefID = BD.PublishedBatchDefID
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchField
    WHERE IndexFieldID = 349
;-- -. . -..- - / . -. - .-. -.--
SELECT BD.Name, IndexFieldID, FieldDefID, I.Name
    FROM KCSystem.dbo.IndexField I
             INNER JOIN KCSystem.dbo.BatchDefID BD ON I.PublishedBatchDefID = BD.PublishedBatchDefID
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchField
    WHERE IndexFieldID IN (348,352,356,360,366)
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchField
    WHERE BatchID = 1372 AND DocID = 26
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM Larrabezua.dbo.Entradas
WHERE GuiaMaster IN (
                     '17284984255',
                     '5751267764',
                     '7463668301',
                     '86512299372',
                     '5709652646',
                     '17282633062',
                     '86512299372',
                     '86512299372',
                     '1422757873',
                     '1401262833',
                     '1401262833',
                     '1401262833',
                     '1401262833',
                     '78406589192',
                     '78406589133',
                     '78406589111',
                     '2053609754',
                     '1432732431',
                     '1431173273',
                     '35552086683',
                     '36989478653',
                     '2023625011',
                     '2054355313',
                     '86514020263',
                     '86514020263',
                     '86514020263',
                     '86514020263',
                     '81040940690',
                     '81040940690',
                     '81040940690',
                     '81040940690',
                     '81040940690',
                     '81040940690',
                     '81040940690',
                     '81040940690',
                     '81041517442',
                     '81041861260',
                     '99227442144',
                     '15736789734',
                     '15736789863',
                     '15736789815',
                     '15736789804',
                     '15736789826',
                     '15736789885',
                     '15736789830',
                     '17284522023',
                     '36989478664',
                     '17284984255',
                     '87320023172',
                     '87320023172',
                     '87320023172',
                     '87320023172',
                     '87320023172',
                     '87320023172',
                     '87320023172',
                     '87320023172',
                     '87320023172',
                     '87320023172',
                     '87320023172',
                     '87320023172',
                     '87320023172',
                     '87320023172',
                     '87320023172',
                     '87320023172',
                     '87320023172',
                     '87320023172',
                     '87320023172',
                     '87320023172',
                     '17680266222',
                     '2099308296',
                     '1473854745',
                     '15737406515',
                     '15737406412',
                     '2099368205',
                     '2099368931',
                     '2002477985',
                     '1445850490',
                     '16052430954',
                     '16052430954',
                     '2023724094',
                     '2023723604',
                     '99200057304',
                     '99200057304',
                     '2032028290',
                     '23589988253',
                     '86514280766',
                     '1431173284',
                     '48960098301',
                     '72947659500',
                     '48960098010',
                     '72947659496',
                     '48960081884',
                     '48960097634',
                     '48960097726',
                     '48960098006',
                     '48960098010',
                     '48960098006',
                     '48960098010',
                     '48960097726',
                     '86514116373'
    )
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM Larrabezua.dbo.Salidas
    WHERE GuiaMaster IN (
                         '17284984255',
                         '5751267764',
                         '7463668301',
                         '86512299372',
                         '5709652646',
                         '17282633062',
                         '86512299372',
                         '86512299372',
                         '1422757873',
                         '1401262833',
                         '1401262833',
                         '1401262833',
                         '1401262833',
                         '78406589192',
                         '78406589133',
                         '78406589111',
                         '2053609754',
                         '1432732431',
                         '1431173273',
                         '35552086683',
                         '36989478653',
                         '2023625011',
                         '2054355313',
                         '86514020263',
                         '86514020263',
                         '86514020263',
                         '86514020263',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81041517442',
                         '81041861260',
                         '99227442144',
                         '15736789734',
                         '15736789863',
                         '15736789815',
                         '15736789804',
                         '15736789826',
                         '15736789885',
                         '15736789830',
                         '17284522023',
                         '36989478664',
                         '17284984255',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '17680266222',
                         '2099308296',
                         '1473854745',
                         '15737406515',
                         '15737406412',
                         '2099368205',
                         '2099368931',
                         '2002477985',
                         '1445850490',
                         '16052430954',
                         '16052430954',
                         '2023724094',
                         '2023723604',
                         '99200057304',
                         '99200057304',
                         '2032028290',
                         '23589988253',
                         '86514280766',
                         '1431173284',
                         '48960098301',
                         '72947659500',
                         '48960098010',
                         '72947659496',
                         '48960081884',
                         '48960097634',
                         '48960097726',
                         '48960098006',
                         '48960098010',
                         '48960098006',
                         '48960098010',
                         '48960097726',
                         '86514116373'
        )
;-- -. . -..- - / . -. - .-. -.--
SELECT GuiaMaster, GuiaHouse, NumeroFact, GID
    FROM Larrabezua.dbo.Salidas
    WHERE GuiaMaster IN (
                         '17284984255',
                         '5751267764',
                         '7463668301',
                         '86512299372',
                         '5709652646',
                         '17282633062',
                         '86512299372',
                         '86512299372',
                         '1422757873',
                         '1401262833',
                         '1401262833',
                         '1401262833',
                         '1401262833',
                         '78406589192',
                         '78406589133',
                         '78406589111',
                         '2053609754',
                         '1432732431',
                         '1431173273',
                         '35552086683',
                         '36989478653',
                         '2023625011',
                         '2054355313',
                         '86514020263',
                         '86514020263',
                         '86514020263',
                         '86514020263',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81041517442',
                         '81041861260',
                         '99227442144',
                         '15736789734',
                         '15736789863',
                         '15736789815',
                         '15736789804',
                         '15736789826',
                         '15736789885',
                         '15736789830',
                         '17284522023',
                         '36989478664',
                         '17284984255',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '17680266222',
                         '2099308296',
                         '1473854745',
                         '15737406515',
                         '15737406412',
                         '2099368205',
                         '2099368931',
                         '2002477985',
                         '1445850490',
                         '16052430954',
                         '16052430954',
                         '2023724094',
                         '2023723604',
                         '99200057304',
                         '99200057304',
                         '2032028290',
                         '23589988253',
                         '86514280766',
                         '1431173284',
                         '48960098301',
                         '72947659500',
                         '48960098010',
                         '72947659496',
                         '48960081884',
                         '48960097634',
                         '48960097726',
                         '48960098006',
                         '48960098010',
                         '48960098006',
                         '48960098010',
                         '48960097726',
                         '86514116373'
        )
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM Larrabezua.dbo.Otros
    WHERE GuiaMaster IN (
                         '17284984255',
                         '5751267764',
                         '7463668301',
                         '86512299372',
                         '5709652646',
                         '17282633062',
                         '86512299372',
                         '86512299372',
                         '1422757873',
                         '1401262833',
                         '1401262833',
                         '1401262833',
                         '1401262833',
                         '78406589192',
                         '78406589133',
                         '78406589111',
                         '2053609754',
                         '1432732431',
                         '1431173273',
                         '35552086683',
                         '36989478653',
                         '2023625011',
                         '2054355313',
                         '86514020263',
                         '86514020263',
                         '86514020263',
                         '86514020263',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81041517442',
                         '81041861260',
                         '99227442144',
                         '15736789734',
                         '15736789863',
                         '15736789815',
                         '15736789804',
                         '15736789826',
                         '15736789885',
                         '15736789830',
                         '17284522023',
                         '36989478664',
                         '17284984255',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '17680266222',
                         '2099308296',
                         '1473854745',
                         '15737406515',
                         '15737406412',
                         '2099368205',
                         '2099368931',
                         '2002477985',
                         '1445850490',
                         '16052430954',
                         '16052430954',
                         '2023724094',
                         '2023723604',
                         '99200057304',
                         '99200057304',
                         '2032028290',
                         '23589988253',
                         '86514280766',
                         '1431173284',
                         '48960098301',
                         '72947659500',
                         '48960098010',
                         '72947659496',
                         '48960081884',
                         '48960097634',
                         '48960097726',
                         '48960098006',
                         '48960098010',
                         '48960098006',
                         '48960098010',
                         '48960097726',
                         '86514116373'
        )
;-- -. . -..- - / . -. - .-. -.--
SELECT GuiaMaster, GuiaHouse, NumeroFact, GID
    FROM Larrabezua.dbo.Previos
    WHERE GuiaMaster IN (
                         '17284984255',
                         '5751267764',
                         '7463668301',
                         '86512299372',
                         '5709652646',
                         '17282633062',
                         '86512299372',
                         '86512299372',
                         '1422757873',
                         '1401262833',
                         '1401262833',
                         '1401262833',
                         '1401262833',
                         '78406589192',
                         '78406589133',
                         '78406589111',
                         '2053609754',
                         '1432732431',
                         '1431173273',
                         '35552086683',
                         '36989478653',
                         '2023625011',
                         '2054355313',
                         '86514020263',
                         '86514020263',
                         '86514020263',
                         '86514020263',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81041517442',
                         '81041861260',
                         '99227442144',
                         '15736789734',
                         '15736789863',
                         '15736789815',
                         '15736789804',
                         '15736789826',
                         '15736789885',
                         '15736789830',
                         '17284522023',
                         '36989478664',
                         '17284984255',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '17680266222',
                         '2099308296',
                         '1473854745',
                         '15737406515',
                         '15737406412',
                         '2099368205',
                         '2099368931',
                         '2002477985',
                         '1445850490',
                         '16052430954',
                         '16052430954',
                         '2023724094',
                         '2023723604',
                         '99200057304',
                         '99200057304',
                         '2032028290',
                         '23589988253',
                         '86514280766',
                         '1431173284',
                         '48960098301',
                         '72947659500',
                         '48960098010',
                         '72947659496',
                         '48960081884',
                         '48960097634',
                         '48960097726',
                         '48960098006',
                         '48960098010',
                         '48960098006',
                         '48960098010',
                         '48960097726',
                         '86514116373'
        )
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM Larrabezua.dbo.Entradas
WHERE BatchName = 'GRUPO LARRABEZUA - ENTRADA - AIFA_CAJA42_L04_14'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM Larrabezua.dbo.Salidas
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM Larrabezua.dbo.Entradas
;-- -. . -..- - / . -. - .-. -.--
SELECT GuiaMaster, GuiaHouse, NumeroPaleta, GID
    FROM Larrabezua.dbo.Entradas
    WHERE GuiaMaster IN (
                         '17284984255',
                         '5751267764',
                         '7463668301',
                         '86512299372',
                         '5709652646',
                         '17282633062',
                         '86512299372',
                         '86512299372',
                         '1422757873',
                         '1401262833',
                         '1401262833',
                         '1401262833',
                         '1401262833',
                         '78406589192',
                         '78406589133',
                         '78406589111',
                         '2053609754',
                         '1432732431',
                         '1431173273',
                         '35552086683',
                         '36989478653',
                         '2023625011',
                         '2054355313',
                         '86514020263',
                         '86514020263',
                         '86514020263',
                         '86514020263',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81041517442',
                         '81041861260',
                         '99227442144',
                         '15736789734',
                         '15736789863',
                         '15736789815',
                         '15736789804',
                         '15736789826',
                         '15736789885',
                         '15736789830',
                         '17284522023',
                         '36989478664',
                         '17284984255',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '17680266222',
                         '2099308296',
                         '1473854745',
                         '15737406515',
                         '15737406412',
                         '2099368205',
                         '2099368931',
                         '2002477985',
                         '1445850490',
                         '16052430954',
                         '16052430954',
                         '2023724094',
                         '2023723604',
                         '99200057304',
                         '99200057304',
                         '2032028290',
                         '23589988253',
                         '86514280766',
                         '1431173284',
                         '48960098301',
                         '72947659500',
                         '48960098010',
                         '72947659496',
                         '48960081884',
                         '48960097634',
                         '48960097726',
                         '48960098006',
                         '48960098010',
                         '48960098006',
                         '48960098010',
                         '48960097726',
                         '86514116373'
        )
;-- -. . -..- - / . -. - .-. -.--
SELECT GuiaMaster, GuiaHouse, NumeroPaleta, GID
    FROM Larrabezua.dbo.Entradas
    WHERE GuiaMaster IN (
                         '17284984255',
                         '5751267764',
                         '7463668301',
                         '86512299372',
                         '5709652646',
                         '17282633062',
                         '86512299372',
                         '86512299372',
                         '1422757873',
                         '1401262833',
                         '1401262833',
                         '1401262833',
                         '1401262833',
                         '78406589192',
                         '78406589133',
                         '78406589111',
                         '2053609754',
                         '1432732431',
                         '1431173273',
                         '35552086683',
                         '36989478653',
                         '2023625011',
                         '2054355313',
                         '86514020263',
                         '86514020263',
                         '86514020263',
                         '86514020263',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81041517442',
                         '81041861260',
                         '99227442144',
                         '15736789734',
                         '15736789863',
                         '15736789815',
                         '15736789804',
                         '15736789826',
                         '15736789885',
                         '15736789830',
                         '17284522023',
                         '36989478664',
                         '17284984255',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '17680266222',
                         '2099308296',
                         '1473854745',
                         '15737406515',
                         '15737406412',
                         '2099368205',
                         '2099368931',
                         '2002477985',
                         '1445850490',
                         '16052430954',
                         '16052430954',
                         '2023724094',
                         '2023723604',
                         '99200057304',
                         '99200057304',
                         '2032028290',
                         '23589988253',
                         '86514280766',
                         '1431173284',
                         '48960098301',
                         '72947659500',
                         '48960098010',
                         '72947659496',
                         '48960081884',
                         '48960097634',
                         '48960097726',
                         '48960098006',
                         '48960098010',
                         '48960098006',
                         '48960098010',
                         '48960097726',
                         '86514116373'
        )
UNION 
SELECT GuiaMaster, GuiaHouse, NumeroFact, GID
    FROM Larrabezua.dbo.Salidas
    WHERE GuiaMaster IN (
                         '17284984255',
                         '5751267764',
                         '7463668301',
                         '86512299372',
                         '5709652646',
                         '17282633062',
                         '86512299372',
                         '86512299372',
                         '1422757873',
                         '1401262833',
                         '1401262833',
                         '1401262833',
                         '1401262833',
                         '78406589192',
                         '78406589133',
                         '78406589111',
                         '2053609754',
                         '1432732431',
                         '1431173273',
                         '35552086683',
                         '36989478653',
                         '2023625011',
                         '2054355313',
                         '86514020263',
                         '86514020263',
                         '86514020263',
                         '86514020263',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81041517442',
                         '81041861260',
                         '99227442144',
                         '15736789734',
                         '15736789863',
                         '15736789815',
                         '15736789804',
                         '15736789826',
                         '15736789885',
                         '15736789830',
                         '17284522023',
                         '36989478664',
                         '17284984255',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '17680266222',
                         '2099308296',
                         '1473854745',
                         '15737406515',
                         '15737406412',
                         '2099368205',
                         '2099368931',
                         '2002477985',
                         '1445850490',
                         '16052430954',
                         '16052430954',
                         '2023724094',
                         '2023723604',
                         '99200057304',
                         '99200057304',
                         '2032028290',
                         '23589988253',
                         '86514280766',
                         '1431173284',
                         '48960098301',
                         '72947659500',
                         '48960098010',
                         '72947659496',
                         '48960081884',
                         '48960097634',
                         '48960097726',
                         '48960098006',
                         '48960098010',
                         '48960098006',
                         '48960098010',
                         '48960097726',
                         '86514116373'
        )
;-- -. . -..- - / . -. - .-. -.--
SELECT GuiaMaster, GuiaHouse, NumeroPaleta, GID
    FROM Larrabezua.dbo.Entradas
    WHERE Entradas.NumeroPaleta IN (
                                    '11338',
                                    '18914',
                                    '11341',
                                    '19181',
                                    '11340',
                                    '11342',
                                    '11344',
                                    '11339',
                                    '11343',
                                    '19175|19174|19172|19170|19169',
                                    '11372',
                                    '19459',
                                    '11371',
                                    '19436',
                                    '11378',
                                    '18982',
                                    '11377',
                                    '18993',
                                    '11305',
                                    '19119',
                                    '11345',
                                    '19645',
                                    '19638',
                                    '19938',
                                    '19575',
                                    '21190',
                                    '19849',
                                    '19832',
                                    '20075',
                                    '19642',
                                    '21128',
                                    '19563',
                                    '19629',
                                    '19630',
                                    '21258',
                                    '19517',
                                    '21850',
                                    '19086',
                                    '19848',
                                    '19741',
                                    '18831',
                                    '18954',
                                    '18667',
                                    '11300',
                                    '11347',
                                    '18787',
                                    '18788',
                                    '11368',
                                    '19676',
                                    '11384',
                                    '19953',
                                    '11319',
                                    '19871',
                                    '11320',
                                    '18944',
                                    '11221',
                                    '11346',
                                    '18854',
                                    '18948',
                                    '10736',
                                    '17794',
                                    '10722',
                                    '18169',
                                    '10729',
                                    '18117',
                                    '10728',
                                    '18118',
                                    '10718',
                                    '18387',
                                    '10707',
                                    '18401',
                                    '10723',
                                    '17871',
                                    '10740',
                                    '18126',
                                    '10737',
                                    '17793',
                                    '10705',
                                    '17975',
                                    '10739',
                                    '17792',
                                    '11208',
                                    '18968',
                                    '10727',
                                    '18385',
                                    '10717',
                                    '19120',
                                    '10980',
                                    '18883',
                                    '10719',
                                    '17979',
                                    '10738',
                                    '17789',
                                    '11391',
                                    '19073',
                                    '11034',
                                    '21153',
                                    '10954',
                                    '18396',
                                    '11152',
                                    '18631',
                                    '11025',
                                    '18524',
                                    '11030',
                                    '18223',
                                    '11020',
                                    '18374',
                                    '10956',
                                    '18395',
                                    '10949',
                                    '18327',
                                    '10973',
                                    '18170',
                                    '11027',
                                    '18231',
                                    '11026',
                                    '18239',
                                    '11392',
                                    '19076',
                                    '1233546',
                                    '1369079',
                                    '11021',
                                    '18642',
                                    '10950',
                                    '18305',
                                    '10951',
                                    '18304',
                                    '11028',
                                    '18234',
                                    '1233548',
                                    '1368448',
                                    '11195',
                                    '19499',
                                    '10969',
                                    '18414',
                                    '1233545',
                                    '1369077',
                                    '10952',
                                    '19161',
                                    '1233810',
                                    '1369080',
                                    '10953',
                                    '18721',
                                    '11393',
                                    '19083',
                                    '11398',
                                    '19125',
                                    '19667',
                                    '11806',
                                    '20291',
                                    '11549',
                                    '19559',
                                    '11394',
                                    '11396',
                                    '11160',
                                    '18887',
                                    '11241',
                                    '18804',
                                    '11807',
                                    '12814',
                                    '11115',
                                    '18359',
                                    '11159',
                                    '18836',
                                    '11163',
                                    '18837',
                                    '11162',
                                    '18840',
                                    '11395',
                                    '11389',
                                    '19398',
                                    '11397',
                                    '11097',
                                    '19069',
                                    '11213',
                                    '11179',
                                    '19366',
                                    '11158',
                                    '18835',
                                    '11098',
                                    '18875',
                                    '11116',
                                    '18360',
                                    '11472',
                                    '11466',
                                    '19077',
                                    '11573',
                                    '11460',
                                    '19670',
                                    '11459',
                                    '19669',
                                    '11387',
                                    '19151',
                                    '11467',
                                    '19072',
                                    '1234278',
                                    '1372616',
                                    '11390',
                                    '19418',
                                    '11388',
                                    '19333',
                                    '11315',
                                    '18959',
                                    '11314',
                                    '18958',
                                    '11313',
                                    '19356',
                                    '11329',
                                    '18780',
                                    '11330',
                                    '18786',
                                    '11333',
                                    '11332',
                                    '18796',
                                    '11331',
                                    '18773',
                                    '11334',
                                    '18756',
                                    '18778',
                                    '11328',
                                    '19140',
                                    '11327',
                                    '19143',
                                    '11335',
                                    '19344',
                                    '11336',
                                    '19769',
                                    '11303',
                                    '19200',
                                    '11307',
                                    '18869',
                                    '11306',
                                    '19199',
                                    '11325',
                                    '18798',
                                    '11323',
                                    '18758',
                                    '11326',
                                    '18792',
                                    '11324',
                                    '18782',
                                    '11399',
                                    '19775',
                                    '11385',
                                    '19776',
                                    '11363',
                                    '18989',
                                    '11365',
                                    '18988',
                                    '11360',
                                    '18985',
                                    '11350',
                                    '18984',
                                    '11358',
                                    '19014',
                                    '11352',
                                    '19012',
                                    '11351',
                                    '19010',
                                    '11353',
                                    '19007',
                                    '11357',
                                    '19006',
                                    '11361',
                                    '19102',
                                    '11367',
                                    '19004',
                                    '11355',
                                    '19466',
                                    '11356',
                                    '19304',
                                    '11366',
                                    '18966',
                                    '11362',
                                    '19341',
                                    '11348',
                                    '19544',
                                    '11349',
                                    '19030',
                                    '11364',
                                    '19203',
                                    '11359',
                                    '19033',
                                    '11354',
                                    '19032',
                                    '11381',
                                    '19244',
                                    '11382',
                                    '19243',
                                    '11337',
                                    '19135'
        )
UNION
SELECT GuiaMaster, GuiaHouse, NumeroFact, GID
    FROM Larrabezua.dbo.Salidas
    WHERE Salidas.NumeroFact IN (
                                   '11338',
                                   '18914',
                                   '11341',
                                   '19181',
                                   '11340',
                                   '11342',
                                   '11344',
                                   '11339',
                                   '11343',
                                   '19175|19174|19172|19170|19169',
                                   '11372',
                                   '19459',
                                   '11371',
                                   '19436',
                                   '11378',
                                   '18982',
                                   '11377',
                                   '18993',
                                   '11305',
                                   '19119',
                                   '11345',
                                   '19645',
                                   '19638',
                                   '19938',
                                   '19575',
                                   '21190',
                                   '19849',
                                   '19832',
                                   '20075',
                                   '19642',
                                   '21128',
                                   '19563',
                                   '19629',
                                   '19630',
                                   '21258',
                                   '19517',
                                   '21850',
                                   '19086',
                                   '19848',
                                   '19741',
                                   '18831',
                                   '18954',
                                   '18667',
                                   '11300',
                                   '11347',
                                   '18787',
                                   '18788',
                                   '11368',
                                   '19676',
                                   '11384',
                                   '19953',
                                   '11319',
                                   '19871',
                                   '11320',
                                   '18944',
                                   '11221',
                                   '11346',
                                   '18854',
                                   '18948',
                                   '10736',
                                   '17794',
                                   '10722',
                                   '18169',
                                   '10729',
                                   '18117',
                                   '10728',
                                   '18118',
                                   '10718',
                                   '18387',
                                   '10707',
                                   '18401',
                                   '10723',
                                   '17871',
                                   '10740',
                                   '18126',
                                   '10737',
                                   '17793',
                                   '10705',
                                   '17975',
                                   '10739',
                                   '17792',
                                   '11208',
                                   '18968',
                                   '10727',
                                   '18385',
                                   '10717',
                                   '19120',
                                   '10980',
                                   '18883',
                                   '10719',
                                   '17979',
                                   '10738',
                                   '17789',
                                   '11391',
                                   '19073',
                                   '11034',
                                   '21153',
                                   '10954',
                                   '18396',
                                   '11152',
                                   '18631',
                                   '11025',
                                   '18524',
                                   '11030',
                                   '18223',
                                   '11020',
                                   '18374',
                                   '10956',
                                   '18395',
                                   '10949',
                                   '18327',
                                   '10973',
                                   '18170',
                                   '11027',
                                   '18231',
                                   '11026',
                                   '18239',
                                   '11392',
                                   '19076',
                                   '1233546',
                                   '1369079',
                                   '11021',
                                   '18642',
                                   '10950',
                                   '18305',
                                   '10951',
                                   '18304',
                                   '11028',
                                   '18234',
                                   '1233548',
                                   '1368448',
                                   '11195',
                                   '19499',
                                   '10969',
                                   '18414',
                                   '1233545',
                                   '1369077',
                                   '10952',
                                   '19161',
                                   '1233810',
                                   '1369080',
                                   '10953',
                                   '18721',
                                   '11393',
                                   '19083',
                                   '11398',
                                   '19125',
                                   '19667',
                                   '11806',
                                   '20291',
                                   '11549',
                                   '19559',
                                   '11394',
                                   '11396',
                                   '11160',
                                   '18887',
                                   '11241',
                                   '18804',
                                   '11807',
                                   '12814',
                                   '11115',
                                   '18359',
                                   '11159',
                                   '18836',
                                   '11163',
                                   '18837',
                                   '11162',
                                   '18840',
                                   '11395',
                                   '11389',
                                   '19398',
                                   '11397',
                                   '11097',
                                   '19069',
                                   '11213',
                                   '11179',
                                   '19366',
                                   '11158',
                                   '18835',
                                   '11098',
                                   '18875',
                                   '11116',
                                   '18360',
                                   '11472',
                                   '11466',
                                   '19077',
                                   '11573',
                                   '11460',
                                   '19670',
                                   '11459',
                                   '19669',
                                   '11387',
                                   '19151',
                                   '11467',
                                   '19072',
                                   '1234278',
                                   '1372616',
                                   '11390',
                                   '19418',
                                   '11388',
                                   '19333',
                                   '11315',
                                   '18959',
                                   '11314',
                                   '18958',
                                   '11313',
                                   '19356',
                                   '11329',
                                   '18780',
                                   '11330',
                                   '18786',
                                   '11333',
                                   '11332',
                                   '18796',
                                   '11331',
                                   '18773',
                                   '11334',
                                   '18756',
                                   '18778',
                                   '11328',
                                   '19140',
                                   '11327',
                                   '19143',
                                   '11335',
                                   '19344',
                                   '11336',
                                   '19769',
                                   '11303',
                                   '19200',
                                   '11307',
                                   '18869',
                                   '11306',
                                   '19199',
                                   '11325',
                                   '18798',
                                   '11323',
                                   '18758',
                                   '11326',
                                   '18792',
                                   '11324',
                                   '18782',
                                   '11399',
                                   '19775',
                                   '11385',
                                   '19776',
                                   '11363',
                                   '18989',
                                   '11365',
                                   '18988',
                                   '11360',
                                   '18985',
                                   '11350',
                                   '18984',
                                   '11358',
                                   '19014',
                                   '11352',
                                   '19012',
                                   '11351',
                                   '19010',
                                   '11353',
                                   '19007',
                                   '11357',
                                   '19006',
                                   '11361',
                                   '19102',
                                   '11367',
                                   '19004',
                                   '11355',
                                   '19466',
                                   '11356',
                                   '19304',
                                   '11366',
                                   '18966',
                                   '11362',
                                   '19341',
                                   '11348',
                                   '19544',
                                   '11349',
                                   '19030',
                                   '11364',
                                   '19203',
                                   '11359',
                                   '19033',
                                   '11354',
                                   '19032',
                                   '11381',
                                   '19244',
                                   '11382',
                                   '19243',
                                   '11337',
                                   '19135'
        )
;-- -. . -..- - / . -. - .-. -.--
SELECT Migrado, COUNT(*) AS DOCUMENTOS, SUM(Paginas) AS PAGINAS
    FROM Larrabezua.dbo.Salidas
    GROUP BY Migrado
UNION
SELECT Migrado, COUNT(*) AS DOCUMENTOS, SUM(Paginas) AS PAGINAS
    FROM Larrabezua.dbo.Entradas
    GROUP BY Migrado
UNION
SELECT Migrado, COUNT(*) AS DOCUMENTOS, SUM(Paginas) AS PAGINAS
    FROM Larrabezua.dbo.Transito
    GROUP BY Migrado
UNION
SELECT Migrado, COUNT(*) AS DOCUMENTOS, SUM(Paginas) AS PAGINAS
    FROM Larrabezua.dbo.Otros
    GROUP BY Migrado
UNION
SELECT Migrado, COUNT(*) AS DOCUMENTOS, SUM(Paginas) AS PAGINAS
    FROM Larrabezua.dbo.Previos
    GROUP BY Migrado
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM Larrabezua.dbo.Entradas
WHERE NumeroPaleta = '11301'
;-- -. . -..- - / . -. - .-. -.--
SELECT GuiaMaster, GuiaHouse, NumeroPaleta, GID
    FROM Larrabezua.dbo.Entradas
UNION
SELECT GuiaMaster, GuiaHouse, NumeroFact, GID
    FROM Larrabezua.dbo.Salidas
UNION
SELECT GuiaMaster, GuiaHouse, NumeroFact, GID
    FROM Larrabezua.dbo.Previos
    WHERE GuiaMaster IN (
                         '17284984255',
                         '5751267764',
                         '7463668301',
                         '86512299372',
                         '5709652646',
                         '17282633062',
                         '86512299372',
                         '86512299372',
                         '1422757873',
                         '1401262833',
                         '1401262833',
                         '1401262833',
                         '1401262833',
                         '78406589192',
                         '78406589133',
                         '78406589111',
                         '2053609754',
                         '1432732431',
                         '1431173273',
                         '35552086683',
                         '36989478653',
                         '2023625011',
                         '2054355313',
                         '86514020263',
                         '86514020263',
                         '86514020263',
                         '86514020263',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81041517442',
                         '81041861260',
                         '99227442144',
                         '15736789734',
                         '15736789863',
                         '15736789815',
                         '15736789804',
                         '15736789826',
                         '15736789885',
                         '15736789830',
                         '17284522023',
                         '36989478664',
                         '17284984255',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '17680266222',
                         '2099308296',
                         '1473854745',
                         '15737406515',
                         '15737406412',
                         '2099368205',
                         '2099368931',
                         '2002477985',
                         '1445850490',
                         '16052430954',
                         '16052430954',
                         '2023724094',
                         '2023723604',
                         '99200057304',
                         '99200057304',
                         '2032028290',
                         '23589988253',
                         '86514280766',
                         '1431173284',
                         '48960098301',
                         '72947659500',
                         '48960098010',
                         '72947659496',
                         '48960081884',
                         '48960097634',
                         '48960097726',
                         '48960098006',
                         '48960098010',
                         '48960098006',
                         '48960098010',
                         '48960097726',
                         '86514116373'
        )
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM Larrabezua.dbo.Salidas
WHERE Migrado = 0
;-- -. . -..- - / . -. - .-. -.--
SELECT 'Salidas'    AS TIPO
     , Migrado
     , COUNT(*)     AS DOCUMENTOS
     , SUM(Paginas) AS PAGINAS
    FROM Larrabezua.dbo.Salidas
    GROUP BY Migrado
UNION
SELECT 'Entradas'   AS TIPO
     , Migrado
     , COUNT(*)     AS DOCUMENTOS
     , SUM(Paginas) AS PAGINAS
    FROM Larrabezua.dbo.Entradas
    GROUP BY Migrado
UNION
SELECT 'Transito'   AS TIPO
     , Migrado
     , COUNT(*)     AS DOCUMENTOS
     , SUM(Paginas) AS PAGINAS
    FROM Larrabezua.dbo.Transito
    GROUP BY Migrado
UNION
SELECT 'Otros'      AS TIPO
     , Migrado
     , COUNT(*)     AS DOCUMENTOS
     , SUM(Paginas) AS PAGINAS
    FROM Larrabezua.dbo.Otros
    GROUP BY Migrado
UNION
SELECT 'Previos'    AS TIPO
     , Migrado
     , COUNT(*)     AS DOCUMENTOS
     , SUM(Paginas) AS PAGINAS
    FROM Larrabezua.dbo.Previos
    GROUP BY Migrado
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.cat.BatchAssignmentType
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.prd.Workstations
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.prd.WorkstationInventory
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.prd.WorkflowProperties
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.cat.ModuleProperties
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.Batches
WHERE ID = 2632
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.Batches
WHERE BatchName LIKE '%caja50%'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.Batches
         WHERE Id = 2632
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.Batches
WHERE BatchName LIKE '%caja131%'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.Batches
WHERE BatchName LIKE '%caja130%'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM SICPD.trx.FinalAuditContents
    WHERE BatchId IN (SELECT Id
                          FROM SICPD.trx.Batches
                          WHERE BatchName LIKE '%caja127_l03_7%')
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM SICPD.trx.AuditContents
    WHERE BatchId IN (SELECT Id
                          FROM SICPD.trx.Batches
                          WHERE BatchName LIKE '%caja127_l03_7%')
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM SICPD.trx.Batches
    WHERE BatchName IN (
        'caja127_l03_7'

        )
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM SICPD.trx.Batches
    WHERE BatchName LIKE '%caja127_l03_7%'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID = 1701
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID = 1704
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchDocument
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID = 1705
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID = 1710
;-- -. . -..- - / . -. - .-. -.--
SELECT BatchID
     , COUNT(*) AS FALTANTES
    FROM KCSystem.dbo.BatchDocument A
             INNER JOIN KCSystem.dbo.BatchCatalog B ON A.BatchID = B.ExternalBatchID
    WHERE PDFGenerationFileName = ''
      AND ProcessID = 14999
      AND State = 4
    GROUP BY BatchID
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchDocument
    WHERE UniqueID IN (
        108223,
                      108004,
                      108487,
                      108491
        )
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM KCSystem.dbo.BatchCatalog
WHERE ExternalBatchID = '1701'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.FinalAuditContents
WHERE BatchId IN (
SELECT ID FROM SICPD.trx.Batches
WHERE BatchName = 'GRUPO LARRABEZUA - SALIDA - AICM_CAJA136_L06_7')
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM SICPD.trx.Batches
    WHERE BatchName = 'GRUPO LARRABEZUA - SALIDA - AICM_CAJA136_L06_7'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchDocument
    WHERE UniqueID IN (
                       108223,
                       108004,
                       108487,
                       108491
        )
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM SICPD.trx.FinalAuditContents
    WHERE BatchId IN (SELECT Id
                          FROM SICPD.trx.Batches
                          WHERE BatchName = 'GRUPO LARRABEZUA - SALIDA - AICM_CAJA136_L06_7')
;-- -. . -..- - / . -. - .-. -.--
SELECT * 
FROM SICPD.trx.FinalAudits
WHERE Id = 2099
;-- -. . -..- - / . -. - .-. -.--
SELECT BatchID, PDFGenerationFileName
    FROM KCSystem.dbo.BatchDocument
    WHERE UniqueID IN (
                       108223,
                       108004,
                       108487,
                       108491
        )
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchCatalog
    WHERE ExternalBatchID = 1710
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
SELECT *
    FROM SICPD.trx.Audits
    WHERE Id = 1104