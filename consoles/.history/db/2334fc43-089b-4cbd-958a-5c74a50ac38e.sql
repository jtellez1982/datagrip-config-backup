SELECT CASE
           WHEN 1 THEN 'MIGRADO'
           ELSE NOT 'No Migrado'
           END AS MIGRADO
    FROM Recaudacion.dbo.requerimientos
;-- -. . -..- - / . -. - .-. -.--
SELECT CASE
           WHEN Migrado = 1 THEN 'MIGRADO'
           ELSE NOT 'No Migrado'
           END AS MIGRADO
    FROM Recaudacion.dbo.requerimientos
;-- -. . -..- - / . -. - .-. -.--
SELECT CASE
           WHEN Migrado = 1 THEN 'MIGRADO'
           ELSE 'No Migrado'
           END AS MIGRADO
    FROM Recaudacion.dbo.requerimientos
;-- -. . -..- - / . -. - .-. -.--
SELECT CASE
           WHEN Migrado = 1 THEN 'MIGRADO'
           ELSE 'No Migrado'
    END         AS MIGRADO
     , COUNT(*) AS REGISTROS
    FROM Recaudacion.dbo.requerimientos
    GROUP BY CASE
                 WHEN Migrado = 1 THEN 'MIGRADO'
                 ELSE 'No Migrado'
                 END
;-- -. . -..- - / . -. - .-. -.--
SELECT CASE
           WHEN Migrado = 1 THEN 'MIGRADO'
           ELSE 'No Migrado'
    END             AS MIGRADO
     , COUNT(*)     AS REGISTROS
     , SUM(Paginas) AS PAGINAS
    FROM Recaudacion.dbo.requerimientos
    GROUP BY CASE
                 WHEN Migrado = 1 THEN 'MIGRADO'
                 ELSE 'No Migrado'
                 END