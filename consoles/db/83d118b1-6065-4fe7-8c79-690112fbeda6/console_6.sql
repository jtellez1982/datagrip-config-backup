SELECT facultad
     , documentacionPert
     , tesis
     , ''    AS ARCHIVO
     , Autor
     , Titulo
     , Paginas
     , A.DID
     , 'PDF' AS PDFoTIFF
     , Path
    FROM UNAM_Bibliotecas.dbo.DatosTesisPDF A
             INNER JOIN UNAM_Bibliotecas.dbo.DocumentosTesisPDF B ON A.DID = B.DID
    WHERE migrado IS NULL

SELECT *
    FROM BestDay.dbo.DatosBestDay
    WHERE DID = 676054

SELECT *
    FROM BestDay.dbo.Documentos
    WHERE DID = 676054

SELECT facultad
     , documentacionPert
     , tesis
     , ''    AS ARCHIVO
     , Autor
     , Titulo
     , Paginas
     , A.DID
     , 'PDF' AS PDFoTIFF
     , Path
    FROM UNAM_Bibliotecas.dbo.DatosTesisPDF A
             INNER JOIN UNAM_Bibliotecas.dbo.DocumentosTesisPDF B ON A.DID = B.DID
    WHERE migrado IS NULL AND Paginas IS NOT NULL

SELECT migrado, FechaProcesado, COUNT(*), SUM(Paginas)
    FROM UNAM_Bibliotecas.dbo.DatosTesisPDF
    WHERE migrado IS NULL
    GROUP BY migrado, FechaProcesado
    ORDER BY CONVERT(DATE, FechaProcesado, 103) DESC

SELECT * FROM UNAM_Bibliotecas.dbo.cat_Tesis --SISTEMA
SELECT * FROM UNAM_Bibliotecas.dbo.DatosTesisPDF --TESIS

UPDATE A
SET A.FACULTAD = 'FE',
    A.documentacionPert = 'TESIS',
    A.Autor = B.Autor,
    A.Titulo = B.Titulo,
    A.año = B.Año,
    A.Caja = B.NoCaja
FROM UNAM_Bibliotecas.dbo.DatosTesisPDF A
INNER JOIN UNAM_Bibliotecas.dbo.cat_Tesis B ON A.tesis = B.Sistema
WHERE migrado IS NULL AND Paginas IS NOT NULL

SELECT facultad
     , documentacionPert
     , tesis
     , ''    AS ARCHIVO
     , Autor
     , Titulo
     , Paginas
    FROM UNAM_Bibliotecas.dbo.DatosTesisPDF A
             INNER JOIN UNAM_Bibliotecas.dbo.DocumentosTesisPDF B ON A.DID = B.DID
    WHERE migrado IS NULL AND Paginas IS NOT NULL