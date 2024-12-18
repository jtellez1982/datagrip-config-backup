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
    WHERE ProcessID = 14999
      AND State = 128
      AND ClassName LIKE '%peninsular%'

UPDATE ddoc_Control.trx.Batches
SET ModuleId = 128
  , StatusId = 2
    WHERE BatchName IN (SELECT BatchName COLLATE DATABASE_DEFAULT
                            FROM KCSystem.dbo.BatchCatalog
                            WHERE ProcessID = 5
                              AND State = 128
                              AND ClassName LIKE '%peninsular%')
      AND Batches.AuditId IS NULL

SELECT *
    FROM ddoc_Control.trx.FinalAuditContents
    WHERE BatchId = 45376

UPDATE KCSystem.dbo.BatchCatalog
SET State = 2
    WHERE ProcessID = 5
      AND State = 128
      AND ClassName LIKE '%peninsular%'
      AND BatchName IN (SELECT BatchName COLLATE DATABASE_DEFAULT
                            FROM ddoc_Control.trx.Batches
                            WHERE ModuleId = 64)

SELECT *
    FROM KCSystem.dbo.BatchCatalog
    WHERE ProcessID = 5
      AND State = 128
      AND ClassName LIKE '%DESPEGAR.COM%'
      AND BatchName IN (SELECT BatchName COLLATE DATABASE_DEFAULT
                            FROM ddoc_Control.trx.Batches
                            WHERE ModuleId = 64)

SELECT *
    FROM ddoc_Control.cat.Modules

SELECT BatchId, Name, Value, EntryDate, Message, [User]
    FROM ddoc_Control.hst.BatchHistory B
             INNER JOIN ddoc_Control.cat.Modules MO ON B.ModuleId = MO.Id
             INNER JOIN ddoc_Control.cat.ItemStatus SI ON B.StatusId = SI.[Key]
    WHERE BatchId IN (SELECT Id
                          FROM ddoc_Control.trx.Batches
                          WHERE BatchName = 'Peninsular - PENINSULAR 03-5_CAJA 621')
    ORDER BY B.Id DESC

EXEC ddoc_Control.trx.AuditGetCandidates 1
EXEC ddoc_Control.trx.FinalAuditGetCandidates 1

SELECT *
    FROM ddoc_Control.trx.Batches
    WHERE BatchName IN (
        'DESPEGAR - BEST DAY_GALERIAS METEPEC_C01-04-06'
        )

UPDATE KCSystem.dbo.BatchCatalog
SET ProcessID = 3
  , State     = 2
    WHERE ProcessID = 1
      AND ClassName = 'PENINSULAR_POLIZASCONTABLES';

SELECT *
    FROM KCSystem.dbo.Processes

SELECT *
    FROM ddoc_Control.trx.Batches
    WHERE AuditId IN (SELECT Id
                          FROM ddoc_Control.trx.Audits
                          WHERE Number = 590)

SELECT *
    FROM ddoc_Control.trx.FinalAudits
    WHERE Id = 2572

SELECT *
    FROM ddoc_Control.hst.BatchHistory
    WHERE BatchId IN (SELECT Id
                          FROM ddoc_Control.trx.Batches
                          WHERE BatchName = 'Peninsular - PENINSULAR 08-10_CAJA 598')

SELECT *
    FROM ddoc_Control.cat.Modules

UPDATE ddoc_Control.trx.Batches
SET ModuleId = 128
  , StatusId = 2
    WHERE BatchName IN (SELECT BatchCatalog.BatchName COLLATE DATABASE_DEFAULT
                            FROM KCSystem.dbo.BatchCatalog
                            WHERE ProcessID = 5
                              AND State = 128
                              AND ClassName LIKE '%peninsular%')
      AND AuditId IS NULL

SELECT *
    FROM ddoc_Control.trx.Audits
    WHERE Number = 590

SELECT *
    FROM ddoc_Control.trx.Audits
    WHERE Number = 590

SELECT *
    FROM ddoc_Control.trx.Batches
    WHERE Id IN (SELECT BatchId
                     FROM ddoc_Control.trx.AuditContents
                     WHERE AuditId IN (SELECT Id
                                           FROM ddoc_Control.trx.Audits
                                           WHERE Number = 590))

SELECT *
    FROM ddoc_Control.trx.AuditContents
    WHERE AuditId IN (SELECT Id
                          FROM ddoc_Control.trx.Audits
                          WHERE Number = 590)

UPDATE ddoc_Control.trx.Batches
SET ModuleId = 128
  , StatusId = 2
    WHERE BatchName IN (
                        'DESPEGAR - DESPEGAR - BEST DAY_ MULTIPLAZA LINDAVISTA_C01-01-07_CAJA 112',
                        'DESPEGAR - DESPEGAR - BEST DAY_ MULTIPLAZA LINDAVISTA_C01-02-07_CAJA 112',
                        'DESPEGAR - DESPEGAR - BEST DAY_ MULTIPLAZA LINDAVISTA_C01-03-07_CAJA 112',
                        'DESPEGAR - DESPEGAR - BEST DAY_ MULTIPLAZA LINDAVISTA_C01-04-07_CAJA 112',
                        'DESPEGAR - DESPEGAR - BEST DAY_ MULTIPLAZA LINDAVISTA_C01-05-07_CAJA 112',
                        'DESPEGAR - DESPEGAR - BEST DAY_ MULTIPLAZA LINDAVISTA_C01-06-07_CAJA 112',
                        'DESPEGAR - DESPEGAR - BEST DAY_ MULTIPLAZA LINDAVISTA_C01-07-07_CAJA 112',
                        'DESPEGAR - DESPEGAR - BEST DAY_CARSO SAN LUIS_C01-01-09_CAJA 113',
                        'DESPEGAR - DESPEGAR - BEST DAY_CARSO SAN LUIS_C01-02-09_CAJA 113',
                        'DESPEGAR - DESPEGAR - BEST DAY_CARSO SAN LUIS_C01-03-09_CAJA 113',
                        'DESPEGAR - DESPEGAR - BEST DAY_CARSO SAN LUIS_C01-04-09_CAJA 113',
                        'DESPEGAR - DESPEGAR - BEST DAY_CARSO SAN LUIS_C01-05-09_CAJA 113',
                        'DESPEGAR - DESPEGAR - BEST DAY_CARSO SAN LUIS_C01-06-09_CAJA 113',
                        'DESPEGAR - DESPEGAR - BEST DAY_CARSO SAN LUIS_C01-07-09_CAJA 113',
                        'DESPEGAR - DESPEGAR - BEST DAY_CARSO SAN LUIS_C01-08-09_CAJA 113',
                        'DESPEGAR - DESPEGAR - BEST DAY_CARSO SAN LUIS_C01-09-09_CAJA 113',
                        'DESPEGAR - DESPEGAR - BEST DAY_MODULO 207_C01-01-02_CAJA 113',
                        'DESPEGAR - DESPEGAR - BEST DAY_MODULO 207_C01-02-02_CAJA 113',
                        'DESPEGAR - DESPEGAR - BEST DAY_PLAZA DORADO SAN LUIS_C01-01-03_CAJA 113',
                        'DESPEGAR - DESPEGAR - BEST DAY_PLAZA DORADO SAN LUIS_C01-02-03_CAJA 113',
                        'DESPEGAR - DESPEGAR - BEST DAY_PLAZA DORADO SAN LUIS_C01-03-03_CAJA 113',
                        'DESPEGAR - DESPEGAR - BEST DAY_SIN MODULO_C01-01-10_CAJA 113',
                        'DESPEGAR - DESPEGAR - BEST DAY_SIN MODULO_C01-02-10_CAJA 113',
                        'DESPEGAR - DESPEGAR - BEST DAY_SIN MODULO_C01-03-10_CAJA 113',
                        'DESPEGAR - DESPEGAR - BEST DAY_SIN MODULO_C01-04-10_CAJA 113',
                        'DESPEGAR - DESPEGAR - BEST DAY_SIN MODULO_C01-05-10_CAJA 113',
                        'DESPEGAR - DESPEGAR - BEST DAY_SIN MODULO_C01-06-10_CAJA 113',
                        'DESPEGAR - DESPEGAR - BEST DAY_SIN MODULO_C01-07-10_CAJA 113',
                        'DESPEGAR - DESPEGAR - BEST DAY_SIN MODULO_C01-08-10_CAJA 113',
                        'DESPEGAR - DESPEGAR - BEST DAY_SIN MODULO_C01-09-10_CAJA 113',
                        'DESPEGAR - DESPEGAR - BEST DAY_SIN MODULO_C01-10-10_CAJA 113',
                        'DESPEGAR - DESPEGAR - BEST DAY_ALTABRISA_C01-01-14_CAJA 114',
                        'DESPEGAR - DESPEGAR - BEST DAY_ALTABRISA_C01-02-14_CAJA 114',
                        'DESPEGAR - DESPEGAR - BEST DAY_ALTABRISA_C01-03-14_CAJA 114',
                        'DESPEGAR - DESPEGAR - BEST DAY_ALTABRISA_C01-04-14_CAJA 114',
                        'DESPEGAR - DESPEGAR - BEST DAY_ALTABRISA_C01-05-14_CAJA 114',
                        'DESPEGAR - DESPEGAR - BEST DAY_ALTABRISA_C01-06-14_CAJA 114',
                        'DESPEGAR - DESPEGAR - BEST DAY_ALTABRISA_C01-07-14_CAJA 114',
                        'DESPEGAR - DESPEGAR - BEST DAY_ALTABRISA_C01-08-14_CAJA 114',
                        'DESPEGAR - DESPEGAR - BEST DAY_ALTABRISA_C01-09-14_CAJA 114',
                        'DESPEGAR - DESPEGAR - BEST DAY_ALTABRISA_C01-10-14_CAJA 114',
                        'DESPEGAR - DESPEGAR - BEST DAY_ALTABRISA_C01-11-14_CAJA 114',
                        'DESPEGAR - DESPEGAR - BEST DAY_ALTABRISA_C01-12-14_CAJA 114',
                        'DESPEGAR - DESPEGAR - BEST DAY_ALTABRISA_C01-13-14_CAJA 114',
                        'DESPEGAR - DESPEGAR - BEST DAY_ALTABRISA_C01-14-14_CAJA 114',
                        'DESPEGAR - DESPEGAR - BEST DAY_CHETUMAL_C01-01-07_CAJA 114',
                        'DESPEGAR - DESPEGAR - BEST DAY_CHETUMAL_C01-02-07_CAJA 114',
                        'DESPEGAR - DESPEGAR - BEST DAY_CHETUMAL_C01-03-07_CAJA 114',
                        'DESPEGAR - DESPEGAR - BEST DAY_CHETUMAL_C01-04-07_CAJA 114',
                        'DESPEGAR - DESPEGAR - BEST DAY_CHETUMAL_C01-05-07_CAJA 114',
                        'DESPEGAR - DESPEGAR - BEST DAY_CHETUMAL_C01-06-07_CAJA 114',
                        'DESPEGAR - DESPEGAR - BEST DAY_CHETUMAL_C01-07-07_CAJA 114',
                        'DESPEGAR - DESPEGAR - BEST DAY_GALERIAS MONTERREY_C01-01-05_CAJA 115',
                        'DESPEGAR - DESPEGAR - BEST DAY_GALERIAS MONTERREY_C01-02-05_CAJA 115',
                        'DESPEGAR - DESPEGAR - BEST DAY_GALERIAS MONTERREY_C01-03-05_CAJA 115',
                        'DESPEGAR - DESPEGAR - BEST DAY_GALERIAS MONTERREY_C01-04-05_CAJA 115',
                        'DESPEGAR - DESPEGAR - BEST DAY_GALERIAS MONTERREY_C01-05-05_CAJA 115',
                        'DESPEGAR - DESPEGAR - BEST DAY_GALERIAS SALTILLO_C01-01-03_CAJA 115',
                        'DESPEGAR - DESPEGAR - BEST DAY_GALERIAS SALTILLO_C01-02-03_CAJA 115',
                        'DESPEGAR - DESPEGAR - BEST DAY_GALERIAS SALTILLO_C01-03-03_CAJA 115',
                        'DESPEGAR - DESPEGAR - BEST DAY_MULTIPLAZA MADERO_C01-01-15_CAJA 115',
                        'DESPEGAR - DESPEGAR - BEST DAY_MULTIPLAZA MADERO_C01-02-15_CAJA 115',
                        'DESPEGAR - DESPEGAR - BEST DAY_MULTIPLAZA MADERO_C01-03-15_CAJA 115',
                        'DESPEGAR - DESPEGAR - BEST DAY_MULTIPLAZA MADERO_C01-04-15_CAJA 115',
                        'DESPEGAR - DESPEGAR - BEST DAY_MULTIPLAZA MADERO_C01-05-15_CAJA 115',
                        'DESPEGAR - DESPEGAR - BEST DAY_MULTIPLAZA MADERO_C01-06-15_CAJA 115',
                        'DESPEGAR - DESPEGAR - BEST DAY_MULTIPLAZA MADERO_C01-07-15_CAJA 115',
                        'DESPEGAR - DESPEGAR - BEST DAY_MULTIPLAZA MADERO_C01-08-15_CAJA 115',
                        'DESPEGAR - DESPEGAR - BEST DAY_MULTIPLAZA MADERO_C01-09-15_CAJA 115',
                        'DESPEGAR - DESPEGAR - BEST DAY_MULTIPLAZA MADERO_C01-10-15_CAJA 115',
                        'DESPEGAR - DESPEGAR - BEST DAY_MULTIPLAZA MADERO_C01-11-15_CAJA 115',
                        'DESPEGAR - DESPEGAR - BEST DAY_MULTIPLAZA MADERO_C01-12-15_CAJA 115',
                        'DESPEGAR - DESPEGAR - BEST DAY_MULTIPLAZA MADERO_C01-13-15_CAJA 115',
                        'DESPEGAR - DESPEGAR - BEST DAY_MULTIPLAZA MADERO_C01-14-15_CAJA 115',
                        'DESPEGAR - DESPEGAR - BEST DAY_MULTIPLAZA MADERO_C01-15-15_CAJA 115',
                        'DESPEGAR - DESPEGAR - BEST DAY_SENDERO SALTILLO_C01-01-02_CAJA 115',
                        'DESPEGAR - DESPEGAR - BEST DAY_SENDERO SALTILLO_C01-02-02_CAJA 115',
                        'DESPEGAR - DESPEGAR - BEST DAY_WTC_C01-01-01_CAJA 115',
                        'DESPEGAR - DESPEGAR - BEST DAY_LINDAVISTA MONTERREY_C01-01-08_CAJA 116',
                        'DESPEGAR - DESPEGAR - BEST DAY_LINDAVISTA MONTERREY_C01-02-08_CAJA 116',
                        'DESPEGAR - DESPEGAR - BEST DAY_LINDAVISTA MONTERREY_C01-03-08_CAJA 116',
                        'DESPEGAR - DESPEGAR - BEST DAY_LINDAVISTA MONTERREY_C01-04-08_CAJA 116',
                        'DESPEGAR - DESPEGAR - BEST DAY_LINDAVISTA MONTERREY_C01-05-08_CAJA 116',
                        'DESPEGAR - DESPEGAR - BEST DAY_LINDAVISTA MONTERREY_C01-06-08_CAJA 116',
                        'DESPEGAR - DESPEGAR - BEST DAY_LINDAVISTA MONTERREY_C01-07-08_CAJA 116',
                        'DESPEGAR - DESPEGAR - BEST DAY_LINDAVISTA MONTERREY_C01-08-08_CAJA 116',
                        'DESPEGAR - DESPEGAR - BEST DAY_MULTIPLAZA LINDAVISTA_C01-01-01_CAJA 116',
                        'DESPEGAR - DESPEGAR - BEST DAY_PLAZA BELLA_C01-01-06_CAJA 116',
                        'DESPEGAR - DESPEGAR - BEST DAY_PLAZA BELLA_C01-02-06_CAJA 116',
                        'DESPEGAR - DESPEGAR - BEST DAY_PLAZA BELLA_C01-03-06_CAJA 116',
                        'DESPEGAR - DESPEGAR - BEST DAY_PLAZA BELLA_C01-04-06_CAJA 116',
                        'DESPEGAR - DESPEGAR - BEST DAY_PLAZA BELLA_C01-05-06_CAJA 116',
                        'DESPEGAR - DESPEGAR - BEST DAY_PLAZA BELLA_C01-06-06_CAJA 116',
                        'DESPEGAR - DESPEGAR - BEST DAY_PLAZA FIESTA MATAMOROS_C01-01-03_CAJA 116',
                        'DESPEGAR - DESPEGAR - BEST DAY_PLAZA FIESTA MATAMOROS_C01-02-03_CAJA 116',
                        'DESPEGAR - DESPEGAR - BEST DAY_PLAZA FIESTA MATAMOROS_C01-03-03_CAJA 116',
                        'DESPEGAR - DESPEGAR - BEST DAY_SENDERO REYNOSA_C01-01-04_CAJA 116',
                        'DESPEGAR - DESPEGAR - BEST DAY_SENDERO REYNOSA_C01-02-04_CAJA 116',
                        'DESPEGAR - DESPEGAR - BEST DAY_SENDERO REYNOSA_C01-03-04_CAJA 116',
                        'DESPEGAR - DESPEGAR - BEST DAY_SENDERO REYNOSA_C01-04-04_CAJA 116'
        )

SELECT SUBSTRING(PDFGenerationFileName, 1, 52) AS PDFGenerationFileName
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID IN (SELECT ExternalBatchID
                          FROM KCSystem.dbo.BatchCatalog
                          WHERE ProcessID = 14999
                            AND State = 128)
    GROUP BY SUBSTRING(PDFGenerationFileName, 1, 52)

SELECT UniqueID
    FROM KCSystem.dbo.BatchDocument
    WHERE PDFGenerationFileName LIKE '%\\srvkofax\Proyectos\ImagenesPeninsular\0000a5b0.PDF%'