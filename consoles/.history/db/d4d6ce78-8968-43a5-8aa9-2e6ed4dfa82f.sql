SELECT * FROM KCSystem.dbo.BatchCatalog BC
INNER JOIN SICPD.trx.Batches B ON BC.BatchName = B.BatchName
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchCatalog BC
             INNER JOIN SICPD.trx.Batches B ON BC.BatchName = B.BatchName COLLATE DATABASE_DEFAULT
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
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.trx.FinalAudits
WHERE Id = 35
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM ASF.dbo.Datos
WHERE DID IN (
    25237,
25265,
25266,
25267,
25269,
25271,
25278,
25291,
25292,
25381,
25409,
25429,
25484,
25514,
25588,
25591,
25592,
25593,
25594,
25596,
25597,
25614,
25615,
25620,
25624,
25625,
25626,
25627,
25628,
25629,
25646,
25647,
25654,
25671,
25677,
25690,
25694,
25695,
25696,
25697,
25698,
25699,
25714,
25715,
25716,
25724,
25733,
25770,
25817,
25821,
25822,
25823,
25824,
25825,
25826,
25840,
25841,
25845,
25850,
25851,
25852,
25853,
25854,
25855,
25868
    )
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP(100)* FROM ASF.dbo.Datos
WHERE DID IN (
    25237,
25265,
25266,
25267,
25269,
25271,
25278,
25291,
25292,
25381,
25409,
25429,
25484,
25514,
25588,
25591,
25592,
25593,
25594,
25596,
25597,
25614,
25615,
25620,
25624,
25625,
25626,
25627,
25628,
25629,
25646,
25647,
25654,
25671,
25677,
25690,
25694,
25695,
25696,
25697,
25698,
25699,
25714,
25715,
25716,
25724,
25733,
25770,
25817,
25821,
25822,
25823,
25824,
25825,
25826,
25840,
25841,
25845,
25850,
25851,
25852,
25853,
25854,
25855,
25868
    )
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP(100)* FROM ASF.dbo.Datos
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP(100)* FROM ASF.dbo.Datos
ORDER BY DID DESC
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP(67)* FROM ASF.dbo.Datos
ORDER BY DID DESC
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP(66)* FROM ASF.dbo.Datos
ORDER BY DID DESC
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP(66)* FROM ASF.dbo.Documentos
ORDER BY DID DESC
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM ASF.dbo.Datos
WHERE NumEmpleado = 10350
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM ASF.dbo.Datos
WHERE Nombres = 'TIMOTHY DAVID'
;-- -. . -..- - / . -. - .-. -.--
SELECT NumEmpleado
     , TipoExpediente
     , TipoDocumento
     , Nombres
     , ApellidoMaterno
     , ApellidoMaterno
     , FechaProcesado
     , Path
    FROM ASF.dbo.Datos A
             INNER JOIN ASF.dbo.Documentos B ON A.DID = B.DID
    WHERE Nombres = 'TIMOTHY DAVID'
;-- -. . -..- - / . -. - .-. -.--
SELECT NumEmpleado
     , TipoExpediente
     , TipoDocumento
     , Nombres
     , ApellidoPaterno
     , ApellidoMaterno
     , FechaProcesado
     , Path
    FROM ASF.dbo.Datos A
             INNER JOIN ASF.dbo.Documentos B ON A.DID = B.DID
    WHERE Nombres = 'TIMOTHY DAVID'
;-- -. . -..- - / . -. - .-. -.--
SELECT NumEmpleado
     , TipoExpediente
     , TipoDocumento
     , Nombres
     , ApellidoPaterno
     , ApellidoMaterno
     , FechaProcesado
     , Path
    FROM ASF.dbo.Datos A
             INNER JOIN ASF.dbo.Documentos B ON A.DID = B.DID
    WHERE NumEmpleado = 10364
;-- -. . -..- - / . -. - .-. -.--
SELECT NumEmpleado
     , TipoExpediente
     , TipoDocumento
     , Nombres
     , ApellidoPaterno
     , ApellidoMaterno
     , FechaProcesado
     , Path
    FROM ASF.dbo.Datos A
             INNER JOIN ASF.dbo.Documentos B ON A.DID = B.DID
    WHERE NumEmpleado = 10383
;-- -. . -..- - / . -. - .-. -.--
SELECT NumEmpleado
     , TipoExpediente
     , TipoDocumento
     , Nombres
     , ApellidoPaterno
     , ApellidoMaterno
     , FechaProcesado
     , Path
    FROM ASF.dbo.Datos A
             INNER JOIN ASF.dbo.Documentos B ON A.DID = B.DID
    WHERE NumEmpleado = 10337
;-- -. . -..- - / . -. - .-. -.--
SELECT NumEmpleado
     , TipoExpediente
     , TipoDocumento
     , Nombres
     , ApellidoPaterno
     , ApellidoMaterno
     , FechaProcesado
     , Path
     , GID
    FROM ASF.dbo.Datos A
             INNER JOIN ASF.dbo.Documentos B ON A.DID = B.DID
    WHERE NumEmpleado = 10337
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM ASF.dbo.Datos A
             INNER JOIN ASF.dbo.Documentos B ON A.DID = B.DID
    WHERE NumEmpleado = 10337
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM ASF.dbo.Datos A
             INNER JOIN ASF.dbo.Documentos B ON A.DID = B.DID
    WHERE NumEmpleado = 10383
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM ASF.dbo.Datos A
             INNER JOIN ASF.dbo.Documentos B ON A.DID = B.DID
    WHERE NumEmpleado = 10348
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM ASF.dbo.Datos A
             INNER JOIN ASF.dbo.Documentos B ON A.DID = B.DID
    WHERE NumEmpleado = 10347
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
SELECT * FROM SICPD.hst.BatchHistory BH
INNER JOIN SICPD.cat.Modules M ON BH.ModuleId = M.Id
INNER JOIN SICPD.cat.ItemStatus I ON BH.StatusId = I.[Key]
INNER JOIN SICPD.trx.Batches B ON BH.BatchId = B.Id
WHERE BatchId = 3469
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM SICPD.hst.BatchHistory BH
INNER JOIN SICPD.cat.Modules M ON BH.ModuleId = M.Id
INNER JOIN SICPD.cat.ItemStatus I ON BH.StatusId = I.[Key]
INNER JOIN SICPD.trx.Batches B ON BH.BatchId = B.Id
WHERE BatchId = 3469
ORDER BY EntryDate
;-- -. . -..- - / . -. - .-. -.--
SELECT BatchId AS CONTENEDOR,
       M.Name AS MODULO,
       I.Value AS STATUS,
       B.BatchName,
       EntryDate,
       Message,
       BH.[User]
       FROM SICPD.hst.BatchHistory BH
INNER JOIN SICPD.cat.Modules M ON BH.ModuleId = M.Id
INNER JOIN SICPD.cat.ItemStatus I ON BH.StatusId = I.[Key]
INNER JOIN SICPD.trx.Batches B ON BH.BatchId = B.Id
WHERE BatchId = 3469
ORDER BY EntryDate
;-- -. . -..- - / . -. - .-. -.--
SELECT BatchId AS CONTENEDOR,
       M.Name AS MODULO,
       I.Value AS STATUS,
       B.BatchName,
       EntryDate,
       Message,
       BH.[User]
       FROM SICPD.hst.BatchHistory BH
INNER JOIN SICPD.cat.Modules M ON BH.ModuleId = M.Id
INNER JOIN SICPD.cat.ItemStatus I ON BH.StatusId = I.[Key]
INNER JOIN SICPD.trx.Batches B ON BH.BatchId = B.Id
WHERE BatchId = 3469
ORDER BY EntryDate DESC
;-- -. . -..- - / . -. - .-. -.--
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
    ORDER BY EntryDate DESC
;-- -. . -..- - / . -. - .-. -.--
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
    ORDER BY BatchId, EntryDate DESC
;-- -. . -..- - / . -. - .-. -.--
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
    AND Name = 'Verificación' AND Value = 'Reservado'
    ORDER BY BatchId, EntryDate DESC
;-- -. . -..- - / . -. - .-. -.--
UPDATE SICPD.trx.Batches
SET ModuleId = 128
  , StatusId = 2
    WHERE BatchName IN (SELECT BatchName
                            FROM KCSystem.dbo.BatchCatalog
                            WHERE ProcessID = 5
                              AND State = 128)
AND AuditId IS NULL
;-- -. . -..- - / . -. - .-. -.--
EXEC SICPD.TRX.AuditGetCandidates
;-- -. . -..- - / . -. - .-. -.--
EXEC SICPD.TRX.AuditGetCandidates 1
;-- -. . -..- - / . -. - .-. -.--
UPDATE SICPD.trx.Batches
SET ModuleId = 128
  , StatusId = 2
    WHERE BatchName IN (SELECT BatchName COLLATE DATABASE_DEFAULT 
                            FROM KCSystem.dbo.BatchCatalog
                            WHERE ProcessID = 5
                              AND State = 128)
AND AuditId IS NULL
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