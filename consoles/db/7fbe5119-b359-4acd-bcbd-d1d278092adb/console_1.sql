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

SELECT *
    FROM SICPD.trx.Audits
    WHERE Id = 1104

EXEC SICPD.TRX.FinalAuditGetCandidates 

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

SELECT *
    FROM SICPD.cat.Modules

UPDATE SICPD.trx.Batches
SET ModuleId = 512
  , StatusId = 2
    WHERE BatchName IN (SELECT BatchCatalog.BatchName COLLATE DATABASE_DEFAULT
                            FROM KCSystem.dbo.BatchCatalog
                            WHERE ProcessID = 14999
                              AND State = 128)
      AND FinalAuditId IS NULL

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

SELECT *
    FROM KCSystem.dbo.BatchCatalog
    WHERE BatchName IN (SELECT BatchName COLLATE DATABASE_DEFAULT
                            FROM SICPD.trx.Batches
                            WHERE Id IN (SELECT BatchId
                                             FROM SICPD.trx.FinalAuditContents
                                             WHERE AuditId IN (SELECT Id
                                                                   FROM SICPD.trx.FinalAudits
                                                                   WHERE Number = 84)))

--1092

SELECT *
    FROM SICPD.trx.AuditContents
    WHERE BatchId IN (SELECT Id
                          FROM SICPD.trx.Batches
                          WHERE BatchName LIKE '%caja127_l03_7%')

SELECT *
    FROM SICPD.trx.FinalAuditContents
    WHERE BatchId IN (SELECT Id
                          FROM SICPD.trx.Batches
                          WHERE BatchName LIKE '%caja127_l03_7%')

SELECT *
    FROM SICPD.trx.Batches
    WHERE BatchName LIKE '%caja127_l03_7%'

SELECT *
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID = 1407

SELECT * FROM KCSystem.dbo.BatchCatalog
WHERE BatchName LIKE '%CAJA42%' + '%L04%'

DELETE KCSystem.dbo.kfxDocDDPDFProcessed
WHERE KofaxDocumentId = 89181