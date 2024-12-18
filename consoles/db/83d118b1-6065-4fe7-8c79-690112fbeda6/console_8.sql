SELECT 'ARCHIVO'    AS TipoDocumento
     , FechaProcesado
     , COUNT(*)     AS Documentos
     , SUM(Paginas) AS Paginas
    FROM UNAM_Bibliotecas.dbo.DatosClasificacionArchPDF
    WHERE FechaProcesado LIKE '%2024%'
    GROUP BY FechaProcesado

UNION

SELECT 'FOLLETOS'   AS TipoDocumento
     , FechaProcesado
     , COUNT(*)     AS Documentos
     , SUM(Paginas) AS Paginas
    FROM UNAM_Bibliotecas.dbo.DatosFolletosPDF
    WHERE FechaProcesado LIKE '%2024%'
    GROUP BY FechaProcesado

UNION

SELECT 'LIBROS'     AS TipoDocumento
     , FechaProcesado
     , COUNT(*)     AS Documentos
     , SUM(Paginas) AS Paginas
    FROM UNAM_Bibliotecas.dbo.DatosLibrosPDF
    WHERE FechaProcesado LIKE '%2024%'
    GROUP BY FechaProcesado

UNION

SELECT 'MANUSCRITOS' AS TipoDocumento
     , FechaProcesado
     , COUNT(*)      AS Documentos
     , SUM(Paginas)  AS Paginas
    FROM UNAM_Bibliotecas.dbo.DatosManuscritosPDF
    WHERE FechaProcesado LIKE '%2024%'
    GROUP BY FechaProcesado

UNION

SELECT 'ARTICULOS'  AS TipoDocumento
     , FechaProcesado
     , COUNT(*)     AS Documentos
     , SUM(Paginas) AS Paginas
    FROM UNAM_Bibliotecas.dbo.DatosRevistasCarpetaArticulos
    WHERE FechaProcesado LIKE '%2024%'
    GROUP BY FechaProcesado

UNION

SELECT 'SOBRANTES'  AS TipoDocumento
     , FechaProcesado
     , COUNT(*)     AS Documentos
     , SUM(Paginas) AS Paginas
    FROM UNAM_Bibliotecas.dbo.DatosRevistasCarpetaSobrantes
    WHERE FechaProcesado LIKE '%2024%'
    GROUP BY FechaProcesado

UNION

SELECT 'TESIS'      AS TipoDocumento
     , FechaProcesado
     , COUNT(*)     AS Documentos
     , SUM(Paginas) AS Paginas
    FROM UNAM_Bibliotecas.dbo.DatosTesisPDF
    WHERE FechaProcesado LIKE '%2024%'
    GROUP BY FechaProcesado
ORDER BY TipoDocumento, FechaProcesado;

SELECT * FROM ddoc_Control.trx.Batches
WHERE BatchName LIKE '%LA CULTURA Y EL HOMBRE%'

SELECT * FROM ddoc_Control.trx.AuditContents
WHERE BatchId = 47021