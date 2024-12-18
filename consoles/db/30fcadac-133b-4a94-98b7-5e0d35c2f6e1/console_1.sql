SELECT 'contratos' AS tipo
     , Migrado
     , ODS
     , COUNT(*)    AS DOCUMENTOS
    FROM NADRO.dbo.Datos_Contratos
    GROUP BY Migrado, ODS
UNION
SELECT 'arrendamiento' AS tipo
     , Migrado
     , ODS
     , COUNT(*)        AS DOCUMENTOS
    FROM NADRO.dbo.Datos_Arrendamiento
    GROUP BY Migrado, ODS
UNION
SELECT 'escrituras' AS tipo
     , Migrado
     , 'ODS'
     , COUNT(*)     AS DOCUMENTOS
    FROM NADRO.dbo.Datos_Escrituras
    GROUP BY Migrado, FechaProcesado

SELECT 'contratos' AS tipo
     , Migrado
     , FechaProcesado
     , COUNT(*)    AS DOCUMENTOS
    FROM NADRO.dbo.Datos_Contratos
    GROUP BY Migrado, FechaProcesado
UNION
SELECT 'arrendamiento' AS tipo
     , Migrado
     , FechaProcesado
     , COUNT(*)        AS DOCUMENTOS
    FROM NADRO.dbo.Datos_Arrendamiento
    GROUP BY Migrado, FechaProcesado
UNION
SELECT 'escrituras' AS tipo
     , Migrado
     , FechaProcesado
     , COUNT(*)     AS DOCUMENTOS
    FROM NADRO.dbo.Datos_Escrituras
    GROUP BY Migrado, FechaProcesado