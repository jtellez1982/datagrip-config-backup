SELECT tituloRevista AS CARPETA1
     , volumen       AS CARPETA2
     , numeroasi     AS CARPETA2
     , ''            AS ARCHIVO
     , Paginas
     , A.DID
     , Path
    FROM UNAM_Bibliotecas.dbo.DatosRevistasCarpetaSobrantes A
             INNER JOIN UNAM_Bibliotecas.dbo.DocumentosRevistasCarpetaSobrantes B ON A.DID = B.DID
    WHERE A.DID = 708014;

SELECT *
    FROM UNAM_Bibliotecas.dbo.DatosRevistasCarpetaSobrantes A
    WHERE A.DID = 708014;

SELECT tituloRevista AS CARPETA1
     , año       AS CARPETA2
     , volumen     AS CARPETA2
     , numeroasi  AS CARPETA3
     , archivo
     , Paginas
     , A.DID
     , Path
    FROM UNAM_Bibliotecas.dbo.DatosRevistasCarpetaArticulos A
             INNER JOIN UNAM_Bibliotecas.dbo.DocumentosRevistasCarpetaArticulos B ON A.DID = B.DID
    WHERE A.DID IN (
                    717762,
                    717726,
                    717729,
                    717733,
                    717736,
                    717636,
                    717718,
                    717732,
                    717740,
                    717714,
                    717771,
                    717626,
                    717731,
                    717735,
                    717769,
                    717774,
                    717728,
                    717737,
                    717739,
                    717743,
                    717770,
                    717745,
                    717748,
                    717716,
                    717738,
                    717639,
                    717746,
                    717750,
                    717777,
                    717761,
                    717759,
                    717776,
                    717778,
                    717715,
                    717747,
                    717749,
                    717760,
                    717780,
                    717755,
                    697695
        )

SELECT *
    FROM UNAM_Bibliotecas.dbo.DatosRevistasCarpetaArticulos A
    WHERE A.DID IN (
                    717732,
                    717714,
                    717728,
                    717770,
                    717748,
                    717760,
                    717780
        )