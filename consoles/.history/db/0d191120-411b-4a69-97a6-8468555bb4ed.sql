SELECT * FROM G_CAMPOS_01C0000006_130824
;-- -. . -..- - / . -. - .-. -.--
UPDATE tu_tabla
SET c32 = RIGHT('00000' + SUBSTRING(c6, CHARINDEX('-', c6, CHARINDEX('-', c6, CHARINDEX('-', c6) + 1) + 1) + 1, CHARINDEX('-', c6, CHARINDEX('-', c6, CHARINDEX('-', c6, CHARINDEX('-', c6) + 1) + 1) + 1) - CHARINDEX('-', c6, CHARINDEX('-', c6, CHARINDEX('-', c6) + 1) + 1) - 1), 5)
WHERE c6 LIKE '%-%-%-%'
AND C32 IS NULL
;-- -. . -..- - / . -. - .-. -.--
UPDATE G_CAMPOS_01C0000004
SET c32 = RIGHT('00000' + SUBSTRING(c6, CHARINDEX('-', c6, CHARINDEX('-', c6, CHARINDEX('-', c6) + 1) + 1) + 1, CHARINDEX('-', c6, CHARINDEX('-', c6, CHARINDEX('-', c6, CHARINDEX('-', c6) + 1) + 1) + 1) - CHARINDEX('-', c6, CHARINDEX('-', c6, CHARINDEX('-', c6) + 1) + 1) - 1), 5)
WHERE c6 LIKE '%-%-%-%'
AND C32 IS NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT
    c6,
    RIGHT('00000' + SUBSTRING(
        c6,
        CHARINDEX('-', c6, CHARINDEX('-', c6, CHARINDEX('-', c6) + 1) + 1) + 1,
        CHARINDEX('-', c6, CHARINDEX('-', c6, CHARINDEX('-', c6, CHARINDEX('-', c6) + 1) + 1) + 1) -
        CHARINDEX('-', c6, CHARINDEX('-', c6, CHARINDEX('-', c6) + 1) + 1) - 1
    ), 5) AS simulated_c32
FROM G_CAMPOS_01C0000004
WHERE c6 LIKE '%-%-%-%'
AND c32 IS NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT C6
     , CASE
           WHEN CHARINDEX('-', C6) > 0
               AND CHARINDEX('-', C6, CHARINDEX('-', C6) + 1) > 0
               AND CHARINDEX('-', C6, CHARINDEX('-', C6, CHARINDEX('-', C6) + 1) + 1) > 0
               THEN RIGHT('00000' + SUBSTRING(
                   C6,
                   CHARINDEX('-', C6, CHARINDEX('-', C6, CHARINDEX('-', C6) + 1) + 1) + 1,
                   CHARINDEX('-', C6, CHARINDEX('-', C6, CHARINDEX('-', C6, CHARINDEX('-', C6) + 1) + 1) + 1) -
                   CHARINDEX('-', C6, CHARINDEX('-', C6, CHARINDEX('-', C6) + 1) + 1) - 1
                                    ), 5)
           ELSE NULL
    END AS simulated_c32
    FROM G_CAMPOS_01C0000004
    WHERE C6 LIKE '%-%-%-%'
      AND C32 IS NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT C6
     , CASE
           WHEN LEN(C6) - LEN(REPLACE(C6, '-', '')) >= 3 THEN
               RIGHT('00000' + SUBSTRING(
                       C6,
                       CHARINDEX('-', C6, CHARINDEX('-', C6, CHARINDEX('-', C6) + 1) + 1) + 1,
                       CHARINDEX('-', C6 + '-',
                                 CHARINDEX('-', C6, CHARINDEX('-', C6, CHARINDEX('-', C6) + 1) + 1) + 1) -
                       CHARINDEX('-', C6, CHARINDEX('-', C6, CHARINDEX('-', C6) + 1) + 1) - 1
                               ), 5)
           ELSE NULL
    END AS simulated_c32
    FROM G_CAMPOS_01C0000004
    WHERE C6 LIKE '%-%-%-%'
      AND C32 IS NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT C6
     -- Extraemos el tercer segmento y aseguramos que tenga la longitud correcta
     , CASE
           WHEN LEN(C6) - LEN(REPLACE(C6, '-', '')) >= 3 THEN
               SUBSTRING(
                       C6,
                       CHARINDEX('-', C6, CHARINDEX('-', C6) + 1) + 1,
                       CHARINDEX('-', C6 + '-', CHARINDEX('-', C6, CHARINDEX('-', C6) + 1) + 1) -
                       CHARINDEX('-', C6, CHARINDEX('-', C6) + 1) - 1
               )
           ELSE NULL
    END AS simulated_c32
    FROM G_CAMPOS_01C0000004
    WHERE C6 LIKE '%-%-%-%'
      AND C32 IS NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT
    c6,
    CASE
        WHEN LEN(c6) - LEN(REPLACE(c6, '-', '')) >= 3 THEN
            RIGHT('00000' +
                SUBSTRING(
                    c6,
                    CHARINDEX('-', c6, CHARINDEX('-', c6, CHARINDEX('-', c6) + 1) + 1) + 1,
                    CHARINDEX('-', c6 + '-', CHARINDEX('-', c6, CHARINDEX('-', c6, CHARINDEX('-', c6) + 1) + 1) + 1) -
                    CHARINDEX('-', c6, CHARINDEX('-', c6, CHARINDEX('-', c6) + 1) + 1) - 1
                ),
            5)
        ELSE NULL
    END AS simulated_c32
FROM G_CAMPOS_01C0000004
WHERE c6 LIKE '%-%-%-%'
AND c32 IS NULL
;-- -. . -..- - / . -. - .-. -.--
WITH Guiones AS (SELECT C6
                      , CHARINDEX('-', C6)                                                 AS FirstDash
                      , CHARINDEX('-', C6, CHARINDEX('-', C6) + 1)                         AS SecondDash
                      , CHARINDEX('-', C6, CHARINDEX('-', C6, CHARINDEX('-', C6) + 1) + 1) AS ThirdDash
                     FROM G_CAMPOS_01C0000004
                     WHERE C6 LIKE '%-%-%-%'
                       AND C32 IS NULL)
SELECT C6
     , CASE
           WHEN FirstDash > 0 AND SecondDash > 0 AND ThirdDash > 0 THEN
               RIGHT('00000' +
                     SUBSTRING(
                             C6,
                             ThirdDash + 1,
                             CHARINDEX('-', C6 + '-', ThirdDash + 1) - ThirdDash - 1
                     ),
                     5)
           ELSE NULL
    END AS simulated_c32
    FROM Guiones
;-- -. . -..- - / . -. - .-. -.--
SELECT
    c6,
    RIGHT('00000' +
        SUBSTRING(
            c6,
            CHARINDEX('-', c6, CHARINDEX('-', c6, CHARINDEX('-', c6) + 1) + 1) + 1,
            CHARINDEX(
                '-', c6 + '-', CHARINDEX('-', c6, CHARINDEX('-', c6, CHARINDEX('-', c6) + 1) + 1) + 1
            ) -
            CHARINDEX('-', c6, CHARINDEX('-', c6, CHARINDEX('-', c6) + 1) + 1) - 1
        ),
    5)
    AS simulated_c32
FROM G_CAMPOS_01C0000004
WHERE c6 LIKE '%-%-%-%'
AND c32 IS NULL
;-- -. . -..- - / . -. - .-. -.--
WITH ExtractIndices AS (
    SELECT
        c6,
        CHARINDEX('-', c6) AS FirstDash,
        CHARINDEX('-', c6, CHARINDEX('-', c6) + 1) AS SecondDash,
        CHARINDEX('-', c6, CHARINDEX('-', c6, CHARINDEX('-', c6) + 1) + 1) AS ThirdDash
    FROM G_CAMPOS_01C0000004
    WHERE c6 LIKE '%-%-%-%'
    AND c32 IS NULL
),
ExtractValue AS (
    SELECT
        c6,
        SUBSTRING(c6,
                  ThirdDash + 1,
                  CHARINDEX('-', c6 + '-', ThirdDash + 1) - ThirdDash - 1
        ) AS Value
    FROM ExtractIndices
)
SELECT
    c6,
    RIGHT('00000' + Value, 5) AS simulated_c32
FROM ExtractValue
;-- -. . -..- - / . -. - .-. -.--
WITH ExtractIndices AS (
    SELECT
        c6,
        CHARINDEX('-', c6) AS FirstDash,
        CHARINDEX('-', c6, CHARINDEX('-', c6) + 1) AS SecondDash,
        CHARINDEX('-', c6, CHARINDEX('-', c6, CHARINDEX('-', c6) + 1) + 1) AS ThirdDash
    FROM G_CAMPOS_01C0000004
    WHERE c6 LIKE '%-%-%-%'
    AND c32 IS NULL
),
ExtractValue AS (
    SELECT
        c6,
        SUBSTRING(c6,
                  SecondDash + 1,
                  ThirdDash - SecondDash - 1
        ) AS Value
    FROM ExtractIndices
)
SELECT
    c6,
    RIGHT('00000' + Value, 5) AS simulated_c32
FROM ExtractValue
;-- -. . -..- - / . -. - .-. -.--
WITH ExtractIndices AS (
    SELECT
        c6,
        CHARINDEX('-', c6) AS FirstDash,
        CHARINDEX('-', c6, CHARINDEX('-', c6) + 1) AS SecondDash,
        CHARINDEX('-', c6, CHARINDEX('-', c6, CHARINDEX('-', c6) + 1) + 1) AS ThirdDash
    FROM G_CAMPOS_01C0000004
    WHERE c6 LIKE '%-%-%-%'
    AND c32 IS NULL
),
ExtractValue AS (
    SELECT
        c6,
        SUBSTRING(c6,
                  SecondDash + 1,
                  ThirdDash - SecondDash - 1
        ) AS Value
    FROM ExtractIndices
)
UPDATE G_CAMPOS_01C0000004
SET c32 = RIGHT('00000' + Value, 5)
FROM ExtractValue
WHERE G_CAMPOS_01C0000004.c6 = ExtractValue.c6
;-- -. . -..- - / . -. - .-. -.--
WITH ExtractIndices AS (
    SELECT
        C10,
        CHARINDEX('-', C10) AS FirstDash,
        CHARINDEX('-', C10, CHARINDEX('-', C10) + 1) AS SecondDash,
        CHARINDEX('-', C10, CHARINDEX('-', C10, CHARINDEX('-', C10) + 1) + 1) AS ThirdDash
    FROM G_CAMPOS_01C0000005
    WHERE C10 LIKE '%-%-%-%'
    AND C33 IS NULL
),
ExtractValue AS (
    SELECT
        C10,
        SUBSTRING(C10,
                  SecondDash + 1,
                  ThirdDash - SecondDash - 1
        ) AS Value
    FROM ExtractIndices
)
UPDATE G_CAMPOS_01C0000005
SET C33 = RIGHT('00000' + Value, 5)
FROM ExtractValue
WHERE G_CAMPOS_01C0000005.C10 = ExtractValue.C10
;-- -. . -..- - / . -. - .-. -.--
WITH ExtractIndices AS (
    SELECT
        C14,
        CHARINDEX('-', C14) AS FirstDash,
        CHARINDEX('-', C14, CHARINDEX('-', C14) + 1) AS SecondDash,
        CHARINDEX('-', C14, CHARINDEX('-', C14, CHARINDEX('-', C14) + 1) + 1) AS ThirdDash
    FROM G_CAMPOS_01C0000006
    WHERE C14 LIKE '%-%-%-%'
    AND C34 IS NULL
),
ExtractValue AS (
    SELECT
        C14,
        SUBSTRING(C14,
                  SecondDash + 1,
                  ThirdDash - SecondDash - 1
        ) AS Value
    FROM ExtractIndices
)
UPDATE G_CAMPOS_01C0000006
SET C34 = RIGHT('00000' + Value, 5)
FROM ExtractValue
WHERE G_CAMPOS_01C0000006.C14 = ExtractValue.C14
;-- -. . -..- - / . -. - .-. -.--
CREATE TRIGGER trg_Orden_C32
ON G_CAMPOS_01C0000004
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    ;WITH ExtractIndices AS (
        SELECT
            c6,
            CHARINDEX('-', c6) AS FirstDash,
            CHARINDEX('-', c6, CHARINDEX('-', c6) + 1) AS SecondDash,
            CHARINDEX('-', c6, CHARINDEX('-', c6, CHARINDEX('-', c6) + 1) + 1) AS ThirdDash,
            inserted.c32
        FROM inserted
        WHERE c6 LIKE '%-%-%-%'
        AND inserted.c32 IS NULL
    ),
    ExtractValue AS (
        SELECT
            c6,
            SUBSTRING(c6,
                      SecondDash + 1,
                      ThirdDash - SecondDash - 1
            ) AS Value,
            c32
        FROM ExtractIndices
    )
    UPDATE G_CAMPOS_01C0000004
    SET c32 = RIGHT('00000' + ExtractValue.Value, 5)
    FROM ExtractValue
    WHERE G_CAMPOS_01C0000004.c6 = ExtractValue.c6;
END;
;-- -. . -..- - / . -. - .-. -.--
CREATE TRIGGER trg_update_c32
ON G_CAMPOS_01C0000004
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    ;WITH ToUpdate AS (
        SELECT
            i.c6,
            i.c32,
            CHARINDEX('-', i.c6) AS FirstDash,
            CHARINDEX('-', i.c6, CHARINDEX('-', i.c6) + 1) AS SecondDash,
            CHARINDEX('-', i.c6, CHARINDEX('-', i.c6, CHARINDEX('-', i.c6) + 1) + 1) AS ThirdDash
        FROM inserted i
        LEFT JOIN deleted d ON i.c6 = d.c6 AND i.c32= d.c32
        -- Consider rows where c32 is NULL after insertion or when c6 has been updated
        WHERE (i.c32 IS NULL)
        AND (d.c6 IS NULL OR i.c6 <> d.c6) -- Update only if c6 was updated or it's a new insert
        AND i.c6 LIKE '%-%-%-%' -- Ensure it matches the pattern
    ),
    ExtractValue AS (
        SELECT
            c6,
            SUBSTRING(c6,
                      SecondDash + 1,
                      ThirdDash - SecondDash - 1
            ) AS Value
        FROM ToUpdate
    )
    UPDATE G_CAMPOS_01C0000004
    SET c32 = RIGHT('00000' + ExtractValue.Value, 5)
    FROM ExtractValue
    WHERE G_CAMPOS_01C0000004.c6 = ExtractValue.c6;
END;
;-- -. . -..- - / . -. - .-. -.--
CREATE TRIGGER trg_update_C33
ON G_CAMPOS_01C0000005
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    ;WITH ToUpdate AS (
        SELECT
            i.C10,
            i.C33,
            CHARINDEX('-', i.C10) AS FirstDash,
            CHARINDEX('-', i.C10, CHARINDEX('-', i.C10) + 1) AS SecondDash,
            CHARINDEX('-', i.C10, CHARINDEX('-', i.C10, CHARINDEX('-', i.C10) + 1) + 1) AS ThirdDash
        FROM inserted i
        LEFT JOIN deleted d ON i.C10 = d.C10 AND i.C33 = d.C33
        -- Consider rows where C33 is NULL after insertion or when C10 has been updated
        WHERE (i.C33 IS NULL)
        AND (d.C10 IS NULL OR i.C10 <> d.C10) -- Update only if C10 was updated or it's a new insert
        AND i.C10 LIKE '%-%-%-%' -- Ensure it matches the pattern
    ),
    ExtractValue AS (
        SELECT
            C10,
            SUBSTRING(C10,
                      SecondDash + 1,
                      ThirdDash - SecondDash - 1
            ) AS Value
        FROM ToUpdate
    )
    UPDATE G_CAMPOS_01C0000005
    SET C33 = RIGHT('00000' + ExtractValue.Value, 5)
    FROM ExtractValue
    WHERE G_CAMPOS_01C0000005.C10 = ExtractValue.C10;
END;
;-- -. . -..- - / . -. - .-. -.--
CREATE TRIGGER trg_update_C34
ON G_CAMPOS_01C0000006
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    ;WITH ToUpdate AS (
        SELECT
            i.C14,
            i.C34,
            CHARINDEX('-', i.C14) AS FirstDash,
            CHARINDEX('-', i.C14, CHARINDEX('-', i.C14) + 1) AS SecondDash,
            CHARINDEX('-', i.C14, CHARINDEX('-', i.C14, CHARINDEX('-', i.C14) + 1) + 1) AS ThirdDash
        FROM inserted i
        LEFT JOIN deleted d ON i.C14 = d.C14 AND i.C34 = d.C34
        -- Consider rows where C34 is NULL after insertion or when C14 has been updated
        WHERE (i.C34 IS NULL)
        AND (d.C14 IS NULL OR i.C14 <> d.C14) -- Update only if C14 was updated or it's a new insert
        AND i.C14 LIKE '%-%-%-%' -- Ensure it matches the pattern
    ),
    ExtractValue AS (
        SELECT
            C14,
            SUBSTRING(C14,
                      SecondDash + 1,
                      ThirdDash - SecondDash - 1
            ) AS Value
        FROM ToUpdate
    )
    UPDATE G_CAMPOS_01C0000006
    SET C34 = RIGHT('00000' + ExtractValue.Value, 5)
    FROM ExtractValue
    WHERE G_CAMPOS_01C0000006.C14 = ExtractValue.C14;
END;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS
WHERE CAMPO_NOMBRE = 'Consecutivo'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS_01C0000006
WHERE C14 = '2-10-214-2021'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_PAGINAS
WHERE GID_DOCUMENTO IN (
SELECT GID FROM G_CAMPOS_01C0000006
WHERE C14 = '2-10-214-2021')
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_PAGINAS
WHERE GID_DOCUMENTO IN (
SELECT GID FROM G_CAMPOS_01C0000006
WHERE C14 = '2-11-230-2021')
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_PAGINAS
WHERE GID_DOCUMENTO IN (
SELECT GID FROM G_CAMPOS_01C0000006
WHERE C14 = '2-11-409-2021')
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_PAGINAS
WHERE GID_DOCUMENTO IN (
SELECT GID FROM G_CAMPOS_01C0000006
WHERE C14 = '2-12-221-2021')
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_PAGINAS
WHERE GID_DOCUMENTO IN (
SELECT GID FROM G_CAMPOS_01C0000006
WHERE C14 = '2-12-257-2021')
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_PAGINAS
WHERE GID_DOCUMENTO IN (
SELECT GID FROM G_CAMPOS_01C0000006
WHERE C14 = '2-12-327-2021')
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS_01C0000004
;-- -. . -..- - / . -. - .-. -.--
SELECT C6 + '.PDF' AS POLIZA
     , B.GID       AS PAGINAS
    FROM G_CAMPOS_01C0000004 A
             INNER JOIN G_PAGINAS B ON A.GID = B.GID_DOCUMENTO
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_CAMPOS_01C0000004 A
             INNER JOIN G_PAGINAS B ON A.GID = B.GID_DOCUMENTO
WHERE
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_CAMPOS_01C0000004 A
             INNER JOIN G_PAGINAS B ON A.GID = B.GID_DOCUMENTO
;-- -. . -..- - / . -. - .-. -.--
SELECT C6 + '.PDF' AS POLIZA
     , B.GID       AS PAGINAS
    FROM G_CAMPOS_01C0000004 A
             INNER JOIN G_PAGINAS B ON A.GID = B.GID_DOCUMENTO
WHERE C4 NOT IN (2024)
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_CAMPOS_01C0000006 A
             INNER JOIN G_PAGINAS B ON A.GID = B.GID_DOCUMENTO
;-- -. . -..- - / . -. - .-. -.--
SELECT C14 + '.PDF' AS POLIZA
     , B.GID       AS PAGINAS
    FROM G_CAMPOS_01C0000006 A
             INNER JOIN G_PAGINAS B ON A.GID = B.GID_DOCUMENTO
    WHERE C12 NOT IN (2024)
;-- -. . -..- - / . -. - .-. -.--
SELECT C14 + '.PDF' AS POLIZA
     , B.GID       AS PAGINAS
    FROM G_CAMPOS_01C0000006 A
             INNER JOIN G_PAGINAS B ON A.GID = B.GID_DOCUMENTO
    WHERE C12 NOT IN (2024)
      AND EXTENSION = 'PDF'
;-- -. . -..- - / . -. - .-. -.--
SELECT C14 + '.PDF' AS POLIZA
     , B.GID        AS PAGINAS
     , A.GID        AS GIDDocumento
    FROM G_CAMPOS_01C0000006 A
             INNER JOIN G_PAGINAS B ON A.GID = B.GID_DOCUMENTO
    WHERE C12 NOT IN (2024)
      AND EXTENSION = 'PDF'
;-- -. . -..- - / . -. - .-. -.--
SELECT C14 + '.PDF' AS POLIZA
     , B.GID        AS PAGINAS
     , A.GID        AS GIDDocumento
    FROM G_CAMPOS_01C0000006 A
             INNER JOIN G_PAGINAS B ON A.GID = B.GID_DOCUMENTO
    --WHERE C12 NOT IN (2024)
      --AND EXTENSION = 'PDF'
    WHERE A.GID = '01D0001NDK'
;-- -. . -..- - / . -. - .-. -.--
SELECT C14 + '.PDF' AS POLIZA
     , B.GID        AS PAGINAS
     , A.GID        AS GIDDocumento
    FROM G_CAMPOS_01C0000006 A
             INNER JOIN G_PAGINAS B ON A.GID = B.GID_DOCUMENTO
    --WHERE C12 NOT IN (2024)
      --AND EXTENSION = 'PDF'
    WHERE A.GID = '01D0000G5F'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_DOCUMENTOS
WHERE GID_COLECCION = '01C00000006'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_DOCUMENTOS
WHERE GID_COLECCION = '01C0000006'
;-- -. . -..- - / . -. - .-. -.--
SELECT GID, COUNT(*) FROM G_DOCUMENTOS
WHERE GID_COLECCION = '01C0000006'
;-- -. . -..- - / . -. - .-. -.--
SELECT GID, COUNT(*) FROM G_DOCUMENTOS
WHERE GID_COLECCION = '01C0000006'
GROUP BY GID
;-- -. . -..- - / . -. - .-. -.--
SELECT GID, COUNT(*) FROM G_DOCUMENTOS
GROUP BY GID
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_DOCUMENTOS
WHERE GID = '01D0000G31'
;-- -. . -..- - / . -. - .-. -.--
SELECT GID_DOCUMENTO, COUNT(*) FROM G_PAGINAS
GROUP BY GID_DOCUMENTO
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_DOCUMENTOS
WHERE GID = '01D0000G5E'
;-- -. . -..- - / . -. - .-. -.--
SELECT COUNT(*) AS DOCUMENTOS
    FROM G_PAGINAS
    WHERE EXTENSION NOT IN ('PDF')
;-- -. . -..- - / . -. - .-. -.--
SELECT EXTENSION AS DOCUMENTOS
    FROM G_PAGINAS
    GROUP BY EXTENSION
;-- -. . -..- - / . -. - .-. -.--
SELECT EXTENSION, count(*) AS DOCUMENTOS
    FROM G_PAGINAS
    GROUP BY EXTENSION
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_DOCUMENTOS
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_PAGINAS
WHERE EXTENSION NOT IN ('PDF')
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_PAGINAS
WHERE EXTENSION NOT IN ('PDF','TIF')
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_PAGINAS
WHERE GID = '01D0000HEQ'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_DOCUMENTOS
         WHERE GID = '01D0000HET'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_PAGINAS
WHERE GID_DOCUMENTO = '01D0000HET'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS_01C0000006
WHERE GID = '01D0000HEQ'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_DOCUMENTOS
         WHERE GID = '01D0000HEQ'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_PAGINAS
WHERE GID_DOCUMENTO = '01D0000HEQ'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_DOCUMENTOS
         WHERE GID = '2-11-230-2021'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS_01C0000006
WHERE GID = '2-11-230-2021'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS_01C0000006
WHERE C14 = '2-11-230-2021'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_PAGINAS
WHERE GID_DOCUMENTO = '01D0000H1R'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_DOCUMENTOS
         WHERE GID = '01D0000H1R'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS_01C0000006
WHERE C14 = '2-11-409-2021'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_PAGINAS
WHERE GID_DOCUMENTO = '01D0000H81'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_DOCUMENTOS
         WHERE GID = '01D0000H81'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_PAGINAS
WHERE GID_DOCUMENTO = '01D0000G5F'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_PAGINAS
WHERE GID_DOCUMENTO = '01D0000QLV'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_PAGINAS
WHERE GID_DOCUMENTO = '01D0000QQK'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_PAGINAS
WHERE GID_DOCUMENTO = '01D0000QQQ'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS_01C0000006
WHERE GID = '01D0000VSS'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_DOCUMENTOS
         WHERE GID = '01D0000VSS'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_PAGINAS
WHERE GID_DOCUMENTO = '01D0000VSU'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_PAGINAS
WHERE GID_DOCUMENTO = '01D0000VSS'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_PAGINAS
WHERE GID_DOCUMENTO = '01D0000SDU'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_PAGINAS
WHERE GID_DOCUMENTO = '01D0000SEQ'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_PAGINAS
WHERE GID_DOCUMENTO = '01D0000SMN'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_PAGINAS
WHERE GID_DOCUMENTO = '01D0000RCV'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_PAGINAS
WHERE GID_DOCUMENTO = '01D0000REF'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_DOCUMENTOS
         WHERE GID = '01D0000R4Q'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_PAGINAS
WHERE GID_DOCUMENTO = '01D0000R4Q'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_PAGINAS
WHERE GID_DOCUMENTO = '01D0000R7M'
;-- -. . -..- - / . -. - .-. -.--
SELECT C14 + '.PDF' AS POLIZA
     , B.GID        AS PAGINAS
     , A.GID        AS GIDDocumento
    FROM G_CAMPOS_01C0000006 A
             INNER JOIN G_PAGINAS B ON A.GID = B.GID_DOCUMENTO
    --WHERE C12 NOT IN (2024)
      --AND EXTENSION = 'PDF'
    WHERE A.GID = '01D0000UF3'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_DOCUMENTOS
WHERE GID = '01D0000UF3'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO IN (SELECT GID
                                FROM G_CAMPOS_01C0000006
                                WHERE C14 = '2-9-408-2022')
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO IN (SELECT GID
                                FROM G_CAMPOS_01C0000006
                                WHERE C14 = '2-2-441-2023')
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D0001329'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D000133D'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D0001343'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D0001358'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D00014G9
'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D00014GI'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D00014G9'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D00014GK'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D0001039'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D000103P'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D000103T'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D000105R'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D00014OS'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D000145N'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D000146Q'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D00013C4'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D00013D0'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D00010GU'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D0000OJP'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D00010J1'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D00016GV'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D00016HD'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D00016HV'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D00016JB'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D00016MR'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D00016N6'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D0000UC6'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D0000UCI'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D00015ST'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D00015TM'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D0000THT'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D000164U'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D00016EP'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D00016EH'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D0000SOM'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D0000SP2'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D0001BIJ'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D0001BIM'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D00015K9'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D00015M8'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D00015O0'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D00015QO'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D0000PJO'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D0000PJV'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D0000PKT'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D00011IJ'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D0000PL2'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D00011MN'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D0001281'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D0001292'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_DOCUMENTOS
WHERE GID = '01D000164R'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID = '01P000220L'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D000164R'
;-- -. . -..- - / . -. - .-. -.--
SELECT C14 AS POLIZAS
     , GID
    FROM G_CAMPOS_01C0000006
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D0001M4A'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D0001LLN'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D0001LM2'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D0001N74'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D0001NHQ'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D0001NHJ'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D0001NHE'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D0001NIA'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D0001N98'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D0001NST'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D0001NSR'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D0001NPC'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO = '01D0001NSO'
;-- -. . -..- - / . -. - .-. -.--
SELECT C6 + '.PDF' AS POLIZA
     , B.GID       AS PAGINAS
    FROM G_CAMPOS_01C0000004 A
             INNER JOIN G_PAGINAS B ON A.GID = B.GID_DOCUMENTO
    WHERE C4 NOT IN (2024)
      AND EXTENSION = 'PDF'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_PAGINAS
;-- -. . -..- - / . -. - .-. -.--
SELECT GID, CONCAT(SUBSTRING(GID,3,1)) 
    FROM G_PAGINAS
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP(1) GID, CONCAT(SUBSTRING(GID,3,1)) 
    FROM G_PAGINAS
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP(1) GID, SUBSTRING(GID,3,1)
    FROM G_PAGINAS
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP(1) GID, SUBSTRING(GID,4,1)
    FROM G_PAGINAS
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP(1) GID, SUBSTRING(GID,4,1) + '\' + SUBSTRING(GID,5,2)
    FROM G_PAGINAS
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP(1) GID, SUBSTRING(GID,4,1) + '\' + SUBSTRING(GID,5,2) + '\' + SUBSTRING(GID,7,2)
    FROM G_PAGINAS
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP(1) GID, SUBSTRING(GID,4,1) + '\' + SUBSTRING(GID,5,2) + '\' + SUBSTRING(GID,7,2) + '\' + SUBSTRING(GID,4,20)
    FROM G_PAGINAS
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP(1) GID, SUBSTRING(GID,4,1) + '\' + SUBSTRING(GID,5,2) + '\' + SUBSTRING(GID,7,2) + '\' + SUBSTRING(GID,4,20) + EXTENSION
    FROM G_PAGINAS
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP(1) GID, SUBSTRING(GID,4,1) + '\' + SUBSTRING(GID,5,2) + '\' + SUBSTRING(GID,7,2) + '\' + SUBSTRING(GID,4,20) + '.pdf' + EXTENSION
    FROM G_PAGINAS
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP (1) GID
             ,
    SUBSTRING(GID, 4, 1) + '\' + SUBSTRING(GID, 5, 2) + '\' + SUBSTRING(GID, 7, 2) + '\' + SUBSTRING(GID, 4, 20) +
    '.' + EXTENSION
    FROM G_PAGINAS
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP (1) A.GID
             , GID_COLECCION + '\' +
               SUBSTRING(A.GID, 4, 1) + '\' + SUBSTRING(GID, 5, 2) + '\' + SUBSTRING(GID, 7, 2) + '\' +
               SUBSTRING(GID, 4, 20) +
               '.' + EXTENSION
    FROM G_PAGINAS A
             INNER JOIN G_DOCUMENTOS B ON A.GID_DOCUMENTO = B.GID
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP (1) A.GID
             , GID_COLECCION + '\' +
               SUBSTRING(A.GID, 4, 1) + '\' + SUBSTRING(A.GID, 5, 2) + '\' + SUBSTRING(A.GID, 7, 2) + '\' +
               SUBSTRING(A.GID, 4, 20) +
               '.' + EXTENSION
    FROM G_PAGINAS A
             INNER JOIN G_DOCUMENTOS B ON A.GID_DOCUMENTO = B.GID
;-- -. . -..- - / . -. - .-. -.--
SELECT TOP (1) A.GID
             , GID_COLECCION
             , SUBSTRING(A.GID, 4, 1) + '\' + SUBSTRING(A.GID, 5, 2) + '\' + SUBSTRING(A.GID, 7, 2) + '\' +
               SUBSTRING(A.GID, 4, 20) +
               '.' + EXTENSION AS RUTA
    FROM G_PAGINAS A
             INNER JOIN G_DOCUMENTOS B ON A.GID_DOCUMENTO = B.GID
;-- -. . -..- - / . -. - .-. -.--
SELECT 'MDIR' + 
     SUBSTRING(A.GID, 4, 1) + '\' + SUBSTRING(A.GID, 5, 2) + '\' + SUBSTRING(A.GID, 7, 2) + '\' +
       SUBSTRING(A.GID, 4, 20) +
       '.' + EXTENSION AS RUTA
    FROM G_PAGINAS A
             INNER JOIN G_DOCUMENTOS B ON A.GID_DOCUMENTO = B.GID
;-- -. . -..- - / . -. - .-. -.--
SELECT 'MDIR E:\CP\' + 
     SUBSTRING(A.GID, 4, 1) + '\' + SUBSTRING(A.GID, 5, 2) + '\' + SUBSTRING(A.GID, 7, 2) + '\' +
       SUBSTRING(A.GID, 4, 20) +
       '.' + EXTENSION AS RUTA
    FROM G_PAGINAS A
             INNER JOIN G_DOCUMENTOS B ON A.GID_DOCUMENTO = B.GID
;-- -. . -..- - / . -. - .-. -.--
SELECT 'MDIR E:\CP\' + 
     SUBSTRING(A.GID, 4, 1) + '\' + SUBSTRING(A.GID, 5, 2) + '\' + SUBSTRING(A.GID, 7, 2)  AS RUTA
    FROM G_PAGINAS A
             INNER JOIN G_DOCUMENTOS B ON A.GID_DOCUMENTO = B.GID
;-- -. . -..- - / . -. - .-. -.--
SELECT 'MDIR E:\CP\' +
       SUBSTRING(A.GID, 4, 1) + '\' + SUBSTRING(A.GID, 5, 2) + '\' + SUBSTRING(A.GID, 7, 2) AS RUTA
    FROM G_PAGINAS A
             INNER JOIN G_DOCUMENTOS B ON A.GID_DOCUMENTO = B.GID
    GROUP BY 'MDIR E:\CP\' +
             SUBSTRING(A.GID, 4, 1) + '\' + SUBSTRING(A.GID, 5, 2) + '\' + SUBSTRING(A.GID, 7, 2) AS RUTA
;-- -. . -..- - / . -. - .-. -.--
SELECT 'MDIR E:\CP\' +
       SUBSTRING(A.GID, 4, 1) + '\' + SUBSTRING(A.GID, 5, 2) + '\' + SUBSTRING(A.GID, 7, 2) AS RUTA
    FROM G_PAGINAS A
             INNER JOIN G_DOCUMENTOS B ON A.GID_DOCUMENTO = B.GID
    GROUP BY 'MDIR E:\CP\' +
             SUBSTRING(A.GID, 4, 1) + '\' + SUBSTRING(A.GID, 5, 2) + '\' + SUBSTRING(A.GID, 7, 2)
;-- -. . -..- - / . -. - .-. -.--
SELECT SUBSTRING(A.GID, 4, 1) + '\' + SUBSTRING(A.GID, 5, 2) + '\' + SUBSTRING(A.GID, 7, 2) AS RUTA
    FROM G_PAGINAS A
             INNER JOIN G_DOCUMENTOS B ON A.GID_DOCUMENTO = B.GID
    GROUP BY SUBSTRING(A.GID, 4, 1) + '\' + SUBSTRING(A.GID, 5, 2) + '\' + SUBSTRING(A.GID, 7, 2)
;-- -. . -..- - / . -. - .-. -.--
SELECT GID_COLECCION + '\' + SUBSTRING(A.GID, 4, 1) + '\' + SUBSTRING(A.GID, 5, 2) + '\' + SUBSTRING(A.GID, 7, 2) AS RUTA
    FROM G_PAGINAS A
             INNER JOIN G_DOCUMENTOS B ON A.GID_DOCUMENTO = B.GID
    GROUP BY GID_COLECCION + '\' + SUBSTRING(A.GID, 4, 1) + '\' + SUBSTRING(A.GID, 5, 2) + '\' + SUBSTRING(A.GID, 7, 2) AS RUTA
;-- -. . -..- - / . -. - .-. -.--
SELECT GID_COLECCION, GD.GID, GP.GID, COUNT(*)
    FROM G_DOCUMENTOS GD
             INNER JOIN G_PAGINAS GP ON GD.GID = GP.GID_DOCUMENTO
GROUP BY GID_COLECCION, GD.GID, GP.GID
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_DOCUMENTOS GD
             INNER JOIN G_PAGINAS GP ON GD.GID = GP.GID_DOCUMENTO
             INNER JOIN G_CAMPOS_01C0000004 GC ON GC.GID = GD.GID
;-- -. . -..- - / . -. - .-. -.--
SELECT C6, GID_COLECCION, GD.GID, GP.GID, COUNT(*)
    FROM G_DOCUMENTOS GD
             INNER JOIN G_PAGINAS GP ON GD.GID = GP.GID_DOCUMENTO
             INNER JOIN G_CAMPOS_01C0000004 GC ON GC.GID = GD.GID
    GROUP BY C6, GID_COLECCION, GD.GID, GP.GID
;-- -. . -..- - / . -. - .-. -.--
SELECT GP.GID_DOCUMENTO, COUNT(*)
    FROM G_CAMPOS_01C0000004 GC
             INNER JOIN G_PAGINAS GP ON GC.GID = GP.GID_DOCUMENTO
    GROUP BY GP.GID_DOCUMENTO
;-- -. . -..- - / . -. - .-. -.--
SELECT GP.GID_DOCUMENTO, COUNT(*)
    FROM G_CAMPOS_01C0000006 GC
             INNER JOIN G_PAGINAS GP ON GC.GID = GP.GID_DOCUMENTO
    GROUP BY GP.GID_DOCUMENTO
;-- -. . -..- - / . -. - .-. -.--
SELECT C6, GID_COLECCION, GD.GID, GP.GID, COUNT(GP.GID)
    FROM G_DOCUMENTOS GD
             INNER JOIN G_PAGINAS GP ON GD.GID = GP.GID_DOCUMENTO
             INNER JOIN G_CAMPOS_01C0000004 GC ON GC.GID = GD.GID
    GROUP BY C6, GID_COLECCION, GD.GID, GP.GID
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS_01C0000005
;-- -. . -..- - / . -. - .-. -.--
SELECT C10, GID_COLECCION, GD.GID, GP.GID, COUNT(GP.GID)
    FROM G_DOCUMENTOS GD
             INNER JOIN G_PAGINAS GP ON GD.GID = GP.GID_DOCUMENTO
             INNER JOIN G_CAMPOS_01C0000005 GC ON GC.GID = GD.GID
    GROUP BY C10, GID_COLECCION, GD.GID, GP.GID
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS_01C0000006
;-- -. . -..- - / . -. - .-. -.--
SELECT C14, GID_COLECCION, GD.GID, GP.GID, COUNT(GP.GID)
    FROM G_DOCUMENTOS GD
             INNER JOIN G_PAGINAS GP ON GD.GID = GP.GID_DOCUMENTO
             INNER JOIN G_CAMPOS_01C0000006 GC ON GC.GID = GD.GID
    GROUP BY C14, GID_COLECCION, GD.GID, GP.GID
;-- -. . -..- - / . -. - .-. -.--
SELECT C14, GID_COLECCION, GD.GID, GP.GID, COUNT(*)
    FROM G_DOCUMENTOS GD
             INNER JOIN G_PAGINAS GP ON GD.GID = GP.GID_DOCUMENTO
             INNER JOIN G_CAMPOS_01C0000006 GC ON GC.GID = GD.GID
    GROUP BY C14, GID_COLECCION, GD.GID, GP.GID
;-- -. . -..- - / . -. - .-. -.--
SELECT C14, GP.GID_DOCUMENTO, GP.GID, COUNT(*)
    FROM G_PAGINAS GP
             INNER JOIN G_CAMPOS_01C0000006 GC ON GC.GID = GP.GID
    GROUP BY C14, GP.GID_DOCUMENTO, GP.GID
;-- -. . -..- - / . -. - .-. -.--
SELECT C14, COUNT(*) AS ANEXOS
    FROM G_CAMPOS_01C0000006 GC
             INNER JOIN G_PAGINAS GP ON GC.GID = GP.GID_DOCUMENTO
GROUP BY C14
;-- -. . -..- - / . -. - .-. -.--
SELECT C14, COUNT(*) AS ANEXOS
    FROM G_CAMPOS_01C0000006 GC
             INNER JOIN G_PAGINAS GP ON GC.GID = GP.GID_DOCUMENTO
GROUP BY C14
HAVING COUNT(*) > 1
;-- -. . -..- - / . -. - .-. -.--
SELECT C6, COUNT(*) AS ANEXOS
    FROM G_CAMPOS_01C0000004 GC
             INNER JOIN G_PAGINAS GP ON GC.GID = GP.GID_DOCUMENTO
    GROUP BY C6
    HAVING COUNT(*) > 1
;-- -. . -..- - / . -. - .-. -.--
SELECT C10, COUNT(*) AS ANEXOS
    FROM G_CAMPOS_01C0000005 GC
             INNER JOIN G_PAGINAS GP ON GC.GID = GP.GID_DOCUMENTO
    GROUP BY C10
    HAVING COUNT(*) > 1
;-- -. . -..- - / . -. - .-. -.--
SELECT C6, COUNT(*) AS ANEXOS
    FROM G_CAMPOS_01C0000004 GC
             INNER JOIN G_PAGINAS GP ON GC.GID = GP.GID_DOCUMENTO
    GROUP BY C6
    HAVING COUNT(*) > 1
UNION
SELECT C10, COUNT(*) AS ANEXOS
    FROM G_CAMPOS_01C0000005 GC
             INNER JOIN G_PAGINAS GP ON GC.GID = GP.GID_DOCUMENTO
    GROUP BY C10
    HAVING COUNT(*) > 1
UNION
SELECT C14, COUNT(*) AS ANEXOS
    FROM G_CAMPOS_01C0000006 GC
             INNER JOIN G_PAGINAS GP ON GC.GID = GP.GID_DOCUMENTO
    GROUP BY C14
    HAVING COUNT(*) > 1
;-- -. . -..- - / . -. - .-. -.--
SELECT A.GID
     , GID_COLECCION
     , SUBSTRING(A.GID, 4, 1) + '\' + SUBSTRING(A.GID, 5, 2) + '\' + SUBSTRING(A.GID, 7, 2) + '\' +
       SUBSTRING(A.GID, 4, 20) +
       '.' + EXTENSION AS RUTA
    FROM G_PAGINAS A
             INNER JOIN G_DOCUMENTOS B ON A.GID_DOCUMENTO = B.GID
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_PAGINAS
WHERE GID = '01P0001GG2'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_DOCUMENTOS
WHERE GID = '01D0001GK3'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS_01C0000005
         WHERE GID = '01D0001GK3'
;-- -. . -..- - / . -. - .-. -.--
SELECT GID_COLECCION + '\' + SUBSTRING(A.GID, 4, 1) + '\' + SUBSTRING(A.GID, 5, 2) + '\' + SUBSTRING(A.GID, 7, 2) AS RUTA
    FROM G_PAGINAS A
             INNER JOIN G_DOCUMENTOS B ON A.GID_DOCUMENTO = B.GID
    GROUP BY GID_COLECCION + '\' + SUBSTRING(A.GID, 4, 1) + '\' + SUBSTRING(A.GID, 5, 2) + '\' + SUBSTRING(A.GID, 7, 2)