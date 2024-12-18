SELECT FechaProcesado
     , migrado
     , COUNT(*)     AS DOCUMENTOS
     , SUM(Paginas) AS PAGINAS
    FROM UNAM_Bibliotecas.dbo.DatosRevistasCarpetaArticulos
    GROUP BY FechaProcesado, migrado
    ORDER BY CONVERT(DATE, FechaProcesado, 103)

SELECT FechaProcesado
     , migrado
     , COUNT(*)     AS DOCUMENTOS
     , SUM(Paginas) AS PAGINAS
    FROM UNAM_Bibliotecas.dbo.DatosRevistasCarpetaSobrantes
    GROUP BY FechaProcesado, migrado
    ORDER BY CONVERT(DATE, FechaProcesado, 103)

SELECT tituloRevista AS CARPETA1
     , año           AS SUBCARPETA1
     , volumen       AS SUBCARPETA2
     , numeroasi     AS SUBCARPETA3
     , archivo       AS ARCHIVO
     , Paginas
     , B.DID
     , Path
    FROM UNAM_Bibliotecas.dbo.DatosRevistasCarpetaArticulos A
             INNER JOIN UNAM_Bibliotecas.dbo.DocumentosRevistasCarpetaArticulos B ON A.DID = B.DID
    WHERE A.DID IN (
                    717755,
                    717780,
                    717749,
                    717760,
                    717747,
                    717715,
                    717778,
                    717759,
                    717776,
                    717761,
                    717639,
                    717746,
                    717750,
                    717777,
                    717716,
                    717738,
                    717748,
                    717745,
                    717770,
                    717728,
                    717737,
                    717739,
                    717743,
                    717636,
                    717718,
                    717762,
                    717719
        )

SELECT tituloRevista AS CARPETA1
     , volumen       AS SUBCARPETA1
     , numeroasi     AS SUBCARPETA2
     , 'ARCHIVO'     AS ARCHIVO
     , Paginas
     , B.DID
     , Path
    FROM UNAM_Bibliotecas.dbo.DatosRevistasCarpetaSobrantes A
             INNER JOIN UNAM_Bibliotecas.dbo.DocumentosRevistasCarpetaSobrantes B ON A.DID = B.DID
    WHERE A.DID IN (
                    717755,
                    717780,
                    717749,
                    717760,
                    717747,
                    717715,
                    717778,
                    717759,
                    717776,
                    717761,
                    717639,
                    717746,
                    717750,
                    717777,
                    717716,
                    717738,
                    717748,
                    717745,
                    717770,
                    717728,
                    717737,
                    717739,
                    717743,
                    717636,
                    717718,
                    717762,
                    717719
        )

SELECT facultad
     , documentacionPert
     , tituloRevista
     , año
     , volumen
     , numeroasi
     , archivo
     , Paginas
    FROM UNAM_Bibliotecas.dbo.DatosRevistasCarpetaArticulos A
             INNER JOIN UNAM_Bibliotecas.dbo.DocumentosRevistasCarpetaArticulos B ON A.DID = B.DID
    WHERE A.DID IN (
                    717755,
                    717780,
                    717749,
                    717760,
                    717747,
                    717715,
                    717778,
                    717759,
                    717776,
                    717761,
                    717639,
                    717746,
                    717750,
                    717777,
                    717716,
                    717738,
                    717748,
                    717745,
                    717770,
                    717728,
                    717737,
                    717739,
                    717743,
                    717636,
                    717718,
                    717762,
                    717719
        )

UPDATE UNAM_Bibliotecas.dbo.DatosRevistasCarpetaArticulos
SET migrado = 1
    WHERE DID IN (
                    717755,
                    717780,
                    717749,
                    717760,
                    717747,
                    717715,
                    717778,
                    717759,
                    717776,
                    717761,
                    717639,
                    717746,
                    717750,
                    717777,
                    717716,
                    717738,
                    717748,
                    717745,
                    717770,
                    717728,
                    717737,
                    717739,
                    717743,
                    717636,
                    717718,
                    717762,
                    717719
        )