SELECT *
    FROM NADRO.dbo.Datos_Arrendamiento
    WHERE Migrado IS NULL

UPDATE NADRO.dbo.Datos_Arrendamiento
SET Migrado     = 1
  , GID         = NULL
  , PaginasDdoc = NULL

UPDATE TOP (251) NADRO.dbo.Datos_Arrendamiento
SET Migrado     = NULL
  , GID         = NULL
  , PaginasDdoc = NULL
    WHERE Migrado = 0

UPDATE NADRO.dbo.Datos_Arrendamiento
SET finvigenciaddoc = CONVERT(DATE, FinVigencia, 103)
    WHERE TRY_CONVERT(DATE, FinVigencia, 103) IS NOT NULL;

SELECT LEN(Subarrendamiento)
    FROM NADRO.dbo.Datos_Arrendamiento

SELECT *
    FROM NADRO.dbo.Datos_Arrendamiento