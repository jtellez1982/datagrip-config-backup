SELECT facultad,
       documentacionPert,
       Clasificación,
       clasificacionArch,
       Ubicación,
       Título,
       Fecha,
       Observaciones,
       Paginas,
       A.DID,
       SUBSTRING(Path,63,9) AS PATH
FROM UNAM_Bibliotecas.dbo.DatosClasificacionArchPDF A
INNER JOIN UNAM_Bibliotecas.dbo.DocumentosClasificacionArchPDF B ON A.DID = B.DID
WHERE A.DID IN (
                704750,
                698924,
                700160,
                683920,
                697341
    )

SELECT * FROM UNAM_Bibliotecas.dbo.DatosClasificacionArchPDF
         WHERE DID IN (
                         704750,
                         698924,
                         700160,
                         683920,
                         697341
             )

UPDATE A
SET A.Clasificación = B.Clasificación,
    A.Ubicación = B.Ubicación,
    A.Título = B.Título,
    A.Fecha = B.Fecha,
    A.Observaciones = B.Observaciones
FROM UNAM_Bibliotecas.dbo.DatosClasificacionArchPDF A
INNER JOIN UNAM_Bibliotecas.dbo.cat_Archivo B ON A.clasificacionArch = B.Clasificación
WHERE A.Título IS NULL