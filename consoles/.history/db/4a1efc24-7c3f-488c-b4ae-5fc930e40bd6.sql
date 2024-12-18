SELECT * FROM KCSystemV02.dbo.BatchCatalog
;-- -. . -..- - / . -. - .-. -.--
SELECT B.Id AS CONTENEDOR
     , BC.BatchName
     , ProcessID
     , State
     , B.ModuleId
     , B.StatusId
     , AUDITID
     , FINALAUDITID
     , ActualDocs
     , ActualPages
     , ClassName
    FROM KCSystemV02.dbo.BatchCatalog BC
             INNER JOIN ddoccontrol.trx.BATCHES B ON BC.BatchName = B.BatchName COLLATE DATABASE_DEFAULT
    WHERE ProcessID = 5
      AND State = 128
      AND ClassName = 'despegar.com'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM ddoccontrol.trx.FinalAudits
WHERE Id = 95
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM ddoccontrol.trx.Audits
WHERE ID = 95
;-- -. . -..- - / . -. - .-. -.--
EXEC ddoccontrol.TRX.FinalAuditGetCandidates
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM ddoccontrol.trx.FinalAudits
WHERE ID = 95
;-- -. . -..- - / . -. - .-. -.--
SELECT B.Id AS CONTENEDOR
     , BC.BatchName
     , ProcessID
     , State
     , B.ModuleId
     , B.StatusId
     , AUDITID
     , FINALAUDITID
     , ActualDocs
     , ActualPages
     , ClassName
    FROM KCSystemV02.dbo.BatchCatalog BC
             INNER JOIN ddoccontrol.trx.BATCHES B ON BC.BatchName = B.BatchName COLLATE DATABASE_DEFAULT
    WHERE ProcessID = 14999
      AND State = 128
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystemV02.dbo.BatchDocument
    WHERE BatchID IN (SELECT ExternalBatchID
                          FROM KCSystemV02.dbo.BatchCatalog
                          WHERE ProcessID = 14999
                            AND State = 128)
;-- -. . -..- - / . -. - .-. -.--
UPDATE KCSystemV02.dbo.BatchDocument
SET PDFGenerationFileName = '\\Srvsony\sonymusic\REGALIAS\Imagenes\0000009E.pdf\0001.pdf'
WHERE UniqueID = 47089
;-- -. . -..- - / . -. - .-. -.--
UPDATE KCSystemV02.dbo.BatchDocument
SET PDFGenerationFileName = '\\Srvsony\sonymusic\REGALIAS\Imagenes\0000009E.pdf\0001.pdf', PDFGeneration = 1, PDFGenerationFileType = 1009
WHERE UniqueID = 47089
;-- -. . -..- - / . -. - .-. -.--
UPDATE KCSystemV02.dbo.BatchDocument
SET PDFGenerationFileName = '\\Srvsony\sonymusic\REGALIAS\Imagenes\000000DA.pdf\0001.pdf', PDFGeneration = 1, PDFGenerationFileType = 1009
WHERE UniqueID = 47291
;-- -. . -..- - / . -. - .-. -.--
UPDATE KCSystemV02.dbo.BatchDocument
SET PDFGenerationFileName = '\\Srvsony\sonymusic\REGALIAS\Imagenes\000000DA.pdf\0002.pdf', PDFGeneration = 1, PDFGenerationFileType = 1009
WHERE UniqueID = 47290
;-- -. . -..- - / . -. - .-. -.--
UPDATE KCSystemV02.dbo.BatchDocument
SET PDFGenerationFileName = '\\Srvsony\sonymusic\REGALIAS\Imagenes\000000DD.pdf\0001.pdf', PDFGeneration = 1, PDFGenerationFileType = 1009
WHERE UniqueID = 47300
;-- -. . -..- - / . -. - .-. -.--
UPDATE KCSystemV02.dbo.BatchDocument
SET PDFGenerationFileName = '\\Srvsony\sonymusic\REGALIAS\Imagenes\000000E7.pdf\0001.pdf', PDFGeneration = 1, PDFGenerationFileType = 1009
WHERE UniqueID = 47317
;-- -. . -..- - / . -. - .-. -.--
UPDATE KCSystemV02.dbo.BatchDocument
SET PDFGenerationFileName = '\\\Srvsony\sonymusic\REGALIAS\Imagenes\000000ED.pdf\0001.pdf', PDFGeneration = 1, PDFGenerationFileType = 1009
WHERE UniqueID = 47326
;-- -. . -..- - / . -. - .-. -.--
SELECT UniqueID
     , PDFGeneration
     , PDFGenerationFileType
     , PDFGenerationFileName
     , BatchName
    FROM KCSystemV02.dbo.BatchDocument A
             INNER JOIN KCSystemV02.dbo.BatchCatalog B ON A.BatchID = B.ExternalBatchID
    WHERE ProcessID = 14999
      AND State = 128
AND PDFGenerationFileName = ''
;-- -. . -..- - / . -. - .-. -.--
SELECT UniqueID
     , PDFGeneration
     , PDFGenerationFileType
     , PDFGenerationFileName
     , BatchName
    FROM KCSystemV02.dbo.BatchDocument A
             INNER JOIN KCSystemV02.dbo.BatchCatalog B ON A.BatchID = B.ExternalBatchID
    WHERE ProcessID = 14999
      AND State = 128