SELECT facultad          AS CARPETA1
     , documentacionPert AS CARPETA2
     , llave             AS CARPETA3
     , ''                AS ARCHIVO
     , Paginas
     , A.DID
     , Path
    FROM UNAM_Bibliotecas.dbo.DatosLibrosPDF A
             INNER JOIN UNAM_Bibliotecas.dbo.DocumentosLibrosPDF B ON A.DID = B.DID
    WHERE BatchName IN ('UNAM-BIBLIOTECAS - CONCLUSIONES DEL PRIMER CONGRESO NACIONAL DE PUEBLOS INDIGENAS PUIC_C2',
                        'UNAM-BIBLIOTECAS - FARMACOPEA LATINO-AMERICANA PUIC_C1',
                        'UNAM-BIBLIOTECAS - LA OFICINA DE FARMACIA O REPERTORIO UNIVERSAL DE FARMACIA PRACTICA PUIC_C2',
                        'UNAM-BIBLIOTECAS - LA POBLACION DEL VALLE DE TEOTIHUACAN TOMO I PUIC_C1',
                        'UNAM-BIBLIOTECAS - NUEVA FARMACOPEA MEXICANA DE LA SOCIEDAD FARMACEUTICA DE MEXICO 1874 PUIC_C2',
                        'UNAM-BIBLIOTECAS - REVUE DU MONDE CATHOLIQUE VOL 20 1898_C14',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 01',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 02',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 03')

SELECT facultad
     , documentacionPert
     , llave
     , 'Archivo' AS Archivo
     , clasificacion
     , Matriz
     , ADQ
     , titulo
     , año
     , Paginas
    FROM UNAM_Bibliotecas.dbo.DatosLibrosPDF A
             INNER JOIN UNAM_Bibliotecas.dbo.DocumentosLibrosPDF B
                        ON A.DID = B.DID
    WHERE migrado IS NULL

SELECT migrado, FechaProcesado, COUNT(*), SUM(Paginas)
    FROM UNAM_Bibliotecas.dbo.DatosLibrosPDF
    GROUP BY migrado, FechaProcesado
    ORDER BY CONVERT(DATE, FechaProcesado, 103) DESC

SELECT facultad
     , documentacionPert
     , REPLACE(Clasificación, '/', '-')     AS Clasificación
     , REPLACE(clasificacionArch, '/', '-') AS clasificacionArch
     , REPLACE(Ubicación, '/', '-')         AS Ubicación
     , REPLACE(Título, '/', '-')            AS Título
     , Fecha
     , Observaciones
     , Paginas
     , A.DID
     , SUBSTRING(Path, 63, 100)             AS PATH
    FROM UNAM_Bibliotecas.dbo.DatosClasificacionArchPDF A
             INNER JOIN UNAM_Bibliotecas.dbo.DocumentosClasificacionArchPDF B ON A.DID = B.DID
    WHERE BatchName IN ('UNAM-BIBLIOTECAS - CONCLUSIONES DEL PRIMER CONGRESO NACIONAL DE PUEBLOS INDIGENAS PUIC_C2',
                        'UNAM-BIBLIOTECAS - FARMACOPEA LATINO-AMERICANA PUIC_C1',
                        'UNAM-BIBLIOTECAS - LA OFICINA DE FARMACIA O REPERTORIO UNIVERSAL DE FARMACIA PRACTICA PUIC_C2',
                        'UNAM-BIBLIOTECAS - LA POBLACION DEL VALLE DE TEOTIHUACAN TOMO I PUIC_C1',
                        'UNAM-BIBLIOTECAS - NUEVA FARMACOPEA MEXICANA DE LA SOCIEDAD FARMACEUTICA DE MEXICO 1874 PUIC_C2',
                        'UNAM-BIBLIOTECAS - REVUE DU MONDE CATHOLIQUE VOL 20 1898_C14',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 01',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 02',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 03')

SELECT A.Fecha
, B.Fecha
    FROM UNAM_Bibliotecas.dbo.cat_Archivo A
             INNER JOIN UNAM_Bibliotecas.dbo.DatosClasificacionArchPDF B ON A.Clasificación = B.Clasificación
    WHERE BatchName IN ('UNAM-BIBLIOTECAS - CONCLUSIONES DEL PRIMER CONGRESO NACIONAL DE PUEBLOS INDIGENAS PUIC_C2',
                        'UNAM-BIBLIOTECAS - FARMACOPEA LATINO-AMERICANA PUIC_C1',
                        'UNAM-BIBLIOTECAS - LA OFICINA DE FARMACIA O REPERTORIO UNIVERSAL DE FARMACIA PRACTICA PUIC_C2',
                        'UNAM-BIBLIOTECAS - LA POBLACION DEL VALLE DE TEOTIHUACAN TOMO I PUIC_C1',
                        'UNAM-BIBLIOTECAS - NUEVA FARMACOPEA MEXICANA DE LA SOCIEDAD FARMACEUTICA DE MEXICO 1874 PUIC_C2',
                        'UNAM-BIBLIOTECAS - REVUE DU MONDE CATHOLIQUE VOL 20 1898_C14',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 01',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 02',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 03')