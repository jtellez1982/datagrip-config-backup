SELECT 'CONTRATOS GRFP'                              AS TIPO
     , CONVERT(DATE, FechaProcesado, 103) AS FechaProcesado
     , COUNT(*)                           AS DOCUMENTOS
     , SUM(Paginas)                       AS PAGINAS
    FROM NADRO.dbo.Datos_Contratos
    WHERE ODS = 'GRFP'
    GROUP BY CONVERT(DATE, FechaProcesado, 103)
UNION
SELECT 'CONTRATOS NADRO'                        AS TIPO
     , CONVERT(DATE, FechaProcesado, 103) AS FechaProcesado
     , COUNT(*)                           AS DOCUMENTOS
     , SUM(Paginas)                       AS PAGINAS
    FROM NADRO.dbo.Datos_Contratos
    WHERE ODS = 'NADRO'
    GROUP BY CONVERT(DATE, FechaProcesado, 103)
UNION
SELECT 'ARRENDAMIENTOS GRFP'                   AS TIPO
     , CONVERT(DATE, FechaProcesado, 103) AS FechaProcesado
     , COUNT(*)                           AS DOCUMENTOS
     , SUM(PAGINAS)                        AS PAGINAS
    FROM NADRO.dbo.Datos_Arrendamiento
    GROUP BY CONVERT(DATE, FechaProcesado, 103)
UNION
SELECT 'ESCRITURAS INDEXACION' AS TIPO
     , CONVERT(DATE, FechaProcesado, 103) AS FechaProcesado
     , COUNT(*)     AS DOCUMENTOS
     , SUM(Paginas) AS PAGINAS
    FROM NADRO.dbo.Datos_Escrituras
    WHERE ODS = 'NADRO'
    GROUP BY CONVERT(DATE, FechaProcesado, 103)
UNION
SELECT 'ESCRITURAS DIGITALIZACION' AS TIPO
     , CONVERT(DATE, FechaProcesado, 103) AS FechaProcesado
     , COUNT(*)     AS DOCUMENTOS
     , SUM(Paginas) AS PAGINAS
    FROM NADRO.dbo.Datos_Escrituras
    WHERE ODS = 'GRFP'
    GROUP BY CONVERT(DATE, FechaProcesado, 103)