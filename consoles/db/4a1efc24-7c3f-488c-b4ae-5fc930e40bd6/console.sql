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
    FROM KCSystemV02.dbo.BatchCatalog BC
             INNER JOIN ddoccontrol.trx.Batches B ON BC.BatchName = B.BatchName COLLATE DATABASE_DEFAULT
    WHERE ProcessID = 14999
      AND State = 128

EXEC ddoccontrol.trx.FinalAuditGetCandidates

SELECT *
    FROM ddoccontrol.trx.FinalAudits
    WHERE Id = 95

SELECT UniqueID
     , PDFGeneration
     , PDFGenerationFileType
     , PDFGenerationFileName
     , BatchName
    FROM KCSystemV02.dbo.BatchDocument A
             INNER JOIN KCSystemV02.dbo.BatchCatalog B ON A.BatchID = B.ExternalBatchID
    WHERE ProcessID = 14999
      AND State = 128

UPDATE KCSystemV02.dbo.BatchDocument
SET PDFGenerationFileName = '\\\Srvsony\sonymusic\REGALIAS\Imagenes\000000ED.pdf\0001.pdf', PDFGeneration = 1, PDFGenerationFileType = 1009
WHERE UniqueID = 47326