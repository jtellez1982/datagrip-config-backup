SELECT * FROM G_DOCUMENTOS
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_DOCUMENTOS
WHERE GID = '01C0000028'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_DOCUMENTOS
WHERE GID_COLECCION = '01C0000028'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_DOCUMENTOS
         WHERE GID_COLECCION = '01C0000028'
;-- -. . -..- - / . -. - .-. -.--
SELECT GID
    FROM G_DOCUMENTOS
    WHERE GID_COLECCION = '01C0000028'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS_01C0000027
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_FOLDERS
WHERE GID_COLECCION = '01C0000027'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS_01C0000028
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO IN (SELECT GID
                                FROM G_DOCUMENTOS
                                WHERE GID_COLECCION = '01C0000028')
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_DOCUMENTOS
    WHERE GID_COLECCION = '01C0000028'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO IN (SELECT GID
                                FROM G_DOCUMENTOS
                                WHERE GID_COLECCION = '01C0000002')
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO IN (SELECT GID
                                FROM G_DOCUMENTOS
                                WHERE GID_COLECCION = '01C0000004')
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_DOCUMENTOS
    WHERE GID_COLECCION = '01C0000004'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS_01C0000004
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_FOLDERS
WHERE GID_COLECCION = '01C0000004'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_FOLDERS
WHERE GID_COLECCION = '01C0000003'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_FOLDERS
WHERE GID_COLECCION = '01C0000002'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS_01C0000003
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS_01C0000002
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO IN (SELECT GID
                                FROM G_DOCUMENTOS
                                WHERE GID_COLECCION = '01C0000005')
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO IN (SELECT GID
                                FROM G_DOCUMENTOS
                                WHERE GID_COLECCION = '01C0000008')
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_DOCUMENTOS
    WHERE GID_COLECCION = '01C0000008'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS_01C0000008
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_FOLDERS
WHERE GID_COLECCION = '01C0000006'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS_01C0000006
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_FOLDERS
WHERE GID_COLECCION = '01C0000007'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS_01C0000007
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_DOCUMENTOS
    WHERE GID_COLECCION = '01C0000007'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_DOCUMENTOS
    WHERE GID_COLECCION = '01C0000006'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO IN (SELECT GID
                                FROM G_DOCUMENTOS
                                WHERE GID_COLECCION = '01C000000C')
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_DOCUMENTOS
    WHERE GID_COLECCION = '01C000000C'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_DOCUMENTOS
    WHERE GID_COLECCION = '01C000000B'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_DOCUMENTOS
    WHERE GID_COLECCION = '01C000000A'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS_01C000000C
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_FOLDERS
WHERE GID_COLECCION = '01C000000B'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_FOLDERS
WHERE GID_COLECCION = '01C000000A'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS_01C000000B
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS_01C000000A
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO IN (SELECT GID
                                FROM G_DOCUMENTOS
                                WHERE GID_COLECCION = '01C000000L')
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_DOCUMENTOS
    WHERE GID_COLECCION = '01C000000L'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS_01C000000L
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_FOLDERS
WHERE GID_COLECCION = '01C000000K'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS_01C000000K
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO IN (SELECT GID
                                FROM G_DOCUMENTOS
                                WHERE GID_COLECCION = '01C000000J')
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_DOCUMENTOS
    WHERE GID_COLECCION = '01C000000J'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_FOLDERS
WHERE GID_COLECCION IN ('01C000000I', '01C000000H', '01C000000G')
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS_01C000000I
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS_01C000000H
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS_01C000000G
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO IN (SELECT GID
                                FROM G_DOCUMENTOS
                                WHERE GID_COLECCION = '01C000002J')
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_DOCUMENTOS
    WHERE GID_COLECCION = '01C000002J'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS_01C000002J
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_FOLDERS
WHERE GID_COLECCION IN ('01C000002H')
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS_01C000002H
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO IN (SELECT GID
                                FROM G_DOCUMENTOS
                                WHERE GID_COLECCION = '01C000000P')
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_DOCUMENTOS
    WHERE GID_COLECCION = '01C000000P'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS_01C000000P
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_FOLDERS
WHERE GID_COLECCION IN ('01C000000O', '01C000000N')
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS_01C000000O
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS_01C000000N
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO IN (SELECT GID
                                FROM G_DOCUMENTOS
                                WHERE GID_COLECCION = '01C000002S')
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_DOCUMENTOS
    WHERE GID_COLECCION = '01C000002S'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS_01C000002S
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS_01C000002R
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_FOLDERS
WHERE GID_COLECCION IN ('01C000002E')
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS_01C000002E
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO IN (SELECT GID
                                FROM G_DOCUMENTOS
                                WHERE GID_COLECCION = '01C0000020')
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_DOCUMENTOS
    WHERE GID_COLECCION = '01C0000020'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS_01C0000020
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_FOLDERS
WHERE GID_COLECCION IN ('01C000001V')
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS_01C000001V
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO IN (SELECT GID
                                FROM G_DOCUMENTOS
                                WHERE GID_COLECCION = '01C000001T')
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_DOCUMENTOS
    WHERE GID_COLECCION = '01C000001T'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS_01C000001T
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO IN (SELECT GID
                                FROM G_DOCUMENTOS
                                WHERE GID_COLECCION = '01C0000026')
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_DOCUMENTOS
    WHERE GID_COLECCION = '01C0000026'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS_01C0000026
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_FOLDERS
WHERE GID_COLECCION IN ('01C0000025')
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS_01C0000025
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_FOLDERS
WHERE GID_COLECCION IN ('01C000001K')
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS_01C000001K
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_PAGINAS
    WHERE GID_DOCUMENTO IN (SELECT GID
                                FROM G_DOCUMENTOS
                                WHERE GID_COLECCION = '01C000001L')
;-- -. . -..- - / . -. - .-. -.--
DELETE G_PAGINAS
    WHERE GID_DOCUMENTO IN (SELECT GID
                                FROM G_DOCUMENTOS
                                WHERE GID_COLECCION = '01C000001L')
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM G_DOCUMENTOS
    WHERE GID_COLECCION = '01C000001L'
;-- -. . -..- - / . -. - .-. -.--
delete G_DOCUMENTOS
    WHERE GID_COLECCION = '01C000001L'
;-- -. . -..- - / . -. - .-. -.--
DELETE G_CAMPOS_01C000001L
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM G_CAMPOS_01C000001L
;-- -. . -..- - / . -. - .-. -.--
DELETE G_PAGINAS
    WHERE GID_DOCUMENTO IN (SELECT GID
                                FROM G_DOCUMENTOS
                                WHERE GID_COLECCION = '01C000001A')
;-- -. . -..- - / . -. - .-. -.--
DELETE G_DOCUMENTOS
    WHERE GID_COLECCION = '01C000001A'
;-- -. . -..- - / . -. - .-. -.--
DELETE G_CAMPOS_01C000001A
;-- -. . -..- - / . -. - .-. -.--
DELETE G_FOLDERS
         WHERE GID_COLECCION IN ('01C0000019')
;-- -. . -..- - / . -. - .-. -.--
DELETE G_CAMPOS_01C0000019
;-- -. . -..- - / . -. - .-. -.--
DELETE G_PAGINAS
    WHERE GID_DOCUMENTO IN (SELECT GID
                                FROM G_DOCUMENTOS
                                WHERE GID_COLECCION = '01C0000012')
;-- -. . -..- - / . -. - .-. -.--
DELETE G_DOCUMENTOS
    WHERE GID_COLECCION = '01C0000012'
;-- -. . -..- - / . -. - .-. -.--
DELETE G_FOLDERS
         WHERE GID_COLECCION IN ('01C0000012')
;-- -. . -..- - / . -. - .-. -.--
DELETE G_CAMPOS_01C0000012
;-- -. . -..- - / . -. - .-. -.--
DELETE G_CAMPOS_01C0000010
;-- -. . -..- - / . -. - .-. -.--
DELETE G_FOLDERS
         WHERE GID_COLECCION IN ('01C0000010')
;-- -. . -..- - / . -. - .-. -.--
DELETE G_PAGINAS
    WHERE GID_DOCUMENTO IN (SELECT GID
                                FROM G_DOCUMENTOS
                                WHERE GID_COLECCION = '01C0000011')
;-- -. . -..- - / . -. - .-. -.--
DELETE G_DOCUMENTOS
    WHERE GID_COLECCION = '01C0000011'
;-- -. . -..- - / . -. - .-. -.--
DELETE G_CAMPOS_01C0000011
;-- -. . -..- - / . -. - .-. -.--
DELETE G_FOLDERS
         WHERE GID_COLECCION IN ('01C000000V')
;-- -. . -..- - / . -. - .-. -.--
DELETE G_CAMPOS_01C000000V
;-- -. . -..- - / . -. - .-. -.--
DELETE G_FOLDERS
         WHERE GID_COLECCION IN ('01C000000U')
;-- -. . -..- - / . -. - .-. -.--
DELETE G_CAMPOS_01C000000U