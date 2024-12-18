SELECT CASE
           WHEN COLECCION_TIPO = 'F' THEN 'FOLDER'
           WHEN COLECCION_TIPO = 'D' THEN 'DOCUMENTO'
           ELSE 'RAIZ'
    END AS COLECCION_TIPO
     , COLECCION_NOMBRE
     , GID
    FROM G_COLECCIONES
    WHERE COLECCION_SEGURIDAD IN (SELECT GS_ID
                                      FROM G_SEGURIDAD
                                      WHERE NOMBRE IN ('Confidencial',
                                                       'DOCUMENTACION MIGRATORIA', 'SEGUROS', 'DOCUMENTOS PERSONALES',
                                                       'HISTORIAL ACADÉMICO',
                                                       'RELACIÓN LABORAL ASF-EMPLEADO', 'CONTRATACIÓN / BAJA',
                                                       'EMPLEADOS NACIONALES',
                                                       'CAPITAL HUMANO Raiz'))
      AND GID IN (SELECT GID_HIJO
                      FROM G_REGLAS)

SELECT *
    FROM G_REGLAS