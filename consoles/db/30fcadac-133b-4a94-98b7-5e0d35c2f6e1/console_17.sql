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
     , ODS
     , COUNT(*)     AS DOCUMENTOS
    FROM NADRO.dbo.Datos_Escrituras
    GROUP BY Migrado, ODS

UPDATE NADRO.dbo.Datos_Escrituras
SET Migrado = NULL
    WHERE Migrado = 0

SELECT *
    FROM NADRO.dbo.Datos_Contratos
    WHERE ODS = 'NADRO'
      AND Migrado IS NULL

SELECT *
    FROM NADRO.dbo.Datos_Escrituras

UPDATE NADRO.dbo.Datos_Escrituras
SET Migrado     = NULL
  , GID         = NULL
  , PaginasDdoc = NULL
    WHERE ODS = 'NADRO'
      AND Migrado = 0

SELECT *
    FROM NADRO.dbo.Datos_Arrendamiento
WHERE Migrado = 1