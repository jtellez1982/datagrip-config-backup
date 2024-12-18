SELECT * FROM Documentos
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM requerimientos
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM ddoc_BuzonTributario.dbo.G_CAMPOS
WHERE GID IN ('01C000002J','01C000002H')
;-- -. . -..- - / . -. - .-. -.--
UPDATE requerimientos
SET MIGRADO = NULL
;-- -. . -..- - / . -. - .-. -.--
DELETE ddoc_BuzonTributario.dbo.G_PAGINAS
    WHERE GID_DOCUMENTO IN (SELECT GID
                                FROM ddoc_BuzonTributario.dbo.G_DOCUMENTOS
                                WHERE GID_COLECCION IN ('01C000002J', '01C000002H'))
;-- -. . -..- - / . -. - .-. -.--
UPDATE requerimientos
SET MIGRADO = NULL, gid = NULL
;-- -. . -..- - / . -. - .-. -.--
DELETE ddoc_BuzonTributario.dbo.G_PAGINAS
WHERE GID_DOCUMENTO IN 
(
    SELECT GID FROM ddoc_BuzonTributario.dbo.G_DOCUMENTOS
             WHERE GID_COLECCION IN ('01C000002J', '01C000002H')
    )
;-- -. . -..- - / . -. - .-. -.--
DELETE ddoc_BuzonTributario.dbo.G_DOCUMENTOS
    WHERE GID_COLECCION IN ('01C000002J', '01C000002H')
;-- -. . -..- - / . -. - .-. -.--
DELETE G_CAMPO_01C000002J
;-- -. . -..- - / . -. - .-. -.--
DELETE G_CAMPOS_01C000002J
DELETE G_CAMPOS_01C000002H
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM ddoc_BuzonTributario.dbo.G_CAMPOS
    WHERE GID IN ('01C0000027', '01C000000G')
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_COLECCIONES
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_COLECCIONES
WHERE GID = '01C000002J'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_COLECCIONES
WHERE GID = '01C0000027'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_COLECCIONES
WHERE GID IN ('01C0000027', '01C000000G')
;-- -. . -..- - / . -. - .-. -.--
DELETE G_CAMPOS_01C000000J
;-- -. . -..- - / . -. - .-. -.--
DELETE G_CAMPOS_01C000000I
;-- -. . -..- - / . -. - .-. -.--
DELETE G_CAMPOS_01C000000H
;-- -. . -..- - / . -. - .-. -.--
DELETE G_CAMPOS_01C000000G
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_REGLAS
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_REGLAS
WHERE GID_PADRE = '01C0000028'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_REGLAS
WHERE GID_PADRE = '01C0000027'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS
         WHERE GID = '01C0000028'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS
         WHERE GID = '01C0000027'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS
         WHERE GID = '01C0000027' OR GID = '01C0000028'