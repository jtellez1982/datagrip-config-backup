SELECT c.GID
     , C33                                  AS 'Tipo de Documento'
     , C70                                  AS 'No. de Factura'
     , C71                                  AS 'No. de Folio'
     , C72                                  AS 'Área'
     , C87                                  AS 'Etiqueta'
     , C150                                 AS 'Fecha de Factura'
     , C159                                 AS 'Orden SAP'
     , CONVERT(DATE, A.FECHA_CREACION, 103) AS FECHA_CREACION
     , COUNT(*)                             AS Documentos
    FROM G_CAMPOS_01C0000009 c
             INNER JOIN ddoc_PG.dbo.G_DOCUMENTOS A ON c.GID = A.GID
             INNER JOIN G_PAGINAS B ON A.GID = GID_DOCUMENTO
    WHERE CONVERT(DATE, A.FECHA_CREACION, 103) BETWEEN '2024-10-01' AND '2024-10-31'
    GROUP BY c.GID, C33, C70, C71, C72, C87, C150, C159, CONVERT(DATE, A.FECHA_CREACION, 103)

SELECT TOP (1)*
    FROM G_DOCUMENTOS

UPDATE G_DOCUMENTOS
SET COMMITED = 1
    WHERE COMMITED = 0
       OR COMMITED IS NULL

SELECT name, log_reuse_wait_desc
    FROM sys.DATABASES
    WHERE name = 'ddoc_PG';

DECLARE @batchSize INT = 1000;
WHILE (1 = 1)
    BEGIN
        UPDATE TOP (@batchSize) G_DOCUMENTOS
        SET COMMITED = 1
            WHERE COMMITED = 0
               OR COMMITED IS NULL;

        IF @@ROWCOUNT = 0 BREAK; -- Salir del bucle cuando no haya más filas para actualizar

        CHECKPOINT; -- Opcionalmente, forzar un vaciado del registro entre lotes para reducir el uso del registro
    END

SELECT TOP (1)*
    FROM G_PAGINAS
SELECT TOP (1)*
    FROM G_DOCUMENTOS
    ORDER BY CONVERT(DATETIME, FECHA_CREACION, 103) DESC

DECLARE @batchSize INT = 1000;
DECLARE @rowsAffected INT = 1;

WHILE (@rowsAffected > 0)
    BEGIN
        BEGIN TRANSACTION;

        UPDATE TOP (@batchSize) GP
        SET IMAGENES = GD.PAGINAS
            FROM G_PAGINAS GP
                     INNER JOIN G_DOCUMENTOS GD ON GP.GID_DOCUMENTO = GD.GID
            WHERE GP.IMAGENES IS NULL; -- O cualquier otra condición que limite el número de filas

        SET @rowsAffected = @@ROWCOUNT;

        COMMIT TRANSACTION;

        -- Esto ayuda a forzar el vaciado del registro de transacciones entre cada lote
        CHECKPOINT;
    END;

SELECT *
    FROM G_CAMPOS_01C0000009
    WHERE GID IN (SELECT GID_DOCUMENTO
                      FROM ddoc_PG.dbo.G_PAGINAS
                      WHERE GID IN ('01P00JJSOP',
                                    '01P00JJSOQ',
                                    '01P00JJSOR'))