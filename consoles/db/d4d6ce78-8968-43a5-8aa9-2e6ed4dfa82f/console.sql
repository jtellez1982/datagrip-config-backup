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

SELECT BatchId AS CONTENEDOR
     , M.Name  AS MODULO
     , I.Value AS STATUS
     , B.BatchName
     , EntryDate
     , Message
     , BH.[User]
    FROM SICPD.hst.BatchHistory BH
             INNER JOIN SICPD.cat.Modules M ON BH.ModuleId = M.Id
             INNER JOIN SICPD.cat.ItemStatus I ON BH.StatusId = I.[Key]
             INNER JOIN SICPD.trx.Batches B ON BH.BatchId = B.Id
    WHERE BatchName IN (SELECT BatchCatalog.BatchName COLLATE DATABASE_DEFAULT
                            FROM KCSystem.dbo.BatchCatalog
                            WHERE ProcessID = 5
                              AND State = 128)
      AND Name = 'Verificación'
      AND Value = 'Reservado'
    ORDER BY BatchId, EntryDate DESC

UPDATE SICPD.trx.Batches
SET ModuleId = 128
  , StatusId = 2
    WHERE BatchName IN (SELECT BatchName COLLATE DATABASE_DEFAULT 
                            FROM KCSystem.dbo.BatchCatalog
                            WHERE ProcessID = 5
                              AND State = 128)
AND AuditId IS NULL

EXEC SICPD.TRX.AuditGetCandidates 1