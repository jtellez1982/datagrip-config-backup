SELECT * FROM NADRO.dbo.Datos_Escrituras
WHERE Migrado = 0

UPDATE NADRO.dbo.Datos_Escrituras
SET Migrado = 1, GID = NULL, PaginasDdoc = NULL

UPDATE  NADRO.dbo.Datos_Escrituras
SET Migrado = NULL, GID = NULL, PaginasDdoc = NULL
WHERE Migrado = 0

UPDATE NADRO.dbo.Datos_Escrituras
SET Fechaddoc = CONVERT(DATE, Fecha, 103)
    WHERE TRY_CONVERT(DATE, Fecha, 103) IS NOT NULL;

UPDATE NADRO.dbo.Datos_Escrituras
SET fechadocumentoddoc = CONVERT(DATE, FechaDocumentoAdicional, 103)
    WHERE TRY_CONVERT(DATE, FechaDocumentoAdicional, 103) IS NOT NULL;


SELECT *
    FROM NADRO.dbo.Datos_Escrituras
    WHERE TRY_CONVERT(DATE, Fecha, 23) IS NULL
       OR TRY_CONVERT(DATE, FechaDocumentoAdicional, 23) IS NULL;
