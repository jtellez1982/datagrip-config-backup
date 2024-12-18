SELECT FechaProcesado
     , COUNT(*)     AS Documentos
     , SUM(Paginas) AS Páginas
    FROM Peninsular.dbo.Datos_PolizasContables
    WHERE FechaProcesado LIKE '%2024%'
    GROUP BY FechaProcesado
    ORDER BY CONVERT(DATE, FechaProcesado, 103) ASC