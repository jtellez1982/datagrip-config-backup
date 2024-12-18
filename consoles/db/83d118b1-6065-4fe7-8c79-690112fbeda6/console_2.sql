SELECT count(*) AS documentos, SUM(Paginas) AS Páginas
    FROM BestDay.dbo.DatosBestDay BD
             INNER JOIN BestDay.dbo.Documentos D ON BD.DID = D.DID
    WHERE Migrado = 1

SELECT count(*) AS documentos, SUM(Paginas) AS Páginas
    FROM BestDay.dbo.DatosBestDay BD
             INNER JOIN BestDay.dbo.Documentos D ON BD.DID = D.DID
    WHERE Migrado IS NULL

SELECT Path
    FROM BestDay.dbo.DatosBestDay BD
             INNER JOIN BestDay.dbo.Documentos D ON BD.DID = D.DID
    WHERE Migrado IS NULL 

SELECT * FROM RAFSEC.dbo.datos DA
         INNER JOIN RAFSEC.dbo.Documentos D ON DA.DID = D.DID
WHERE DA.DID = 744671