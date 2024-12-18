SELECT *
    FROM G_USUARIOS

SELECT *
    FROM G_PERFILES
WHERE Usuario_ID = 'mesa.soporte'

SELECT *
    FROM G_PERMISOS
WHERE GGNT_ID IN ( 1,4,5,6)

SELECT *
    FROM G_GRUPONT

SELECT A.Usuario_ID
     , Nombre
     , G_READ
     , G_WRITE
     , G_COMMENT
     , G_EXPORT
     , G_PRINT
     , G_DELETE
     , G_APPROVE
     , G_CREATE
    FROM G_USUARIOS A
             INNER JOIN G_PERFILES B ON A.Usuario_ID = B.Usuario_ID
             INNER JOIN G_PERMISOS C ON B.GGNT_ID = C.GGNT_ID
    GROUP BY A.Usuario_ID
           , Nombre
           , G_READ
           , G_WRITE
           , G_COMMENT
           , G_EXPORT
           , G_PRINT
           , G_DELETE
           , G_APPROVE
           , G_CREATE