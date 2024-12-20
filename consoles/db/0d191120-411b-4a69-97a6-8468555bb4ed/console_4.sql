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