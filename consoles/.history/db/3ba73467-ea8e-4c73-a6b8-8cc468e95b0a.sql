SELECT TOP(1)* FROM Barcel2019.dbo.Datos
;-- -. . -..- - / . -. - .-. -.--
USE DdocControl
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM hst.BatchHistory
    WHERE BatchId IN (SELECT ID
                          FROM DdocControl.trx.Batches
                          WHERE BatchName IN (SELECT BatchCatalog.BatchName COLLATE DATABASE_DEFAULT 
                                                  FROM KCSystemBarcel.dbo.BatchCatalog
                                                  WHERE ProcessID = 5
                                                    AND State = 128))
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM hst.BatchHistory
    WHERE BatchId IN (SELECT ID
                          FROM DdocControl.trx.Batches
                          WHERE BatchName IN (SELECT BatchCatalog.BatchName COLLATE DATABASE_DEFAULT 
                                                  FROM KCSystemBarcel.dbo.BatchCatalog
                                                  WHERE ProcessID = 5
                                                    AND State = 128))
ORDER BY BatchId, EntryDate
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM hst.BatchHistory
    WHERE BatchId IN (SELECT ID
                          FROM DdocControl.trx.Batches
                          WHERE BatchName IN (SELECT BatchCatalog.BatchName COLLATE DATABASE_DEFAULT 
                                                  FROM KCSystemBarcel.dbo.BatchCatalog
                                                  WHERE ProcessID = 5
                                                    AND State = 128))
    AND Message = 'Cambio de módulo/estatus desde Batch Manager'
ORDER BY BatchId ASC , EntryDate DESC
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM hst.BatchHistory
    WHERE BatchId IN (SELECT ID
                          FROM DdocControl.trx.Batches
                          WHERE BatchName IN (SELECT BatchCatalog.BatchName COLLATE DATABASE_DEFAULT 
                                                  FROM KCSystemBarcel.dbo.BatchCatalog
                                                  WHERE ProcessID = 5
                                                    AND State = 128))
      AND ModuleId = 64
    AND Message = 'Cambio de módulo/estatus desde Batch Manager'
ORDER BY BatchId ASC , EntryDate DESC
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM hst.BatchHistory
    WHERE BatchId IN (SELECT ID
                          FROM DdocControl.trx.Batches
                          WHERE BatchName IN (SELECT BatchCatalog.BatchName COLLATE DATABASE_DEFAULT 
                                                  FROM KCSystemBarcel.dbo.BatchCatalog
                                                  WHERE ProcessID = 5
                                                    AND State = 128))
ORDER BY BatchId ASC , EntryDate DESC
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM DdocControl.trx.Audits
WHERE Id = 11844
;-- -. . -..- - / . -. - .-. -.--
SELECT Status FROM DdocControl.trx.Audits
WHERE Id = 11845
;-- -. . -..- - / . -. - .-. -.--
SELECT Status FROM DdocControl.trx.Audits
WHERE Id = 11846
;-- -. . -..- - / . -. - .-. -.--
SELECT Status FROM DdocControl.trx.Audits
WHERE Id = 11844
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
    FROM KCSystemBarcel.dbo.BatchCatalog BC
             INNER JOIN ddocControl.trx.Batches B ON BC.BatchName = B.BatchName COLLATE DATABASE_DEFAULT
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
    FROM KCSystemBarcel.dbo.BatchCatalog BC
             INNER JOIN ddocControl.trx.Batches B ON BC.BatchName = B.BatchName COLLATE DATABASE_DEFAULT
    WHERE ProcessID = 5
      AND State = 128
ORDER BY AuditId
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM hst.BatchHistory
WHERE BatchId IN (
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
        FROM KCSystemBarcel.dbo.BatchCatalog BC
                 INNER JOIN ddocControl.trx.Batches B ON BC.BatchName = B.BatchName COLLATE DATABASE_DEFAULT
        WHERE ProcessID = 5
          AND State = 128
        AND AuditId IS NOT NULL
    )
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM hst.BatchHistory
WHERE BatchId IN (
    SELECT B.Id
        FROM KCSystemBarcel.dbo.BatchCatalog BC
                 INNER JOIN ddocControl.trx.Batches B ON BC.BatchName = B.BatchName COLLATE DATABASE_DEFAULT
        WHERE ProcessID = 5
          AND State = 128
        AND AuditId IS NOT NULL
    )
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM hst.BatchHistory
WHERE BatchId IN (
    SELECT B.Id
        FROM KCSystemBarcel.dbo.BatchCatalog BC
                 INNER JOIN ddocControl.trx.Batches B ON BC.BatchName = B.BatchName COLLATE DATABASE_DEFAULT
        WHERE ProcessID = 5
          AND State = 128
        AND AuditId IS NOT NULL
    )
ORDER BY BatchId ASC, EntryDate DESC
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM hst.BatchHistory
WHERE BatchId IN (
    SELECT B.Id
        FROM KCSystemBarcel.dbo.BatchCatalog BC
                 INNER JOIN ddocControl.trx.Batches B ON BC.BatchName = B.BatchName COLLATE DATABASE_DEFAULT
        WHERE ProcessID = 5
          AND State = 128
        AND AuditId IS NOT NULL
    )
AND NOT IN ('[Kofax.Capture.ACWFLIB] 12000 No se puede cargar el agente de flujo de trabajo "KwaBarcelmx." (429 No se puede crear el componente ActiveX.)')
ORDER BY BatchId ASC, EntryDate DESC
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM hst.BatchHistory
WHERE BatchId IN (
    SELECT B.Id
        FROM KCSystemBarcel.dbo.BatchCatalog BC
                 INNER JOIN ddocControl.trx.Batches B ON BC.BatchName = B.BatchName COLLATE DATABASE_DEFAULT
        WHERE ProcessID = 5
          AND State = 128
        AND AuditId IS NOT NULL
    )
AND BatchHistory.Message NOT IN ('[Kofax.Capture.ACWFLIB] 12000 No se puede cargar el agente de flujo de trabajo "KwaBarcelmx." (429 No se puede crear el componente ActiveX.)')
ORDER BY BatchId ASC, EntryDate DESC
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM hst.BatchHistory
WHERE BatchId IN (
    SELECT B.Id
        FROM KCSystemBarcel.dbo.BatchCatalog BC
                 INNER JOIN ddocControl.trx.Batches B ON BC.BatchName = B.BatchName COLLATE DATABASE_DEFAULT
        WHERE ProcessID = 5
          AND State = 128
        AND AuditId IS NOT NULL
    )
AND BatchHistory.Message NOT IN ('[Kofax.Capture.ACWFLIB] 12000 No se puede cargar el agente de flujo de trabajo "KwaBarcelmx." (429 No se puede crear el componente ActiveX.)','[Kofax.Capture.ACWFLIB] 12001 Workflow Agent Error "KwaSICPD." (5 Exception has been thrown by the target of an invocation.)')
ORDER BY BatchId ASC, EntryDate DESC
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM hst.BatchHistory
    WHERE BatchId IN (SELECT B.Id
                          FROM KCSystemBarcel.dbo.BatchCatalog BC
                                   INNER JOIN DdocControl.trx.Batches B
                                              ON BC.BatchName = B.BatchName COLLATE DATABASE_DEFAULT
                          WHERE ProcessID = 5
                            AND State = 128
                            AND AuditId IS NOT NULL)
      AND BatchHistory.Message NOT IN
          ('[Kofax.Capture.ACWFLIB] 12000 No se puede cargar el agente de flujo de trabajo "KwaBarcelmx." (429 No se puede crear el componente ActiveX.)',
           '[Kofax.Capture.ACWFLIB] 12001 Workflow Agent Error "KwaSICPD." (5 Exception has been thrown by the target of an invocation.)',
          'Could not load file or assembly ''itextsharp, Version=5.5.13.1, Culture=neutral, PublicKeyToken=8354ae6d2174ddca'' or one of its dependencies. El sistema no puede encontrar el archivo especificado.')
    ORDER BY BatchId ASC, EntryDate DESC
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystemBarcel.dbo.BatchCatalog BC
             INNER JOIN DdocControl.trx.Batches B
                        ON BC.BatchName = B.BatchName COLLATE DATABASE_DEFAULT
    INNER JOIN hst.BatchHistory BH ON B.Id = BH.BatchId
    INNER JOIN cat.Modules M ON BH.ModuleId = M.id
    INNER JOIN DdocControl.cat.ItemStatus ITS ON ITS.[Key] = BH.StatusId 
    WHERE ProcessID = 5
      AND State = 128
      AND AuditId IS NOT NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT B.BatchName
     , M.Name
     , ITS.Value
     , EntryDate
     , Message
     , BH.[User]
    FROM KCSystemBarcel.dbo.BatchCatalog BC
             INNER JOIN DdocControl.trx.Batches B
                        ON BC.BatchName = B.BatchName COLLATE DATABASE_DEFAULT
             INNER JOIN hst.BatchHistory BH ON B.Id = BH.BatchId
             INNER JOIN cat.Modules M ON BH.ModuleId = M.Id
             INNER JOIN DdocControl.cat.ItemStatus ITS ON ITS.[Key] = BH.StatusId
    WHERE ProcessID = 5
      AND State = 128
      AND AuditId IS NOT NULL
      AND BH.Message NOT IN
          ('[Kofax.Capture.ACWFLIB] 12000 No se puede cargar el agente de flujo de trabajo "KwaBarcelmx." (429 No se puede crear el componente ActiveX.)',
           '[Kofax.Capture.ACWFLIB] 12001 Workflow Agent Error "KwaSICPD." (5 Exception has been thrown by the target of an invocation.)',
           'Could not load file or assembly ''itextsharp, Version=5.5.13.1, Culture=neutral, PublicKeyToken=8354ae6d2174ddca'' or one of its dependencies. El sistema no puede encontrar el archivo especificado.')
    ORDER BY BatchId ASC, EntryDate DESC
;-- -. . -..- - / . -. - .-. -.--
SELECT B.BatchName
     , M.Name
     , ITS.Value
     , EntryDate
     , Message
     , BH.[User]
    FROM KCSystemBarcel.dbo.BatchCatalog BC
             INNER JOIN DdocControl.trx.Batches B
                        ON BC.BatchName = B.BatchName COLLATE DATABASE_DEFAULT
             INNER JOIN hst.BatchHistory BH ON B.Id = BH.BatchId
             INNER JOIN cat.Modules M ON BH.ModuleId = M.Id
             INNER JOIN DdocControl.cat.ItemStatus ITS ON ITS.[Key] = BH.StatusId
    WHERE ProcessID = 5
      AND State = 128
      AND AuditId IS NOT NULL
      AND BH.Message NOT IN
          ('[Kofax.Capture.ACWFLIB] 12000 No se puede cargar el agente de flujo de trabajo "KwaBarcelmx." (429 No se puede crear el componente ActiveX.)',
           '[Kofax.Capture.ACWFLIB] 12001 Workflow Agent Error "KwaSICPD." (5 Exception has been thrown by the target of an invocation.)',
           'Could not load file or assembly ''itextsharp, Version=5.5.13.1, Culture=neutral, PublicKeyToken=8354ae6d2174ddca'' or one of its dependencies. El sistema no puede encontrar el archivo especificado.')
    AND BH.[User] NOT IN ('ADMIN')
    ORDER BY BatchId ASC, EntryDate DESC
;-- -. . -..- - / . -. - .-. -.--
SELECT B.BatchName
     , M.Name
     , ITS.Value
     , EntryDate
     , Message
     , AuditId
     , FinalAuditId
     , BH.[User]
    FROM KCSystemBarcel.dbo.BatchCatalog BC
             INNER JOIN DdocControl.trx.Batches B
                        ON BC.BatchName = B.BatchName COLLATE DATABASE_DEFAULT
             INNER JOIN hst.BatchHistory BH ON B.Id = BH.BatchId
             INNER JOIN cat.Modules M ON BH.ModuleId = M.Id
             INNER JOIN DdocControl.cat.ItemStatus ITS ON ITS.[Key] = BH.StatusId
    WHERE ProcessID = 5
      AND State = 128
      AND AuditId IS NOT NULL
      AND BH.Message NOT IN
          ('[Kofax.Capture.ACWFLIB] 12000 No se puede cargar el agente de flujo de trabajo "KwaBarcelmx." (429 No se puede crear el componente ActiveX.)',
           '[Kofax.Capture.ACWFLIB] 12001 Workflow Agent Error "KwaSICPD." (5 Exception has been thrown by the target of an invocation.)',
           'Could not load file or assembly ''itextsharp, Version=5.5.13.1, Culture=neutral, PublicKeyToken=8354ae6d2174ddca'' or one of its dependencies. El sistema no puede encontrar el archivo especificado.')
    AND BH.[User] NOT IN ('ADMIN')
    ORDER BY BatchId ASC, EntryDate DESC
;-- -. . -..- - / . -. - .-. -.--
EXEC trx.AuditGetCandidates
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM DdocControl.trx.AuditImages
WHERE Status = 0
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM Barcel2019.dbo.Datos
WHERE NombreLote = 'B24-191 PAQ 07'
;-- -. . -..- - / . -. - .-. -.--
SELECT B.BatchName
     , M.Name
     , ITS.Value
     , EntryDate
     , Message
     , AuditId
     , FinalAuditId
     , BH.[User]
    FROM KCSystemBarcel.dbo.BatchCatalog BC
             INNER JOIN DdocControl.trx.Batches B
                        ON BC.BatchName = B.BatchName COLLATE DATABASE_DEFAULT
             INNER JOIN hst.BatchHistory BH ON B.Id = BH.BatchId
             INNER JOIN cat.Modules M ON BH.ModuleId = M.Id
             INNER JOIN DdocControl.cat.ItemStatus ITS ON ITS.[Key] = BH.StatusId
    WHERE B.BatchName = 'B24-191 PAQ 07'
    ORDER BY BatchId ASC, EntryDate DESC
;-- -. . -..- - / . -. - .-. -.--
SELECT B.BatchName
     , M.Name
     , ITS.Value
     , EntryDate
     , Message
     , AuditId
     , FinalAuditId
     , BH.[User]
    FROM KCSystemBarcel.dbo.BatchCatalog BC
             INNER JOIN DdocControl.trx.Batches B
                        ON BC.BatchName = B.BatchName COLLATE DATABASE_DEFAULT
             INNER JOIN hst.BatchHistory BH ON B.Id = BH.BatchId
             INNER JOIN cat.Modules M ON BH.ModuleId = M.Id
             INNER JOIN DdocControl.cat.ItemStatus ITS ON ITS.[Key] = BH.StatusId
    WHERE B.BatchName = 'B24-191 PAQ 07'
      AND BH.Message NOT IN
          ('[Kofax.Capture.ACWFLIB] 12000 No se puede cargar el agente de flujo de trabajo "KwaBarcelmx." (429 No se puede crear el componente ActiveX.)',
           '[Kofax.Capture.ACWFLIB] 12001 Workflow Agent Error "KwaSICPD." (5 Exception has been thrown by the target of an invocation.)',
           'Could not load file or assembly ''itextsharp, Version=5.5.13.1, Culture=neutral, PublicKeyToken=8354ae6d2174ddca'' or one of its dependencies. El sistema no puede encontrar el archivo especificado.')
      AND BH.[User] NOT IN ('ADMIN')
    ORDER BY BatchId ASC, EntryDate DESC
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM DdocControl.trx.Batches
WHERE BatchName = 'B24-191 PAQ 07'
;-- -. . -..- - / . -. - .-. -.--
SELECT B.BatchName
     , M.Name
     , ITS.Value
     , EntryDate
     , Message
     , AuditId
     , FinalAuditId
     , BH.[User]
    FROM KCSystemBarcel.dbo.BatchCatalog BC
             INNER JOIN DdocControl.trx.Batches B
                        ON BC.BatchName = B.BatchName COLLATE DATABASE_DEFAULT
             INNER JOIN hst.BatchHistory BH ON B.Id = BH.BatchId
             INNER JOIN cat.Modules M ON BH.ModuleId = M.Id
             INNER JOIN DdocControl.cat.ItemStatus ITS ON ITS.[Key] = BH.StatusId
    WHERE BatchId = 70720
      AND BH.Message NOT IN
          ('[Kofax.Capture.ACWFLIB] 12000 No se puede cargar el agente de flujo de trabajo "KwaBarcelmx." (429 No se puede crear el componente ActiveX.)',
           '[Kofax.Capture.ACWFLIB] 12001 Workflow Agent Error "KwaSICPD." (5 Exception has been thrown by the target of an invocation.)',
           'Could not load file or assembly ''itextsharp, Version=5.5.13.1, Culture=neutral, PublicKeyToken=8354ae6d2174ddca'' or one of its dependencies. El sistema no puede encontrar el archivo especificado.')
      AND BH.[User] NOT IN ('ADMIN')
    ORDER BY BatchId ASC, EntryDate DESC
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM hst.BatchHistory
WHERE BatchId = '70720'
;-- -. . -..- - / . -. - .-. -.--
SELECT B.BatchName
     , M.Name
     , ITS.Value
     , EntryDate
     , Message
     , AuditId
     , FinalAuditId
     , BH.[User]
    FROM DdocControl.trx.Batches B
             INNER JOIN hst.BatchHistory BH ON B.Id = BH.BatchId
             INNER JOIN cat.Modules M ON BH.ModuleId = M.Id
             INNER JOIN DdocControl.cat.ItemStatus ITS ON ITS.[Key] = BH.StatusId
    WHERE BatchId = 70720
      AND BH.Message NOT IN
          ('[Kofax.Capture.ACWFLIB] 12000 No se puede cargar el agente de flujo de trabajo "KwaBarcelmx." (429 No se puede crear el componente ActiveX.)',
           '[Kofax.Capture.ACWFLIB] 12001 Workflow Agent Error "KwaSICPD." (5 Exception has been thrown by the target of an invocation.)',
           'Could not load file or assembly ''itextsharp, Version=5.5.13.1, Culture=neutral, PublicKeyToken=8354ae6d2174ddca'' or one of its dependencies. El sistema no puede encontrar el archivo especificado.')
      AND BH.[User] NOT IN ('ADMIN')
    ORDER BY BatchId ASC, EntryDate DESC
;-- -. . -..- - / . -. - .-. -.--
SELECT B.BatchName
     , M.Name
     , ITS.Value
     , EntryDate
     , Message
     , AuditId
     , FinalAuditId
     , BH.[User]
    FROM DdocControl.trx.Batches B
             INNER JOIN hst.BatchHistory BH ON B.Id = BH.BatchId
             INNER JOIN cat.Modules M ON BH.ModuleId = M.Id
             INNER JOIN DdocControl.cat.ItemStatus ITS ON ITS.[Key] = BH.StatusId
    WHERE BatchId = 70720
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM DdocControl.trx.AuditCaptures
WHERE AuditId IN (
SELECT Id FROM DdocControl.trx.Audits
WHERE Number = 4977)
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM DdocControl.trx.AuditContents
WHERE AuditId IN (
SELECT Id FROM DdocControl.trx.Audits
WHERE Number = 4977)
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM DdocControl.trx.AuditImages
WHERE AuditId IN (
SELECT Id FROM DdocControl.trx.Audits
WHERE Number = 4977)
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM DdocControl.trx.Batches
WHERE AuditId IN (
SELECT Id FROM DdocControl.trx.Audits
WHERE Number = 4977)
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM DdocControl.trx.Audits
WHERE Number = 4977
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM DdocControl.trx.AuditImages
WHERE AuditId = 11849
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM DdocControl.trx.Audits
WHERE Number = 4978
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM DdocControl.trx.Audits
;-- -. . -..- - / . -. - .-. -.--
UPDATE trx.Batches
SET ModuleId = 128
    AND StatusId = 2
    WHERE BatchName IN (SELECT BatchName COLLATE DATABASE_DEFAULT 
                            FROM KCSystemBarcel.dbo.BatchCatalog
                            WHERE ProcessID = 5
                              AND State = 128)
AND AuditId IS NULL
;-- -. . -..- - / . -. - .-. -.--
UPDATE trx.Batches
SET ModuleId = 128
    , StatusId = 2
    WHERE BatchName IN (SELECT BatchName COLLATE DATABASE_DEFAULT 
                            FROM KCSystemBarcel.dbo.BatchCatalog
                            WHERE ProcessID = 5
                              AND State = 128)
AND AuditId IS NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM DdocControl.trx.Batches
    WHERE AuditId IN (SELECT Id
                          FROM DdocControl.trx.Audits
                          WHERE Number = 4977)
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM DdocControl.trx.Audits
    WHERE Number = 4977
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
    FROM KCSystemBarcel.dbo.BatchCatalog BC
             INNER JOIN DdocControl.trx.Batches B ON BC.BatchName = B.BatchName COLLATE DATABASE_DEFAULT
    WHERE ProcessID = 5
      AND State = 128
    ORDER BY AuditId