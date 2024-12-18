SELECT A.DID                                                                                        AS ID_CARGA
     , NOCAJA                                                                                       AS NUMERO_DE_CAJA
     , LEGAJO
     , NUMPOLIZA                                                                                    AS NUMERO_DE_DOCUMENTO
     , TIPODOCUMENTO                                                                                AS TIPO_DE_DOCUMENTO
     , FECHA                                                                                        AS FECHA_DEL_DOCUMENTO
     , CIAGENERADORA                                                                                AS COMPANIA_PROP_DEL_DOCTO
     , OFICINAS_OBRA                                                                                AS ORIGEN_DEL_DOCUMENTO
     , CONCEPTO                                                                                     AS CONCEPTO_DEL_DOCTO_REF
     , IMPORTE
     , Paginas
     , 'ENTREGA 8'                                                                                  AS ENTREGA
     , REPLACE(Path, '\\SRVKOFAX\SalidaPDF\Peninsular\PolizasContables', 'D:\Entregas\Entrega 8\2') AS RUTA_ARCHIVO
    FROM Peninsular.dbo.Datos_PolizasContables A
             INNER JOIN Peninsular.dbo.Documento B ON A.DID = B.DID
--WHERE FechaProcesado IN ('22/10/2024', '29/10/2024', '05/11/2024')
    WHERE A.DID IN (
                    731256,
                    731314,
                    731338,
                    735636,
                    736721,
                    739242,
                    739143,
                    734769,
                    737363,
                    739545,
                    739776,
                    739777,
                    739778,
                    739779,
                    739780,
                    739782,
                    739783,
                    739784,
                    739785,
                    739878,
                    739887,
                    740501,
                    740599,
                    740828,
                    740829,
                    763847,
                    772763,
                    772781,
                    772793,
                    773253,
                    773298,
                    746849,
                    773464,
                    778925,
                    781137,
                    781138,
                    779289,
                    782257,
                    782258,
                    779701,
                    782983,
                    783931,
                    783984,
                    784485
        )
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM Peninsular.dbo.Datos_PolizasContables
    WHERE A.DID IN (
                    731256,
                    731314,
                    731338,
                    735636,
                    736721,
                    739242,
                    739143,
                    734769,
                    737363,
                    739545,
                    739776,
                    739777,
                    739778,
                    739779,
                    739780,
                    739782,
                    739783,
                    739784,
                    739785,
                    739878,
                    739887,
                    740501,
                    740599,
                    740828,
                    740829,
                    763847,
                    772763,
                    772781,
                    772793,
                    773253,
                    773298,
                    746849,
                    773464,
                    778925,
                    781137,
                    781138,
                    779289,
                    782257,
                    782258,
                    779701,
                    782983,
                    783931,
                    783984,
                    784485
        )
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM Peninsular.dbo.Datos_PolizasContables
    WHERE DID IN (
                    731256,
                    731314,
                    731338,
                    735636,
                    736721,
                    739242,
                    739143,
                    734769,
                    737363,
                    739545,
                    739776,
                    739777,
                    739778,
                    739779,
                    739780,
                    739782,
                    739783,
                    739784,
                    739785,
                    739878,
                    739887,
                    740501,
                    740599,
                    740828,
                    740829,
                    763847,
                    772763,
                    772781,
                    772793,
                    773253,
                    773298,
                    746849,
                    773464,
                    778925,
                    781137,
                    781138,
                    779289,
                    782257,
                    782258,
                    779701,
                    782983,
                    783931,
                    783984,
                    784485
        )
;-- -. . -..- - / . -. - .-. -.--
SELECT
    CAST(REPLACE(IMPORTE, '.', '') AS DECIMAL(18, 2)) AS IMPORTE
    FROM
        Peninsular.dbo.Datos_PolizasContables
        WHERE DID IN (
                    731256,
                    731314,
                    731338,
                    735636,
                    736721,
                    739242,
                    739143,
                    734769,
                    737363,
                    739545,
                    739776,
                    739777,
                    739778,
                    739779,
                    739780,
                    739782,
                    739783,
                    739784,
                    739785,
                    739878,
                    739887,
                    740501,
                    740599,
                    740828,
                    740829,
                    763847,
                    772763,
                    772781,
                    772793,
                    773253,
                    773298,
                    746849,
                    773464,
                    778925,
                    781137,
                    781138,
                    779289,
                    782257,
                    782258,
                    779701,
                    782983,
                    783931,
                    783984,
                    784485
        )
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.Datos_PolizasContables
SET IMPORTE = CAST(REPLACE(IMPORTE, '.', '') AS DECIMAL(18, 2))
    WHERE DID IN (
                  731256, 731314, 731338, 735636, 736721, 739242, 739143, 734769, 737363,
                  739545, 739776, 739777, 739778, 739779, 739780, 739782, 739783, 739784,
                  739785, 739878, 739887, 740501, 740599, 740828, 740829, 763847, 772763,
                  772781, 772793, 773253, 773298, 746849, 773464, 778925, 781137, 781138,
                  779289, 782257, 782258, 779701, 782983, 783931, 783984, 784485
        )
;-- -. . -..- - / . -. - .-. -.--
SELECT CAST(REPLACE(IMPORTE, '.', '') AS DECIMAL(18, 2)) AS IMPORTE
    FROM Peninsular.dbo.Datos_PolizasContables
    WHERE DID IN (
                  731256,
                  731314,
                  731338,
                  735636,
                  736721,
                  739242,
                  739143,
                  734769,
                  737363,
                  739545,
                  739776,
                  739777,
                  739778,
                  739779,
                  739780,
                  739782,
                  739783,
                  739784,
                  739785,
                  739878,
                  739887,
                  740501,
                  740599,
                  740828,
                  740829,
                  763847,
                  772763,
                  772781,
                  772793,
                  773253,
                  773298,
                  746849,
                  773464,
                  778925,
                  781137,
                  781138,
                  779289,
                  782257,
                  782258,
                  779701,
                  782983,
                  783931,
                  783984,
                  784485
        )
;-- -. . -..- - / . -. - .-. -.--
SELECT A.DID                                                                                        AS ID_CARGA
     , NOCAJA                                                                                       AS NUMERO_DE_CAJA
     , LEGAJO
     , NUMPOLIZA                                                                                    AS NUMERO_DE_DOCUMENTO
     , TIPODOCUMENTO                                                                                AS TIPO_DE_DOCUMENTO
     , FECHA                                                                                        AS FECHA_DEL_DOCUMENTO
     , CIAGENERADORA                                                                                AS COMPANIA_PROP_DEL_DOCTO
     , OFICINAS_OBRA                                                                                AS ORIGEN_DEL_DOCUMENTO
     , CONCEPTO                                                                                     AS CONCEPTO_DEL_DOCTO_REF
     , IMPORTE
     , Paginas
     , 'ENTREGA 8'                                                                                  AS ENTREGA
     , REPLACE(Path, '\\SRVKOFAX\SalidaPDF\Peninsular\PolizasContables', 'D:\Entregas\Entrega 8\2') AS RUTA_ARCHIVO
    FROM Peninsular.dbo.Datos_PolizasContables A
             INNER JOIN Peninsular.dbo.Documento B ON A.DID = B.DID
--WHERE FechaProcesado IN ('22/10/2024', '29/10/2024', '05/11/2024')
    WHERE A.DID = 763847
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.Datos_PolizasContables
SET Migrado = 1
    WHERE FechaProcesado IN ('22/10/2024', '29/10/2024', '05/11/2024')
;-- -. . -..- - / . -. - .-. -.--
SELECT fechaProcesado FROM RAFSEC.dbo.datos
GROUP BY fechaProcesado
ORDER BY CONVERT(DATE, fechaProcesado, 103)
;-- -. . -..- - / . -. - .-. -.--
SELECT migrado, FechaProcesado, COUNT(*)
    FROM UNAM_Bibliotecas.dbo.DatosLibrosPDF
    GROUP BY migrado, FechaProcesado
;-- -. . -..- - / . -. - .-. -.--
SELECT migrado, FechaProcesado, COUNT(*)
    FROM UNAM_Bibliotecas.dbo.DatosLibrosPDF
    GROUP BY migrado, FechaProcesado 
ORDER BY CONVERT(DATE, FechaProcesado, 103) DESC
;-- -. . -..- - / . -. - .-. -.--
UPDATE UNAM_Bibliotecas.dbo.DatosLibrosPDF
SET migrado = 1
    WHERE DID IN (
                    698552,
                    723101,
                    728219,
                    728222,
                    728225,
                    725287,
                    728220,
                    728221,
                    728328,
                    728218,
                    728223,
                    728224,
                    728226,
                    729371,
                    729332,
                    731865,
                    730759,
                    730384,
                    730425,
                    733476,
                    734379,
                    735152,
                    734375,
                    734990,
                    734748,
                    734534,
                    735529,
                    735795,
                    736382,
                    736404,
                    736132,
                    736425,
                    735209,
                    736519,
                    736439,
                    736529,
                    736528,
                    736526,
                    736531,
                    736530,
                    736534,
                    736583,
                    736588,
                    736597,
                    736602,
                    736601,
                    736594,
                    736595,
                    736596,
                    736590,
                    736609,
                    736896,
                    736610,
                    736605,
                    736603,
                    736608,
                    736807,
                    737099,
                    737294,
                    737239,
                    737021,
                    737390,
                    737972,
                    737462,
                    737974,
                    737976,
                    738149,
                    737992,
                    738070,
                    741698,
                    741687,
                    740923,
                    741711,
                    741899,
                    739684,
                    739952,
                    738446,
                    739957,
                    740240,
                    738404,
                    738470,
                    740233
        )
;-- -. . -..- - / . -. - .-. -.--
SELECT migrado, FechaProcesado, COUNT(*), SUM(Paginas)
    FROM UNAM_Bibliotecas.dbo.DatosTesisPDF
    GROUP BY migrado, FechaProcesado
    ORDER BY CONVERT(DATE, FechaProcesado, 103) DESC
;-- -. . -..- - / . -. - .-. -.--
UPDATE UNAM_Bibliotecas.dbo.DatosTesisPDF
SET migrado = 1
WHERE DID IN (
              631026,
              631028,
              631034,
              631037,
              631040,
              631044,
              631045,
              631047,
              631049,
              631050,
              631051,
              631056,
              631059,
              631063,
              631136,
              631568,
              631570,
              631575,
              631578,
              631580,
              631585,
              631590,
              631594,
              631599,
              631603,
              631566,
              633354,
              633372,
              633379,
              633388,
              633397,
              633401,
              633412,
              633454,
              633466,
              633468,
              633470,
              633473,
              633475,
              633477,
              633479,
              633483,
              633486,
              633497,
              633508,
              633518,
              633519,
              633527,
              633530,
              633553,
              633562,
              633564,
              700758,
              700784,
              700840,
              699823,
              699829,
              700078,
              700099,
              700114,
              700156,
              700173,
              700443,
              700667,
              701100,
              701921,
              700859,
              700926,
              701054,
              701120,
              701353,
              701408,
              701541,
              701618,
              701462,
              701905,
              701945,
              702292,
              702287,
              702328,
              702330,
              702406,
              702434,
              702460,
              702597,
              702484,
              702509,
              702853,
              702929,
              702943,
              702532,
              702523,
              702698,
              702563,
              702592,
              702668,
              702735,
              702806,
              702779,
              702823,
              702859
    )
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM UNAM_Bibliotecas.dbo.DatosTesisPDF
WHERE migrado IS NULL
AND FechaProcesado = '22/07/2024'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM UNAM_Bibliotecas.dbo.DatosTesisPDF
WHERE migrado IS NULL
AND FechaProcesado = ''
;-- -. . -..- - / . -. - .-. -.--
Peninsular
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.BASE_Polizas_Contables
SET TOMO = '2/8'
    WHERE NumCaja = '674' AND LEGAJO = 3
AND TOMO = '45506'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.BASE_Polizas_Contables
SET TOMO = '2/8'
    WHERE NumCaja = '674' AND LEGAJO = 2
AND TOMO = '45506'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.BASE_Polizas_Contables
SET TOMO = '3/8'
    WHERE NumCaja = '674' AND LEGAJO = 3
AND TOMO = '45507'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.BASE_Polizas_Contables
SET TOMO = '4/8'
    WHERE NumCaja = '674' AND LEGAJO = 4
AND TOMO = '45508'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.BASE_Polizas_Contables
SET TOMO = '5/8'
    WHERE NumCaja = '674' AND LEGAJO = 5
AND TOMO = '45509'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.BASE_Polizas_Contables
SET TOMO = '6/8'
    WHERE NumCaja = '674' AND LEGAJO = 6
AND TOMO = '45510'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.BASE_Polizas_Contables
SET TOMO = '7/8'
    WHERE NumCaja = '674' AND LEGAJO = 7
AND TOMO = '45511'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.BASE_Polizas_Contables
SET TOMO = '8/8'
    WHERE NumCaja = '674' AND LEGAJO = 8
AND TOMO = '45512'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM Peninsular.dbo.BASE_Polizas_Contables
WHERE CAJA = 675
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM Peninsular.dbo.BASE_Polizas_Contables
WHERE NumCaja = 675
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM Peninsular.dbo.BASE_Polizas_Contables
WHERE NumCaja = 675 AND LEGAJO = 1
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.BASE_Polizas_Contables
SET TOMO = '1/9'
    WHERE NumCaja = 675
      AND LEGAJO = 1
AND TOMO = '45536'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM Peninsular.dbo.BASE_Polizas_Contables
    WHERE NumCaja = 675
      AND LEGAJO = 2
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.BASE_Polizas_Contables
SET TOMO = '2/9'
    WHERE NumCaja = 675
      AND LEGAJO = 1
      AND TOMO = '45537'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.BASE_Polizas_Contables
SET TOMO = '3/9'
    WHERE NumCaja = 675
      AND LEGAJO = 1
      AND TOMO = '45538'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.BASE_Polizas_Contables
SET TOMO = '4/9'
    WHERE NumCaja = 675
      AND LEGAJO = 1
      AND TOMO = '45539'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.BASE_Polizas_Contables
SET TOMO = '5/9'
    WHERE NumCaja = 675
      AND LEGAJO = 1
      AND TOMO = '45540'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.BASE_Polizas_Contables
SET TOMO = '6/9'
    WHERE NumCaja = 675
      AND LEGAJO = 1
      AND TOMO = '45541'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.BASE_Polizas_Contables
SET TOMO = '7/9'
    WHERE NumCaja = 675
      AND LEGAJO = 1
      AND TOMO = '45542'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.BASE_Polizas_Contables
SET TOMO = '8/9'
    WHERE NumCaja = 675
      AND LEGAJO = 1
      AND TOMO = '45543'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.BASE_Polizas_Contables
SET TOMO = '9/9'
    WHERE NumCaja = 675
      AND LEGAJO = 1
      AND TOMO = '45544'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.BASE_Polizas_Contables
SET TOMO = '2/9'
    WHERE TOMO = '45537'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.BASE_Polizas_Contables
SET TOMO = '3/9'
    WHERE TOMO = '45538'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.BASE_Polizas_Contables
SET TOMO = '4/9'
    WHERE TOMO = '45539'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.BASE_Polizas_Contables
SET TOMO = '5/9'
    WHERE TOMO = '45540'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.BASE_Polizas_Contables
SET TOMO = '6/9'
    WHERE TOMO = '45541'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.BASE_Polizas_Contables
SET TOMO = '7/9'
    WHERE TOMO = '45542'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.BASE_Polizas_Contables
SET TOMO = '8/9'
    WHERE TOMO = '45543'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.BASE_Polizas_Contables
SET TOMO = '9/9'
    WHERE TOMO = '45544'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM Peninsular.dbo.BASE_Polizas_Contables
    WHERE NumCaja = 675
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM Peninsular.dbo.BASE_Polizas_Contables
    WHERE NumCaja = 676
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.BASE_Polizas_Contables
SET TOMO = '1/7'
    WHERE TOMO = '45474'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.BASE_Polizas_Contables
SET TOMO = '2/7'
    WHERE TOMO = '45475'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.BASE_Polizas_Contables
SET TOMO = '3/7'
    WHERE TOMO = '45476'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.BASE_Polizas_Contables
SET TOMO = '4/7'
    WHERE TOMO = '45477'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.BASE_Polizas_Contables
SET TOMO = '5/7'
    WHERE TOMO = '45478'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.BASE_Polizas_Contables
SET TOMO = '6/7'
    WHERE TOMO = '45479'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.BASE_Polizas_Contables
SET TOMO = '7/7'
    WHERE TOMO = '45480'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM Peninsular.dbo.BASE_Polizas_Contables
    WHERE NumCaja = 677
;-- -. . -..- - / . -. - .-. -.--
SELECT facultad          AS CARPETA1
     , documentacionPert AS CARPETA2
     , llave             AS CARPETA3
     , ''                AS ARCHIVO
     , Paginas
     , A.DID
     , Path
    FROM UNAM_Bibliotecas.dbo.DatosLibrosPDF A
             INNER JOIN UNAM_Bibliotecas.dbo.DocumentosLibrosPDF B ON A.DID = B.DID
    WHERE migrado IS NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM Peninsular.dbo.Datos_CorteCaja
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM Peninsular.dbo.Datos_CorteCaja
WHERE Etiqueta = 'B302951'
;-- -. . -..- - / . -. - .-. -.--
SELECT facultad
     , documentacionPert
     , llave
     , clasificacion
     , Matriz
     , ADQ
     , titulo
     , año
     , Paginas
    FROM UNAM_Bibliotecas.dbo.DatosLibrosPDF A
             INNER JOIN UNAM_Bibliotecas.dbo.DocumentosLibrosPDF B ON A.DID = B.DID
    WHERE A.DID IN (
                    698552,
                    723101,
                    728219,
                    728222,
                    728225,
                    725287,
                    728220,
                    728221,
                    728328,
                    728218,
                    728223,
                    728224,
                    728226,
                    729371,
                    729332,
                    731865,
                    730759,
                    730384,
                    730425,
                    733476,
                    734379,
                    735152,
                    734375,
                    734990,
                    734748,
                    734534,
                    735529,
                    735795,
                    736382,
                    736404,
                    736132,
                    736425,
                    735209,
                    736519,
                    736439,
                    736529,
                    736528,
                    736526,
                    736531,
                    736530,
                    736534,
                    736583,
                    736588,
                    736597,
                    736602,
                    736601,
                    736594,
                    736595,
                    736596,
                    736590,
                    736609,
                    736896,
                    736610,
                    736605,
                    736603,
                    736608,
                    736807,
                    737099,
                    737294,
                    737239,
                    737021,
                    737390,
                    737972,
                    737462,
                    737974,
                    737976,
                    738149,
                    737992,
                    738070,
                    741698,
                    741687,
                    740923,
                    741711,
                    741899,
                    739684,
                    739952,
                    738446,
                    739957,
                    740240,
                    738404,
                    738470,
                    740233
        )
;-- -. . -..- - / . -. - .-. -.--
SELECT facultad
     , documentacionPert
     , llave
     , clasificacion
     , Matriz
     , ADQ
     , titulo
     , año
     , Paginas
    FROM UNAM_Bibliotecas.dbo.DatosLibrosPDF A
             INNER JOIN UNAM_Bibliotecas.dbo.DocumentosLibrosPDF B ON A.DID = B.DID
    WHERE migrado IS NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT facultad
     , documentacionPert
     , llave
     , 'Archivo' AS Archivo
     , clasificacion
     , Matriz
     , ADQ
     , titulo
     , año
     , Paginas
    FROM UNAM_Bibliotecas.dbo.DatosLibrosPDF A
             INNER JOIN UNAM_Bibliotecas.dbo.DocumentosLibrosPDF B ON A.DID = B.DID
    WHERE migrado IS NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM UNAM_Bibliotecas.dbo.cat_Tesis
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM UNAM_Bibliotecas.dbo.DatosTesisPDF
;-- -. . -..- - / . -. - .-. -.--
SELECT facultad
     , documentacionPert
     , tesis
     , ''    AS ARCHIVO
     , Autor
     , Titulo
     , Paginas
     , A.DID
     , 'PDF' AS PDFoTIFF
     , Path
    FROM UNAM_Bibliotecas.dbo.DatosTesisPDF A
             INNER JOIN UNAM_Bibliotecas.dbo.DocumentosTesisPDF B ON A.DID = B.DID
    WHERE migrado IS NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT migrado, FechaProcesado, COUNT(*), SUM(Paginas)
    FROM UNAM_Bibliotecas.dbo.DatosTesisPDF
    WHERE migrado IS NULL
    GROUP BY migrado, FechaProcesado
    ORDER BY CONVERT(DATE, FechaProcesado, 103) DESC
;-- -. . -..- - / . -. - .-. -.--
UPDATE A
SET A.FACULTAD = 'FE',
    A.documentacionPert = 'TESIS',
    A.Autor = B.Autor,
    A.Titulo = B.Titulo,
    A.año = B.Año,
    A.Caja = B.NoCaja
FROM UNAM_Bibliotecas.dbo.DatosTesisPDF A
INNER JOIN UNAM_Bibliotecas.dbo.cat_Tesis B ON A.tesis = B.Sistema
WHERE migrado IS NULL AND Paginas IS NOT NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT facultad
     , documentacionPert
     , tesis
     , ''    AS ARCHIVO
     , Autor
     , Titulo
     , Paginas
     , A.DID
     , 'PDF' AS PDFoTIFF
     , Path
    FROM UNAM_Bibliotecas.dbo.DatosTesisPDF A
             INNER JOIN UNAM_Bibliotecas.dbo.DocumentosTesisPDF B ON A.DID = B.DID
    WHERE migrado IS NULL AND Paginas IS NOT NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT facultad
     , documentacionPert
     , tesis
     , ''    AS ARCHIVO
     , Autor
     , Titulo
     , Paginas
    FROM UNAM_Bibliotecas.dbo.DatosTesisPDF A
             INNER JOIN UNAM_Bibliotecas.dbo.DocumentosTesisPDF B ON A.DID = B.DID
    WHERE migrado IS NULL AND Paginas IS NOT NULL
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO [dbo].[BASE_Corte_Caja] ( [NumCajaLegajoNumero], [NumCaja], [CAJA], [LEGAJO], [TIPODOCUMENTO], [NUMERO]
                                    , [CIAGENERADORA], [FECHA], [TOMO], [VIGENCIA], [ID], [OFICINAS_OBRA], [CONCEPTO]
                                    , [IMPORTE], [CANT_ANEXOS])
    VALUES ( '25172001POLIZA DE INGRESOS', '25', 'ARCH-GHI-CONT-1738', '1', 'POLIZA DE INGRESOS', '72001'
           , 'LA PENINSULAR COMPAÑÍA CONSTRUCTORA, S.A. DE C.V.', '02/01/2015', '1/10', '2023', '72'
           , 'EMERGENCIAS TLAPA II GUERRERO', 'NOM 22326 LR CAT 01 CLP ', '28330.73', '2')
;-- -. . -..- - / . -. - .-. -.--
UPDATE ddoc_Control.trx.Batches
SET ModuleId = 128
  , StatusId = 2
    WHERE BatchName IN (SELECT BatchName COLLATE DATABASE_DEFAULT
                            FROM KCSystem.dbo.BatchCatalog
                            WHERE ProcessID = 5
                              AND State = 128
                              AND ClassName LIKE '%peninsular%')
      AND Batches.AuditId IS NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT FechaProcesado,
    COUNT(*)        AS Documentos
     , SUM(Paginas) AS Páginas
    FROM BestDay.dbo.DatosBestDay
    WHERE Migrado IS NULL
      AND Paginas IS NOT NULL
GROUP BY FechaProcesado
ORDER BY CONVERT(DATE, FechaProcesado, 103) ASC
;-- -. . -..- - / . -. - .-. -.--
SELECT FechaProcesado
     , migrado
     , COUNT(*)     AS DOCUMENTOS
     , SUM(Paginas) AS PAGINAS
    FROM UNAM_Bibliotecas.dbo.DatosRevistasCarpetaArticulos
    GROUP BY FechaProcesado, migrado
    ORDER BY CONVERT(DATE, FechaProcesado, 103)
;-- -. . -..- - / . -. - .-. -.--
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
    WHERE migrado IS NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT facultad
     , documentacionPert
     , tituloRevista
     , año
     , volumen
     , numeroasi
     , archivo
     , A.DID
     , Paginas
    FROM UNAM_Bibliotecas.dbo.DatosRevistasCarpetaArticulos A
             INNER JOIN UNAM_Bibliotecas.dbo.DocumentosRevistasCarpetaArticulos B ON A.DID = B.DID
    WHERE migrado IS NULL
;-- -. . -..- - / . -. - .-. -.--
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
;-- -. . -..- - / . -. - .-. -.--
UPDATE UNAM_Bibliotecas.dbo.DatosRevistasCarpetaArticulos
SET migrado = 1
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
;-- -. . -..- - / . -. - .-. -.--
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
;-- -. . -..- - / . -. - .-. -.--
SELECT facultad
     , documentacionPert
     , llave
     , ubicacion
     , nomenclaturaAdq
     , autor
     , titulo
     , Paginas
    FROM UNAM_Bibliotecas.dbo.DatosFolletosPDF A
             INNER JOIN UNAM_Bibliotecas.dbo.DocumentosFolletosPDF B ON A.DID = B.DID
    WHERE A.DID IN (
                    705140,
                    704953,
                    704668,
                    706272,
                    704754,
                    704756,
                    704885,
                    704755,
                    706268,
                    704751,
                    704746,
                    704748,
                    706274,
                    706273,
                    704882
        )
;-- -. . -..- - / . -. - .-. -.--
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
;-- -. . -..- - / . -. - .-. -.--
SELECT facultad
     , documentacionPert
     , tituloRevista
     , año
     , volumen
     , numeroasi
     , archivo
     , A.DID
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
;-- -. . -..- - / . -. - .-. -.--
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
;-- -. . -..- - / . -. - .-. -.--
SELECT facultad
     , documentacionPert
     , llave
     , ubicacion
     , nomenclaturaAdq
     , autor
     , titulo
     , Paginas
     , A.DID
     , Path
    FROM UNAM_Bibliotecas.dbo.DatosFolletosPDF A
             INNER JOIN UNAM_Bibliotecas.dbo.DocumentosFolletosPDF B ON A.DID = B.DID
    WHERE A.DID IN (
                    705140,
                    704953,
                    704668,
                    706272,
                    704754,
                    704756,
                    704885,
                    704755,
                    706268,
                    704751,
                    704746,
                    704748,
                    706274,
                    706273,
                    704882
        )
;-- -. . -..- - / . -. - .-. -.--
SELECT migrado, COUNT(*) AS DOCUMENTOS, SUM(Paginas) AS PAGINAS
    FROM UNAM_Bibliotecas.dbo.DatosFolletosPDF
    GROUP BY migrado
;-- -. . -..- - / . -. - .-. -.--
SELECT facultad
     , documentacionPert
     , llave
     , ubicacion
     , nomenclaturaAdq
     , autor
     , titulo
     , Paginas
     , A.DID
     , Path
    FROM UNAM_Bibliotecas.dbo.DatosFolletosPDF A
             INNER JOIN UNAM_Bibliotecas.dbo.DocumentosFolletosPDF B ON A.DID = B.DID
    WHERE migrado IS NULL
;-- -. . -..- - / . -. - .-. -.--
UPDATE UNAM_Bibliotecas.dbo.DatosFolletosPDF
SET migrado = 1
    WHERE DID IN (
                  812733,
                  801827,
                  812723,
                  812730,
                  812736
        )
;-- -. . -..- - / . -. - .-. -.--
SELECT migrado, FechaProcesado, COUNT(*), SUM(Paginas)
    FROM UNAM_Bibliotecas.dbo.DatosLibrosPDF
    GROUP BY migrado, FechaProcesado 
ORDER BY CONVERT(DATE, FechaProcesado, 103) DESC
;-- -. . -..- - / . -. - .-. -.--
UPDATE UNAM_Bibliotecas.dbo.DatosLibrosPDF
SET migrado = 1
WHERE migrado IS NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT facultad,
       documentacionPert,
       Clasificación,
       clasificacionArch,
       Ubicación,
       Título,
       Fecha,
       Observaciones,
       Paginas,
       A.DID,
       SUBSTRING(Path,63,9) AS PATH
FROM UNAM_Bibliotecas.dbo.DatosClasificacionArchPDF A
INNER JOIN UNAM_Bibliotecas.dbo.DocumentosClasificacionArchPDF B ON A.DID = B.DID
WHERE A.DID IN (
                704750,
                698924,
                700160,
                683920,
                697341
    )
;-- -. . -..- - / . -. - .-. -.--
SELECT facultad
     , documentacionPert
     , llave
     , 'Archivo' AS Archivo
     , clasificacion
     , Matriz
     , ADQ
     , titulo
     , año
     , Paginas
    FROM UNAM_Bibliotecas.dbo.DatosLibrosPDF A
             INNER JOIN UNAM_Bibliotecas.dbo.DocumentosLibrosPDF B
                        ON A.DID = B.DID
    WHERE migrado IS NULLSELECT migrado, FechaProcesado, COUNT (*), SUM (Paginas)
    FROM UNAM_Bibliotecas.dbo.DatosLibrosPDF
    GROUP BY migrado, FechaProcesado
    ORDER BY CONVERT (DATE, FechaProcesado, 103) DESCSELECT *
    FROM UNAM_Bibliotecas.dbo.DatosClasificacionArchPDFWHERE BatchName IN ( 'UNAM-BIBLIOTECAS - CONCLUSIONES DEL PRIMER CONGRESO NACIONAL DE PUEBLOS INDIGENAS PUIC_C2'
       , 'UNAM-BIBLIOTECAS - FARMACOPEA LATINO-AMERICANA PUIC_C1'
       , 'UNAM-BIBLIOTECAS - LA OFICINA DE FARMACIA O REPERTORIO UNIVERSAL DE FARMACIA PRACTICA PUIC_C2'
       , 'UNAM-BIBLIOTECAS - LA POBLACION DEL VALLE DE TEOTIHUACAN TOMO I PUIC_C1'
       , 'UNAM-BIBLIOTECAS - NUEVA FARMACOPEA MEXICANA DE LA SOCIEDAD FARMACEUTICA DE MEXICO 1874 PUIC_C2'
       , 'UNAM-BIBLIOTECAS - REVUE DU MONDE CATHOLIQUE VOL 20 1898_C14'
       , 'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 01'
       , 'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 02'
       , 'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 03' )
;-- -. . -..- - / . -. - .-. -.--
SELECT migrado, FechaProcesado, COUNT(*), SUM(Paginas)
    FROM UNAM_Bibliotecas.dbo.DatosLibrosPDF
    GROUP BY migrado, FechaProcesado
    ORDER BY CONVERT(DATE, FechaProcesado, 103) DESCSELECT *
    FROM UNAM_Bibliotecas.dbo.DatosClasificacionArchPDFWHERE BatchName IN ( 'UNAM-BIBLIOTECAS - CONCLUSIONES DEL PRIMER CONGRESO NACIONAL DE PUEBLOS INDIGENAS PUIC_C2'
       , 'UNAM-BIBLIOTECAS - FARMACOPEA LATINO-AMERICANA PUIC_C1'
       , 'UNAM-BIBLIOTECAS - LA OFICINA DE FARMACIA O REPERTORIO UNIVERSAL DE FARMACIA PRACTICA PUIC_C2'
       , 'UNAM-BIBLIOTECAS - LA POBLACION DEL VALLE DE TEOTIHUACAN TOMO I PUIC_C1'
       , 'UNAM-BIBLIOTECAS - NUEVA FARMACOPEA MEXICANA DE LA SOCIEDAD FARMACEUTICA DE MEXICO 1874 PUIC_C2'
       , 'UNAM-BIBLIOTECAS - REVUE DU MONDE CATHOLIQUE VOL 20 1898_C14'
       , 'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 01'
       , 'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 02'
       , 'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 03' )
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM UNAM_Bibliotecas.dbo.DatosClasificacionArchPDF
    WHERE BatchName IN ('UNAM-BIBLIOTECAS - CONCLUSIONES DEL PRIMER CONGRESO NACIONAL DE PUEBLOS INDIGENAS PUIC_C2',
                        'UNAM-BIBLIOTECAS - FARMACOPEA LATINO-AMERICANA PUIC_C1',
                        'UNAM-BIBLIOTECAS - LA OFICINA DE FARMACIA O REPERTORIO UNIVERSAL DE FARMACIA PRACTICA PUIC_C2',
                        'UNAM-BIBLIOTECAS - LA POBLACION DEL VALLE DE TEOTIHUACAN TOMO I PUIC_C1',
                        'UNAM-BIBLIOTECAS - NUEVA FARMACOPEA MEXICANA DE LA SOCIEDAD FARMACEUTICA DE MEXICO 1874 PUIC_C2',
                        'UNAM-BIBLIOTECAS - REVUE DU MONDE CATHOLIQUE VOL 20 1898_C14',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 01',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 02',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 03')
;-- -. . -..- - / . -. - .-. -.--
SELECT facultad          AS CARPETA1
     , documentacionPert AS CARPETA2
     , llave             AS CARPETA3
     , ''                AS ARCHIVO
     , Paginas
     , A.DID
     , Path
    FROM UNAM_Bibliotecas.dbo.DatosLibrosPDF A
             INNER JOIN UNAM_Bibliotecas.dbo.DocumentosLibrosPDF B ON A.DID = B.DID
    WHERE BatchName IN ('UNAM-BIBLIOTECAS - CONCLUSIONES DEL PRIMER CONGRESO NACIONAL DE PUEBLOS INDIGENAS PUIC_C2',
                        'UNAM-BIBLIOTECAS - FARMACOPEA LATINO-AMERICANA PUIC_C1',
                        'UNAM-BIBLIOTECAS - LA OFICINA DE FARMACIA O REPERTORIO UNIVERSAL DE FARMACIA PRACTICA PUIC_C2',
                        'UNAM-BIBLIOTECAS - LA POBLACION DEL VALLE DE TEOTIHUACAN TOMO I PUIC_C1',
                        'UNAM-BIBLIOTECAS - NUEVA FARMACOPEA MEXICANA DE LA SOCIEDAD FARMACEUTICA DE MEXICO 1874 PUIC_C2',
                        'UNAM-BIBLIOTECAS - REVUE DU MONDE CATHOLIQUE VOL 20 1898_C14',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 01',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 02',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 03')
;-- -. . -..- - / . -. - .-. -.--
SELECT 'LIBROS' AS FACULTAD,
       documentacionPert,
       Clasificación,
       clasificacionArch,
       Ubicación,
       Título,
       Fecha,
       Observaciones,
       Paginas,
       A.DID,
       SUBSTRING(Path,50,100) AS PATH
    FROM UNAM_Bibliotecas.dbo.DatosClasificacionArchPDF A
             INNER JOIN UNAM_Bibliotecas.dbo.DocumentosClasificacionArchPDF B ON A.DID = B.DID
    WHERE BatchName IN ('UNAM-BIBLIOTECAS - CONCLUSIONES DEL PRIMER CONGRESO NACIONAL DE PUEBLOS INDIGENAS PUIC_C2',
                        'UNAM-BIBLIOTECAS - FARMACOPEA LATINO-AMERICANA PUIC_C1',
                        'UNAM-BIBLIOTECAS - LA OFICINA DE FARMACIA O REPERTORIO UNIVERSAL DE FARMACIA PRACTICA PUIC_C2',
                        'UNAM-BIBLIOTECAS - LA POBLACION DEL VALLE DE TEOTIHUACAN TOMO I PUIC_C1',
                        'UNAM-BIBLIOTECAS - NUEVA FARMACOPEA MEXICANA DE LA SOCIEDAD FARMACEUTICA DE MEXICO 1874 PUIC_C2',
                        'UNAM-BIBLIOTECAS - REVUE DU MONDE CATHOLIQUE VOL 20 1898_C14',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 01',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 02',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 03')
;-- -. . -..- - / . -. - .-. -.--
SELECT 'LIBROS' AS FACULTAD,
       documentacionPert,
       Clasificación,
       clasificacionArch,
       Ubicación,
       Título,
       Fecha,
       Observaciones,
       Paginas,
       A.DID,
       SUBSTRING(Path,80,100) AS PATH
    FROM UNAM_Bibliotecas.dbo.DatosClasificacionArchPDF A
             INNER JOIN UNAM_Bibliotecas.dbo.DocumentosClasificacionArchPDF B ON A.DID = B.DID
    WHERE BatchName IN ('UNAM-BIBLIOTECAS - CONCLUSIONES DEL PRIMER CONGRESO NACIONAL DE PUEBLOS INDIGENAS PUIC_C2',
                        'UNAM-BIBLIOTECAS - FARMACOPEA LATINO-AMERICANA PUIC_C1',
                        'UNAM-BIBLIOTECAS - LA OFICINA DE FARMACIA O REPERTORIO UNIVERSAL DE FARMACIA PRACTICA PUIC_C2',
                        'UNAM-BIBLIOTECAS - LA POBLACION DEL VALLE DE TEOTIHUACAN TOMO I PUIC_C1',
                        'UNAM-BIBLIOTECAS - NUEVA FARMACOPEA MEXICANA DE LA SOCIEDAD FARMACEUTICA DE MEXICO 1874 PUIC_C2',
                        'UNAM-BIBLIOTECAS - REVUE DU MONDE CATHOLIQUE VOL 20 1898_C14',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 01',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 02',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 03')
;-- -. . -..- - / . -. - .-. -.--
SELECT 'LIBROS' AS FACULTAD,
       documentacionPert,
       Clasificación,
       clasificacionArch,
       Ubicación,
       Título,
       Fecha,
       Observaciones,
       Paginas,
       A.DID,
       SUBSTRING(Path,70,100) AS PATH
    FROM UNAM_Bibliotecas.dbo.DatosClasificacionArchPDF A
             INNER JOIN UNAM_Bibliotecas.dbo.DocumentosClasificacionArchPDF B ON A.DID = B.DID
    WHERE BatchName IN ('UNAM-BIBLIOTECAS - CONCLUSIONES DEL PRIMER CONGRESO NACIONAL DE PUEBLOS INDIGENAS PUIC_C2',
                        'UNAM-BIBLIOTECAS - FARMACOPEA LATINO-AMERICANA PUIC_C1',
                        'UNAM-BIBLIOTECAS - LA OFICINA DE FARMACIA O REPERTORIO UNIVERSAL DE FARMACIA PRACTICA PUIC_C2',
                        'UNAM-BIBLIOTECAS - LA POBLACION DEL VALLE DE TEOTIHUACAN TOMO I PUIC_C1',
                        'UNAM-BIBLIOTECAS - NUEVA FARMACOPEA MEXICANA DE LA SOCIEDAD FARMACEUTICA DE MEXICO 1874 PUIC_C2',
                        'UNAM-BIBLIOTECAS - REVUE DU MONDE CATHOLIQUE VOL 20 1898_C14',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 01',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 02',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 03')
;-- -. . -..- - / . -. - .-. -.--
SELECT 'LIBROS' AS FACULTAD,
       documentacionPert,
       Clasificación,
       clasificacionArch,
       Ubicación,
       Título,
       Fecha,
       Observaciones,
       Paginas,
       A.DID,
       SUBSTRING(Path,60,100) AS PATH
    FROM UNAM_Bibliotecas.dbo.DatosClasificacionArchPDF A
             INNER JOIN UNAM_Bibliotecas.dbo.DocumentosClasificacionArchPDF B ON A.DID = B.DID
    WHERE BatchName IN ('UNAM-BIBLIOTECAS - CONCLUSIONES DEL PRIMER CONGRESO NACIONAL DE PUEBLOS INDIGENAS PUIC_C2',
                        'UNAM-BIBLIOTECAS - FARMACOPEA LATINO-AMERICANA PUIC_C1',
                        'UNAM-BIBLIOTECAS - LA OFICINA DE FARMACIA O REPERTORIO UNIVERSAL DE FARMACIA PRACTICA PUIC_C2',
                        'UNAM-BIBLIOTECAS - LA POBLACION DEL VALLE DE TEOTIHUACAN TOMO I PUIC_C1',
                        'UNAM-BIBLIOTECAS - NUEVA FARMACOPEA MEXICANA DE LA SOCIEDAD FARMACEUTICA DE MEXICO 1874 PUIC_C2',
                        'UNAM-BIBLIOTECAS - REVUE DU MONDE CATHOLIQUE VOL 20 1898_C14',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 01',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 02',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 03')
;-- -. . -..- - / . -. - .-. -.--
SELECT 'LIBROS' AS FACULTAD,
       documentacionPert,
       Clasificación,
       clasificacionArch,
       Ubicación,
       Título,
       Fecha,
       Observaciones,
       Paginas,
       A.DID,
       SUBSTRING(Path,63,100) AS PATH
    FROM UNAM_Bibliotecas.dbo.DatosClasificacionArchPDF A
             INNER JOIN UNAM_Bibliotecas.dbo.DocumentosClasificacionArchPDF B ON A.DID = B.DID
    WHERE BatchName IN ('UNAM-BIBLIOTECAS - CONCLUSIONES DEL PRIMER CONGRESO NACIONAL DE PUEBLOS INDIGENAS PUIC_C2',
                        'UNAM-BIBLIOTECAS - FARMACOPEA LATINO-AMERICANA PUIC_C1',
                        'UNAM-BIBLIOTECAS - LA OFICINA DE FARMACIA O REPERTORIO UNIVERSAL DE FARMACIA PRACTICA PUIC_C2',
                        'UNAM-BIBLIOTECAS - LA POBLACION DEL VALLE DE TEOTIHUACAN TOMO I PUIC_C1',
                        'UNAM-BIBLIOTECAS - NUEVA FARMACOPEA MEXICANA DE LA SOCIEDAD FARMACEUTICA DE MEXICO 1874 PUIC_C2',
                        'UNAM-BIBLIOTECAS - REVUE DU MONDE CATHOLIQUE VOL 20 1898_C14',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 01',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 02',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 03')
;-- -. . -..- - / . -. - .-. -.--
SELECT facultad
     , documentacionPert
     , REPLACE(Clasificación, '/', '-')     AS Clasificación
     , REPLACE(clasificacionArch, '/', '-') AS clasificacionArch
     , Ubicación
     , Título
     , Fecha
     , Observaciones
     , Paginas
     , A.DID
     , SUBSTRING(Path, 63, 100)             AS PATH
    FROM UNAM_Bibliotecas.dbo.DatosClasificacionArchPDF A
             INNER JOIN UNAM_Bibliotecas.dbo.DocumentosClasificacionArchPDF B ON A.DID = B.DID
    WHERE BatchName IN ('UNAM-BIBLIOTECAS - CONCLUSIONES DEL PRIMER CONGRESO NACIONAL DE PUEBLOS INDIGENAS PUIC_C2',
                        'UNAM-BIBLIOTECAS - FARMACOPEA LATINO-AMERICANA PUIC_C1',
                        'UNAM-BIBLIOTECAS - LA OFICINA DE FARMACIA O REPERTORIO UNIVERSAL DE FARMACIA PRACTICA PUIC_C2',
                        'UNAM-BIBLIOTECAS - LA POBLACION DEL VALLE DE TEOTIHUACAN TOMO I PUIC_C1',
                        'UNAM-BIBLIOTECAS - NUEVA FARMACOPEA MEXICANA DE LA SOCIEDAD FARMACEUTICA DE MEXICO 1874 PUIC_C2',
                        'UNAM-BIBLIOTECAS - REVUE DU MONDE CATHOLIQUE VOL 20 1898_C14',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 01',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 02',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 03')
;-- -. . -..- - / . -. - .-. -.--
SELECT facultad
     , documentacionPert
     , REPLACE(Clasificación, '/', '-')     AS Clasificación
     , REPLACE(clasificacionArch, '/', '-') AS clasificacionArch
     , REPLACE(Ubicación, '/', '-') AS Ubicación
     , Título
     , Fecha
     , Observaciones
     , Paginas
     , A.DID
     , SUBSTRING(Path, 63, 100)             AS PATH
    FROM UNAM_Bibliotecas.dbo.DatosClasificacionArchPDF A
             INNER JOIN UNAM_Bibliotecas.dbo.DocumentosClasificacionArchPDF B ON A.DID = B.DID
    WHERE BatchName IN ('UNAM-BIBLIOTECAS - CONCLUSIONES DEL PRIMER CONGRESO NACIONAL DE PUEBLOS INDIGENAS PUIC_C2',
                        'UNAM-BIBLIOTECAS - FARMACOPEA LATINO-AMERICANA PUIC_C1',
                        'UNAM-BIBLIOTECAS - LA OFICINA DE FARMACIA O REPERTORIO UNIVERSAL DE FARMACIA PRACTICA PUIC_C2',
                        'UNAM-BIBLIOTECAS - LA POBLACION DEL VALLE DE TEOTIHUACAN TOMO I PUIC_C1',
                        'UNAM-BIBLIOTECAS - NUEVA FARMACOPEA MEXICANA DE LA SOCIEDAD FARMACEUTICA DE MEXICO 1874 PUIC_C2',
                        'UNAM-BIBLIOTECAS - REVUE DU MONDE CATHOLIQUE VOL 20 1898_C14',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 01',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 02',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 03')
;-- -. . -..- - / . -. - .-. -.--
SELECT facultad
     , documentacionPert
     , REPLACE(Clasificación, '/', '-')     AS Clasificación
     , REPLACE(clasificacionArch, '/', '-') AS clasificacionArch
     , REPLACE(Ubicación, '/', '-') AS Ubicación
     , REPLACE(Título, '/', '-') AS Título
     , Fecha
     , Observaciones
     , Paginas
     , A.DID
     , SUBSTRING(Path, 63, 100)             AS PATH
    FROM UNAM_Bibliotecas.dbo.DatosClasificacionArchPDF A
             INNER JOIN UNAM_Bibliotecas.dbo.DocumentosClasificacionArchPDF B ON A.DID = B.DID
    WHERE BatchName IN ('UNAM-BIBLIOTECAS - CONCLUSIONES DEL PRIMER CONGRESO NACIONAL DE PUEBLOS INDIGENAS PUIC_C2',
                        'UNAM-BIBLIOTECAS - FARMACOPEA LATINO-AMERICANA PUIC_C1',
                        'UNAM-BIBLIOTECAS - LA OFICINA DE FARMACIA O REPERTORIO UNIVERSAL DE FARMACIA PRACTICA PUIC_C2',
                        'UNAM-BIBLIOTECAS - LA POBLACION DEL VALLE DE TEOTIHUACAN TOMO I PUIC_C1',
                        'UNAM-BIBLIOTECAS - NUEVA FARMACOPEA MEXICANA DE LA SOCIEDAD FARMACEUTICA DE MEXICO 1874 PUIC_C2',
                        'UNAM-BIBLIOTECAS - REVUE DU MONDE CATHOLIQUE VOL 20 1898_C14',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 01',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 02',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 03')
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM UNAM_Bibliotecas.dbo.DatosClasificacionArchPDF A
             INNER JOIN UNAM_Bibliotecas.dbo.DocumentosClasificacionArchPDF B ON A.DID = B.DID
    WHERE BatchName IN ('UNAM-BIBLIOTECAS - CONCLUSIONES DEL PRIMER CONGRESO NACIONAL DE PUEBLOS INDIGENAS PUIC_C2',
                        'UNAM-BIBLIOTECAS - FARMACOPEA LATINO-AMERICANA PUIC_C1',
                        'UNAM-BIBLIOTECAS - LA OFICINA DE FARMACIA O REPERTORIO UNIVERSAL DE FARMACIA PRACTICA PUIC_C2',
                        'UNAM-BIBLIOTECAS - LA POBLACION DEL VALLE DE TEOTIHUACAN TOMO I PUIC_C1',
                        'UNAM-BIBLIOTECAS - NUEVA FARMACOPEA MEXICANA DE LA SOCIEDAD FARMACEUTICA DE MEXICO 1874 PUIC_C2',
                        'UNAM-BIBLIOTECAS - REVUE DU MONDE CATHOLIQUE VOL 20 1898_C14',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 01',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 02',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 03')
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM UNAM_Bibliotecas.dbo.cat_Archivo
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM UNAM_Bibliotecas.dbo.cat_Archivo A
INNER JOIN UNAM_Bibliotecas.dbo.DatosClasificacionArchPDF B ON A.Clasificación = B.Clasificación
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM UNAM_Bibliotecas.dbo.cat_Archivo A
             INNER JOIN UNAM_Bibliotecas.dbo.DatosClasificacionArchPDF B ON A.Clasificación = B.Clasificación
    WHERE BatchName IN ('UNAM-BIBLIOTECAS - CONCLUSIONES DEL PRIMER CONGRESO NACIONAL DE PUEBLOS INDIGENAS PUIC_C2',
                        'UNAM-BIBLIOTECAS - FARMACOPEA LATINO-AMERICANA PUIC_C1',
                        'UNAM-BIBLIOTECAS - LA OFICINA DE FARMACIA O REPERTORIO UNIVERSAL DE FARMACIA PRACTICA PUIC_C2',
                        'UNAM-BIBLIOTECAS - LA POBLACION DEL VALLE DE TEOTIHUACAN TOMO I PUIC_C1',
                        'UNAM-BIBLIOTECAS - NUEVA FARMACOPEA MEXICANA DE LA SOCIEDAD FARMACEUTICA DE MEXICO 1874 PUIC_C2',
                        'UNAM-BIBLIOTECAS - REVUE DU MONDE CATHOLIQUE VOL 20 1898_C14',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 01',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 02',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 03')
;-- -. . -..- - / . -. - .-. -.--
SELECT A.Fecha
, B.Fecha
    FROM UNAM_Bibliotecas.dbo.cat_Archivo A
             INNER JOIN UNAM_Bibliotecas.dbo.DatosClasificacionArchPDF B ON A.Clasificación = B.Clasificación
    WHERE BatchName IN ('UNAM-BIBLIOTECAS - CONCLUSIONES DEL PRIMER CONGRESO NACIONAL DE PUEBLOS INDIGENAS PUIC_C2',
                        'UNAM-BIBLIOTECAS - FARMACOPEA LATINO-AMERICANA PUIC_C1',
                        'UNAM-BIBLIOTECAS - LA OFICINA DE FARMACIA O REPERTORIO UNIVERSAL DE FARMACIA PRACTICA PUIC_C2',
                        'UNAM-BIBLIOTECAS - LA POBLACION DEL VALLE DE TEOTIHUACAN TOMO I PUIC_C1',
                        'UNAM-BIBLIOTECAS - NUEVA FARMACOPEA MEXICANA DE LA SOCIEDAD FARMACEUTICA DE MEXICO 1874 PUIC_C2',
                        'UNAM-BIBLIOTECAS - REVUE DU MONDE CATHOLIQUE VOL 20 1898_C14',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 01',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 02',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 03')
;-- -. . -..- - / . -. - .-. -.--
SELECT facultad
     , documentacionPert
     , REPLACE(Clasificación, '/', '-')     AS Clasificación
     , REPLACE(clasificacionArch, '/', '-') AS clasificacionArch
     , REPLACE(Ubicación, '/', '-')         AS Ubicación
     , REPLACE(Título, '/', '-')            AS Título
     , Fecha
     , Observaciones
     , Paginas
     , A.DID
     , SUBSTRING(Path, 63, 100)             AS PATH
, BatchName
    FROM UNAM_Bibliotecas.dbo.DatosClasificacionArchPDF A
             INNER JOIN UNAM_Bibliotecas.dbo.DocumentosClasificacionArchPDF B ON A.DID = B.DID
    WHERE BatchName IN ('UNAM-BIBLIOTECAS - CONCLUSIONES DEL PRIMER CONGRESO NACIONAL DE PUEBLOS INDIGENAS PUIC_C2',
                        'UNAM-BIBLIOTECAS - FARMACOPEA LATINO-AMERICANA PUIC_C1',
                        'UNAM-BIBLIOTECAS - LA OFICINA DE FARMACIA O REPERTORIO UNIVERSAL DE FARMACIA PRACTICA PUIC_C2',
                        'UNAM-BIBLIOTECAS - LA POBLACION DEL VALLE DE TEOTIHUACAN TOMO I PUIC_C1',
                        'UNAM-BIBLIOTECAS - NUEVA FARMACOPEA MEXICANA DE LA SOCIEDAD FARMACEUTICA DE MEXICO 1874 PUIC_C2',
                        'UNAM-BIBLIOTECAS - REVUE DU MONDE CATHOLIQUE VOL 20 1898_C14',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 01',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 02',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 03')
;-- -. . -..- - / . -. - .-. -.--
SELECT facultad
     , documentacionPert
     , REPLACE(Clasificación, '/', '-')     AS Clasificación
     , REPLACE(clasificacionArch, '/', '-') AS clasificacionArch
     , REPLACE(Ubicación, '/', '-')         AS Ubicación
     , REPLACE(Título, '/', '-')            AS Título
     , Fecha
     , Observaciones
     , Paginas
     , A.DID
     , SUBSTRING(Path, 63, 100)             AS PATH
, BatchName
    FROM UNAM_Bibliotecas.dbo.DatosClasificacionArchPDF A
             INNER JOIN UNAM_Bibliotecas.dbo.DocumentosClasificacionArchPDF B ON A.DID = B.DID
;-- -. . -..- - / . -. - .-. -.--
SELECT facultad
     , documentacionPert
     , REPLACE(Clasificación, '/', '-')     AS Clasificación
     , REPLACE(clasificacionArch, '/', '-') AS clasificacionArch
     , REPLACE(Ubicación, '/', '-')         AS Ubicación
     , REPLACE(Título, '/', '-')            AS Título
     , Fecha
     , Observaciones
     , Paginas
     , A.DID
     , SUBSTRING(Path, 63, 100)             AS PATH
    FROM UNAM_Bibliotecas.dbo.DatosClasificacionArchPDF A
             INNER JOIN UNAM_Bibliotecas.dbo.DocumentosClasificacionArchPDF B ON A.DID = B.DID
    WHERE BatchName IN ('UNAM-BIBLIOTECAS - CONCLUSIONES DEL PRIMER CONGRESO NACIONAL DE PUEBLOS INDIGENAS PUIC_C2',
                        'UNAM-BIBLIOTECAS - FARMACOPEA LATINO-AMERICANA PUIC_C1',
                        'UNAM-BIBLIOTECAS - LA OFICINA DE FARMACIA O REPERTORIO UNIVERSAL DE FARMACIA PRACTICA PUIC_C2',
                        'UNAM-BIBLIOTECAS - LA POBLACION DEL VALLE DE TEOTIHUACAN TOMO I PUIC_C1',
                        'UNAM-BIBLIOTECAS - NUEVA FARMACOPEA MEXICANA DE LA SOCIEDAD FARMACEUTICA DE MEXICO 1874 PUIC_C2',
                        'UNAM-BIBLIOTECAS - REVUE DU MONDE CATHOLIQUE VOL 20 1898_C14',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 01',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 02',
                        'UNAM-BIBLIOTECAS - UNAM BIBLIOTECAS PUIC GRAN FORMATO_ LIBRO 03')
;-- -. . -..- - / . -. - .-. -.--
SELECT facultad
     , documentacionPert
     , REPLACE(Clasificación, '/', '-')     AS Clasificación
     , REPLACE(clasificacionArch, '/', '-') AS clasificacionArch
     , REPLACE(Ubicación, '/', '-')         AS Ubicación
     , REPLACE(Título, '/', '-')            AS Título
     , Fecha
     , Observaciones
     , Paginas
     , A.DID
     , SUBSTRING(Path, 63, 100)             AS PATH
    FROM UNAM_Bibliotecas.dbo.DatosClasificacionArchPDF A
             INNER JOIN UNAM_Bibliotecas.dbo.DocumentosClasificacionArchPDF B ON A.DID = B.DID
;-- -. . -..- - / . -. - .-. -.--
SELECT B.Id AS CONTENEDOR
     , BC.BatchName
     , ActualDocs
     , ActualPages
     , ProcessID
     , State
     , B.ModuleId
     , B.StatusId
     , AuditId
     , FinalAuditId
     , ClassName
    FROM KCSystem.dbo.BatchCatalog BC
             INNER JOIN ddoc_Control.trx.Batches B ON BC.BatchName = B.BatchName COLLATE DATABASE_DEFAULT
    WHERE ProcessID = 5
      AND State = 128
      AND ClassName LIKE '%peninsular%'
;-- -. . -..- - / . -. - .-. -.--
SELECT B.Id AS CONTENEDOR
     , BC.BatchName
     , ActualDocs
     , ActualPages
     , ProcessID
     , State
     , B.ModuleId
     , B.StatusId
     , AuditId
     , FinalAuditId
     , ClassName
    FROM KCSystem.dbo.BatchCatalog BC
             INNER JOIN ddoc_Control.trx.Batches B ON BC.BatchName = B.BatchName COLLATE DATABASE_DEFAULT
    WHERE ProcessID = 14999
      AND State = 128
      AND ClassName LIKE '%peninsular%'
;-- -. . -..- - / . -. - .-. -.--
DELETE KCSystem.dbo.kfxDocDDPDFProcessed
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID IN (SELECT ExternalBatchID
                          FROM KCSystem.dbo.BatchCatalog
                          WHERE ProcessID = 14999
                            AND State = 128)
;-- -. . -..- - / . -. - .-. -.--
SELECT SUBSTRING(PDFGenerationFileName, '1', '40') AS PDFGenerationFileName
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID IN (SELECT ExternalBatchID
                          FROM KCSystem.dbo.BatchCatalog
                          WHERE ProcessID = 14999
                            AND State = 128)
;-- -. . -..- - / . -. - .-. -.--
SELECT SUBSTRING(PDFGenerationFileName,1,40) AS PDFGenerationFileName
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID IN (SELECT ExternalBatchID
                          FROM KCSystem.dbo.BatchCatalog
                          WHERE ProcessID = 14999
                            AND State = 128)
;-- -. . -..- - / . -. - .-. -.--
SELECT SUBSTRING(PDFGenerationFileName,1,48) AS PDFGenerationFileName
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID IN (SELECT ExternalBatchID
                          FROM KCSystem.dbo.BatchCatalog
                          WHERE ProcessID = 14999
                            AND State = 128)
;-- -. . -..- - / . -. - .-. -.--
SELECT SUBSTRING(PDFGenerationFileName,1,49) AS PDFGenerationFileName
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID IN (SELECT ExternalBatchID
                          FROM KCSystem.dbo.BatchCatalog
                          WHERE ProcessID = 14999
                            AND State = 128)
;-- -. . -..- - / . -. - .-. -.--
SELECT SUBSTRING(PDFGenerationFileName,1,50) AS PDFGenerationFileName
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID IN (SELECT ExternalBatchID
                          FROM KCSystem.dbo.BatchCatalog
                          WHERE ProcessID = 14999
                            AND State = 128)
;-- -. . -..- - / . -. - .-. -.--
SELECT SUBSTRING(PDFGenerationFileName,1,52) AS PDFGenerationFileName
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID IN (SELECT ExternalBatchID
                          FROM KCSystem.dbo.BatchCatalog
                          WHERE ProcessID = 14999
                            AND State = 128)
;-- -. . -..- - / . -. - .-. -.--
SELECT SUBSTRING(PDFGenerationFileName, 1, 52) AS PDFGenerationFileName
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID IN (SELECT ExternalBatchID
                          FROM KCSystem.dbo.BatchCatalog
                          WHERE ProcessID = 14999
                            AND State = 128)
    GROUP BY SUBSTRING(PDFGenerationFileName, 1, 52)
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM KCSystem.dbo.BatchDocument
WHERE PDFGenerationFileName LIKE '%675240EA.pdf'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM KCSystem.dbo.BatchDocument
WHERE PDFGenerationFileName LIKE '%\\srvkofax\Proyectos\ImagenesPeninsular\0000a68b.PDF%'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM KCSystem.dbo.BatchDocument
WHERE PDFGenerationFileName LIKE '%\\srvkofax\Proyectos\ImagenesPeninsular\0000a689.PDF%'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM KCSystem.dbo.BatchDocument
WHERE PDFGenerationFileName LIKE '%\\srvkofax\Proyectos\ImagenesPeninsular\0000a572.PDF%'
;-- -. . -..- - / . -. - .-. -.--
SELECT UniqueID
    FROM KCSystem.dbo.BatchDocument
    WHERE PDFGenerationFileName LIKE '%\\srvkofax\Proyectos\ImagenesPeninsular\0000a572.PDF%'
;-- -. . -..- - / . -. - .-. -.--
SELECT UniqueID
    FROM KCSystem.dbo.BatchDocument
    WHERE PDFGenerationFileName LIKE '%\\srvkofax\Proyectos\ImagenesPeninsular\0000a7aa.PDF%'
;-- -. . -..- - / . -. - .-. -.--
SELECT UniqueID
    FROM KCSystem.dbo.BatchDocument
    WHERE PDFGenerationFileName LIKE '%\\srvkofax\Proyectos\ImagenesPeninsular\0000a68c.PDF%'
;-- -. . -..- - / . -. - .-. -.--
SELECT UniqueID, PDFGenerationFileName
    FROM KCSystem.dbo.BatchDocument
    WHERE PDFGenerationFileName LIKE '%\\srvkofax\Proyectos\ImagenesPeninsular\0000a5ab.PDF%'
;-- -. . -..- - / . -. - .-. -.--
SELECT UniqueID
    FROM KCSystem.dbo.BatchDocument
    WHERE PDFGenerationFileName LIKE '%\\srvkofax\Proyectos\ImagenesPeninsular\0000a5ab.PDF%'
;-- -. . -..- - / . -. - .-. -.--
SELECT UniqueID
    FROM KCSystem.dbo.BatchDocument
    WHERE PDFGenerationFileName LIKE '%\\srvkofax\Proyectos\ImagenesPeninsular\0000a68d.PDF%'
;-- -. . -..- - / . -. - .-. -.--
SELECT UniqueID
    FROM KCSystem.dbo.BatchDocument
    WHERE PDFGenerationFileName LIKE '%\\srvkofax\Proyectos\ImagenesPeninsular\0000a68e.PDF%'
;-- -. . -..- - / . -. - .-. -.--
USE Peninsular
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM Datos_PolizasContables
WHERE Paginas IS NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT NombreLote
    FROM Datos_PolizasContables
    WHERE Paginas IS NULL
    GROUP BY NombreLote
;-- -. . -..- - / . -. - .-. -.--
SELECT NombreLote, COUNT(*)
    FROM Datos_PolizasContables
    WHERE Paginas IS NULL
    GROUP BY NombreLote
;-- -. . -..- - / . -. - .-. -.--
SELECT NombreLote, COUNT(*) AS REGISTROS
    FROM Datos_PolizasContables
    WHERE Paginas IS NULL
    GROUP BY NombreLote
;-- -. . -..- - / . -. - .-. -.--
SELECT NombreLote, COUNT(*) AS REGISTROS
    FROM Datos_PolizasContables
    WHERE Paginas IS NULL
    GROUP BY NombreLote
ORDER BY 2 ASC
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM ddoc_Control.trx.Batches
WHERE BatchName = 'Peninsular - PENINSULAR 03-10_CAJA 634'
;-- -. . -..- - / . -. - .-. -.--
SELECT ID AS BATCHID FROM ddoc_Control.trx.Batches
WHERE BatchName = 'Peninsular - PENINSULAR 03-10_CAJA 634'
;-- -. . -..- - / . -. - .-. -.--
SELECT ID AS BATCHID, BatchName FROM ddoc_Control.trx.Batches
WHERE BatchName = 'Peninsular - PENINSULAR 03-10_CAJA 634'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchField
    WHERE BatchID IN (SELECT ExternalBatchID
                          FROM KCSystem.dbo.BatchCatalog
                          WHERE BatchName = 'Peninsular - PENINSULAR 03-10_CAJA 634')
;-- -. . -..- - / . -. - .-. -.--
SELECT UniqueID
    FROM KCSystem.dbo.BatchDocument
    WHERE PDFGenerationFileName LIKE '%\\srvkofax\Proyectos\ImagenesPeninsular\0000a5b0.PDF%'
;-- -. . -..- - / . -. - .-. -.--
SELECT Etiqueta, DID, NombreLote
    FROM Datos_PolizasContables
    WHERE Paginas IS NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT Etiqueta, DID, NombreLote
    FROM Datos_PolizasContables
    WHERE Paginas = 'Peninsular - PENINSULAR 03-10_CAJA 634'
;-- -. . -..- - / . -. - .-. -.--
SELECT Etiqueta, DID, NombreLote
    FROM Datos_PolizasContables
    WHERE NombreLote = 'Peninsular - PENINSULAR 03-10_CAJA 634'
;-- -. . -..- - / . -. - .-. -.--
SELECT Etiqueta, DID, NombreLote, Paginas
    FROM Datos_PolizasContables
    WHERE NombreLote = 'Peninsular - PENINSULAR 03-10_CAJA 634'
;-- -. . -..- - / . -. - .-. -.--
SELECT Etiqueta, DID, NombreLote, Paginas
    FROM Datos_PolizasContables
    WHERE NombreLote = 'Peninsular - PENINSULAR 03-10_CAJA 634'
AND Paginas IS NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM KCSystem.dbo.BatchField
WHERE Value = 'D1333341'
;-- -. . -..- - / . -. - .-. -.--
UPDATE KCSystem.dbo.BatchPage
SET Reviewed = 1
    WHERE BatchID IN (SELECT ExternalBatchID
                          FROM KCSystem.dbo.BatchCatalog
                          WHERE BatchName = 'Peninsular - PENINSULAR 03-10_CAJA 634')
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM KCSystem.dbo.BatchDocument
WHERE BatchID = 42964
AND DocID ? 4
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM KCSystem.dbo.BatchDocument
WHERE BatchID = 42964
AND DocID = 4
;-- -. . -..- - / . -. - .-. -.--
SELECT Etiqueta, DID, NombreLote, Paginas
    FROM Datos_PolizasContables
    WHERE NombreLote = 'Peninsular - PENINSULAR 03-10_CAJA 634'
      AND Paginas IS NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchField
    WHERE Value IN (
                    'D1333341',
                    'D1333342',
                    'D1333343',
                    'D1333344',
                    'D1333352',
                    'D1333364',
                    'D1333366',
                    'D1333367',
                    'D1333368',
                    'D1333372'
        )
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID = 42964
      AND DocID IN (4,5,6,7,15,27,29,30,31,35)
;-- -. . -..- - / . -. - .-. -.--
SELECT UniqueID, PDFGeneration, PDFGenerationFileType, PDFGenerationFileName
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID = 42964
      AND DocID IN (4,5,6,7,15,27,29,30,31,35)
;-- -. . -..- - / . -. - .-. -.--
SELECT Value, BatchID, DocID
    FROM KCSystem.dbo.BatchField
    WHERE BatchID IN (SELECT ExternalBatchID
                          FROM KCSystem.dbo.BatchCatalog
                          WHERE BatchName = 'Peninsular - PENINSULAR 03-10_CAJA 634')
;-- -. . -..- - / . -. - .-. -.--
SELECT Value, DocID
    FROM KCSystem.dbo.BatchField
    WHERE Value IN (
                    'D1333341',
                    'D1333342',
                    'D1333343',
                    'D1333344',
                    'D1333352',
                    'D1333364',
                    'D1333366',
                    'D1333367',
                    'D1333368',
                    'D1333372'
        )
;-- -. . -..- - / . -. - .-. -.--
SELECT DocID, UniqueID, PDFGeneration, PDFGenerationFileType, PDFGenerationFileName
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID = 42964
      AND DocID IN (4,5,6,7,15,27,29,30,31,35)
;-- -. . -..- - / . -. - .-. -.--
SELECT DocID, UniqueID, PDFGeneration, PDFGenerationFileType, PDFGenerationFileName
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID = 42964
      AND DocID IN (4,5,6,7,15,27,29,30,31,35)
ORDER BY 1
;-- -. . -..- - / . -. - .-. -.--
UPDATE KCSystem.dbo.BatchDocument SET PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1030.pdf' WHERE UniqueID = 853219
UPDATE KCSystem.dbo.BatchDocument SET PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1031.pdf' WHERE UniqueID = 853220
UPDATE KCSystem.dbo.BatchDocument SET PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1032.pdf' WHERE UniqueID = 853221
UPDATE KCSystem.dbo.BatchDocument SET PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1033.pdf' WHERE UniqueID = 853222
UPDATE KCSystem.dbo.BatchDocument SET PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C103B.pdf' WHERE UniqueID = 853223
UPDATE KCSystem.dbo.BatchDocument SET PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1047.pdf' WHERE UniqueID = 853224
UPDATE KCSystem.dbo.BatchDocument SET PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1049.pdf' WHERE UniqueID = 853225
UPDATE KCSystem.dbo.BatchDocument SET PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C104A.pdf' WHERE UniqueID = 853226
UPDATE KCSystem.dbo.BatchDocument SET PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C104B.pdf' WHERE UniqueID = 853227
UPDATE KCSystem.dbo.BatchDocument SET PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C104F.pdf' WHERE UniqueID = 853228
;-- -. . -..- - / . -. - .-. -.--
SELECT Value, BatchID, DocID
    FROM KCSystem.dbo.BatchField
    WHERE Value IN (
                    'D1333341',
                    'D1333342',
                    'D1333343',
                    'D1333344',
                    'D1333352',
                    'D1333364',
                    'D1333366',
                    'D1333367',
                    'D1333368',
                    'D1333372'
        )
;-- -. . -..- - / . -. - .-. -.--
SELECT DocID, UniqueID, PDFGeneration, PDFGenerationFileType, PDFGenerationFileName
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID = 42964
      AND DocID IN (4, 5, 6, 7, 15, 27, 29, 30, 31, 35)
    ORDER BY 1
;-- -. . -..- - / . -. - .-. -.--
SELECT Etiqueta, DID, NombreLote, Paginas
    FROM Datos_PolizasContables
    WHERE NombreLote = 'Peninsular - PENINSULAR 02-6_CAJA 632'
      AND Paginas IS NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT Id AS BATCHID, BatchName
    FROM ddoc_Control.trx.Batches
    WHERE BatchName = 'Peninsular - PENINSULAR 02-6_CAJA 632'
;-- -. . -..- - / . -. - .-. -.--
SELECT Etiqueta, DID, NombreLote
    FROM Datos_PolizasContables
    WHERE NombreLote = 'Peninsular - PENINSULAR 02-6_CAJA 632'
      AND Paginas IS NULL
;-- -. . -..- - / . -. - .-. -.--
UPDATE KCSystem.dbo.BatchPage
SET Reviewed = 1
    WHERE BatchID IN (SELECT ExternalBatchID
                          FROM KCSystem.dbo.BatchCatalog
                          WHERE BatchName = 'Peninsular - PENINSULAR 02-6_CAJA 632')
;-- -. . -..- - / . -. - .-. -.--
SELECT DocID, UniqueID, PDFGeneration, PDFGenerationFileType, PDFGenerationFileName
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID = 42965
      --AND DocID IN (4, 5, 6, 7, 15, 27, 29, 30, 31, 35)
    ORDER BY 1
;-- -. . -..- - / . -. - .-. -.--
SELECT Value, BatchID, DocID
    FROM KCSystem.dbo.BatchField
    WHERE BatchID IN (SELECT ExternalBatchID
                          FROM KCSystem.dbo.BatchCatalog
                          WHERE BatchName = 'Peninsular - PENINSULAR 02-6_CAJA 632')
;-- -. . -..- - / . -. - .-. -.--
SELECT BatchFieldID, Value, BatchID, DocID
    FROM KCSystem.dbo.BatchField
    WHERE BatchID IN (SELECT ExternalBatchID
                          FROM KCSystem.dbo.BatchCatalog
                          WHERE BatchName = 'Peninsular - PENINSULAR 02-6_CAJA 632')
;-- -. . -..- - / . -. - .-. -.--
SELECT IndexFieldID, Value, BatchID, DocID
    FROM KCSystem.dbo.BatchField
    WHERE BatchID IN (SELECT ExternalBatchID
                          FROM KCSystem.dbo.BatchCatalog
                          WHERE BatchName = 'Peninsular - PENINSULAR 02-6_CAJA 632')
;-- -. . -..- - / . -. - .-. -.--
SELECT IndexFieldID, Value, BatchID, DocID
    FROM KCSystem.dbo.BatchField
    WHERE BatchID IN (SELECT ExternalBatchID
                          FROM KCSystem.dbo.BatchCatalog
                          WHERE BatchName = 'Peninsular - PENINSULAR 02-6_CAJA 632')
AND IndexFieldID = 2790
;-- -. . -..- - / . -. - .-. -.--
SELECT DocID, UniqueID, PDFGeneration, PDFGenerationFileType, PDFGenerationFileName
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID = 42965
      AND DocID IN (2,
                    3,
                    4,
                    6,
                    7,
                    9,
                    10,
                    11,
                    12,
                    13,
                    14,
                    15,
                    16,
                    17,
                    18,
                    19,
                    20,
                    21,
                    23,
                    24,
                    25,
                    26,
                    27,
                    28,
                    29,
                    30,
                    31,
                    32,
                    33,
                    34,
                    35,
                    37,
                    38,
                    40,
                    42,
                    43,
                    45,
                    46,
                    47,
                    51,
                    53,
                    55,
                    56,
                    57,
                    58,
                    59,
                    60,
                    61,
                    62,
                    63,
                    65,
                    68,
                    69,
                    70,
                    71,
                    75,
                    76,
                    77,
                    78,
                    79,
                    80,
                    81,
                    83,
                    84,
                    85,
                    86,
                    87,
                    88,
                    89,
                    90,
                    91,
                    92
                   )
    ORDER BY 1
;-- -. . -..- - / . -. - .-. -.--
SELECT DocID, UniqueID, PDFGeneration, PDFGenerationFileType
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID = 42965
      AND DocID IN (2,
                    3,
                    4,
                    6,
                    7,
                    9,
                    10,
                    11,
                    12,
                    13,
                    14,
                    15,
                    16,
                    17,
                    18,
                    19,
                    20,
                    21,
                    23,
                    24,
                    25,
                    26,
                    27,
                    28,
                    29,
                    30,
                    31,
                    32,
                    33,
                    34,
                    35,
                    37,
                    38,
                    40,
                    42,
                    43,
                    45,
                    46,
                    47,
                    51,
                    53,
                    55,
                    56,
                    57,
                    58,
                    59,
                    60,
                    61,
                    62,
                    63,
                    65,
                    68,
                    69,
                    70,
                    71,
                    75,
                    76,
                    77,
                    78,
                    79,
                    80,
                    81,
                    83,
                    84,
                    85,
                    86,
                    87,
                    88,
                    89,
                    90,
                    91,
                    92
                   )
    ORDER BY 1
;-- -. . -..- - / . -. - .-. -.--
SELECT Value, BatchID, DocID
    FROM KCSystem.dbo.BatchField
    WHERE Value IN (
                    'D1331866',
                    'D1331867',
                    'D1331868',
                    'D1331870',
                    'D1331871',
                    'D1331873',
                    'D1331874',
                    'D1331875',
                    'D1331876',
                    'D1331877',
                    'D1331878',
                    'D1331879',
                    'D1331880',
                    'D1331881',
                    'D1331882',
                    'D1331883',
                    'D1331884',
                    'D1331885',
                    'D1331886',
                    'D1331887',
                    'D1331888',
                    'D1331889',
                    'D1331890',
                    'D1331891',
                    'D1331892',
                    'D1331893',
                    'D1331894',
                    'D1331895',
                    'D1331896',
                    'D1331897',
                    'D1331898',
                    'D1331899',
                    'D1331900',
                    'D1331902',
                    'D1331904',
                    'D1331905',
                    'D1331906',
                    'D1331907',
                    'D1331908',
                    'D1331910',
                    'D1331911',
                    'D1331913',
                    'D1331914',
                    'D1331915',
                    'D1331916',
                    'D1331917',
                    'D1331918',
                    'D1331919',
                    'D1331920',
                    'D1331921',
                    'D1331923',
                    'D1331925',
                    'D1331926',
                    'D1331927',
                    'D1331928',
                    'D1331932',
                    'D1331933',
                    'D1331934',
                    'D1331935',
                    'D1331936',
                    'D1331937',
                    'D1331938',
                    'D1331940',
                    'D1331941',
                    'D1331942',
                    'D1331943',
                    'D1331944',
                    'D1331945',
                    'D1331946',
                    'D1331947',
                    'D1331948',
                    'D1331949'
        )
;-- -. . -..- - / . -. - .-. -.--
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0866.pdf' WHERE UniqueID = 853230
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0869.pdf' WHERE UniqueID = 853231
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C086E.pdf' WHERE UniqueID = 853232
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0874.pdf' WHERE UniqueID = 853234
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0878.pdf' WHERE UniqueID = 853235
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C087E.pdf' WHERE UniqueID = 853237
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0881.pdf' WHERE UniqueID = 853238
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0885.pdf' WHERE UniqueID = 853239
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0889.pdf' WHERE UniqueID = 853240
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C088D.pdf' WHERE UniqueID = 853241
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0891.pdf' WHERE UniqueID = 853242
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0892.pdf' WHERE UniqueID = 853243
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C089B.pdf' WHERE UniqueID = 853244
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C089D.pdf' WHERE UniqueID = 853245
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C08A1.pdf' WHERE UniqueID = 853246
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C08A5.pdf' WHERE UniqueID = 853247
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C08A6.pdf' WHERE UniqueID = 853248
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C08A9.pdf' WHERE UniqueID = 853249
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C08AB.pdf' WHERE UniqueID = 853251
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C08AE.pdf' WHERE UniqueID = 853252
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C08AF.pdf' WHERE UniqueID = 853253
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C08B3.pdf' WHERE UniqueID = 853254
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C08B8.pdf' WHERE UniqueID = 853255
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C08BC.pdf' WHERE UniqueID = 853256
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C08C3.pdf' WHERE UniqueID = 853257
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C08C5.pdf' WHERE UniqueID = 853258
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C08C6.pdf' WHERE UniqueID = 853259
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C08C7.pdf' WHERE UniqueID = 853260
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C08C9.pdf' WHERE UniqueID = 853261
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C08CA.pdf' WHERE UniqueID = 853262
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C08CB.pdf' WHERE UniqueID = 853263
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C08CC.pdf' WHERE UniqueID = 853265
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C08CF.pdf' WHERE UniqueID = 853266
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C08D2.pdf' WHERE UniqueID = 853267
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C08D6.pdf' WHERE UniqueID = 853268
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C08D7.pdf' WHERE UniqueID = 853269
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C08D9.pdf' WHERE UniqueID = 853270
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C08DB.pdf' WHERE UniqueID = 853271
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C08DD.pdf' WHERE UniqueID = 853272
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C08DF.pdf' WHERE UniqueID = 853273
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C08E2.pdf' WHERE UniqueID = 853274
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C08E4.pdf' WHERE UniqueID = 853275
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C08E6.pdf' WHERE UniqueID = 853276
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C08E8.pdf' WHERE UniqueID = 853277
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C08E9.pdf' WHERE UniqueID = 853278
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C08EB.pdf' WHERE UniqueID = 853279
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C08ED.pdf' WHERE UniqueID = 853280
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C08EE.pdf' WHERE UniqueID = 853281
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C08F0.pdf' WHERE UniqueID = 853282
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C08F2.pdf' WHERE UniqueID = 853283
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C08F4.pdf' WHERE UniqueID = 853284
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C08FD.pdf' WHERE UniqueID = 853285
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0900.pdf' WHERE UniqueID = 853286
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0901.pdf' WHERE UniqueID = 853287
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0903.pdf' WHERE UniqueID = 853288
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C090A.pdf' WHERE UniqueID = 853289
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C090C.pdf' WHERE UniqueID = 853290
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C090D.pdf' WHERE UniqueID = 853291
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C090F.pdf' WHERE UniqueID = 853292
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0910.pdf' WHERE UniqueID = 853293
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0912.pdf' WHERE UniqueID = 853294
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0913.pdf' WHERE UniqueID = 853295
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0919.pdf' WHERE UniqueID = 853296
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C091A.pdf' WHERE UniqueID = 853297
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C091B.pdf' WHERE UniqueID = 853298
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C091D.pdf' WHERE UniqueID = 853299
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C091E.pdf' WHERE UniqueID = 853300
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0920.pdf' WHERE UniqueID = 853301
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0921.pdf' WHERE UniqueID = 853302
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0923.pdf' WHERE UniqueID = 853303
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0924.pdf' WHERE UniqueID = 853304
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0925.pdf' WHERE UniqueID = 853305
;-- -. . -..- - / . -. - .-. -.--
UPDATE KCSystem.dbo.BatchPage
SET Reviewed = 1
    WHERE BatchID IN (SELECT ExternalBatchID
                          FROM KCSystem.dbo.BatchCatalog
                          WHERE BatchName = 'Peninsular - PENINSULAR 05-6_CAJA 633')
;-- -. . -..- - / . -. - .-. -.--
SELECT DocID, UniqueID, PDFGeneration, PDFGenerationFileType
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID = 42965
      AND DocID IN (14,
                    15,
                    16,
                    17,
                    19,
                    20,
                    21,
                    22,
                    23,
                    24,
                    25,
                    26,
                    27,
                    28,
                    29,
                    30,
                    31,
                    32,
                    33,
                    34,
                    35,
                    36,
                    37,
                    38,
                    39,
                    40,
                    41,
                    42,
                    43,
                    44,
                    45,
                    46,
                    47,
                    48,
                    49,
                    50,
                    52,
                    53,
                    54,
                    56,
                    57,
                    58,
                    59,
                    60,
                    61,
                    62,
                    63,
                    64,
                    65,
                    66,
                    67,
                    68,
                    71,
                    72,
                    74,
                    75,
                    76,
                    78,
                    79,
                    80,
                    82,
                    83,
                    84,
                    85,
                    90,
                    91,
                    92,
                    93,
                    94,
                    95,
                    96,
                    97,
                    98,
                    99,
                    100,
                    101,
                    102,
                    103,
                    104,
                    105,
                    106,
                    107,
                    108,
                    110,
                    111,
                    112,
                    114,
                    115,
                    116,
                    118,
                    119,
                    120,
                    121,
                    122,
                    123,
                    124,
                    125,
                    126,
                    127,
                    128,
                    130,
                    131,
                    132,
                    133,
                    134,
                    135,
                    136,
                    137,
                    138,
                    139,
                    140,
                    143,
                    144,
                    146,
                    147,
                    148,
                    149,
                    150,
                    151,
                    152,
                    153,
                    154,
                    156,
                    157,
                    158,
                    159,
                    160,
                    162,
                    163,
                    164,
                    165,
                    166,
                    167,
                    168,
                    169,
                    170,
                    171,
                    173,
                    174,
                    175,
                    176,
                    177,
                    178,
                    179,
                    182,
                    183,
                    184,
                    185,
                    186,
                    187
        )
    ORDER BY 1
;-- -. . -..- - / . -. - .-. -.--
SELECT Id AS BATCHID, BatchName
    FROM ddoc_Control.trx.Batches
    WHERE BatchName IN (
                        'Peninsular - PENINSULAR 05-6_CAJA 631',
                        'Peninsular - PENINSULAR 05-6_CAJA 633',
                        'Peninsular - PENINSULAR 04-10_CAJA 634'
        )
;-- -. . -..- - / . -. - .-. -.--
SELECT DocID, UniqueID, PDFGeneration, PDFGenerationFileType
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID = 47913
      AND DocID IN (14,
                    15,
                    16,
                    17,
                    19,
                    20,
                    21,
                    22,
                    23,
                    24,
                    25,
                    26,
                    27,
                    28,
                    29,
                    30,
                    31,
                    32,
                    33,
                    34,
                    35,
                    36,
                    37,
                    38,
                    39,
                    40,
                    41,
                    42,
                    43,
                    44,
                    45,
                    46,
                    47,
                    48,
                    49,
                    50,
                    52,
                    53,
                    54,
                    56,
                    57,
                    58,
                    59,
                    60,
                    61,
                    62,
                    63,
                    64,
                    65,
                    66,
                    67,
                    68,
                    71,
                    72,
                    74,
                    75,
                    76,
                    78,
                    79,
                    80,
                    82,
                    83,
                    84,
                    85,
                    90,
                    91,
                    92,
                    93,
                    94,
                    95,
                    96,
                    97,
                    98,
                    99,
                    100,
                    101,
                    102,
                    103,
                    104,
                    105,
                    106,
                    107,
                    108,
                    110,
                    111,
                    112,
                    114,
                    115,
                    116,
                    118,
                    119,
                    120,
                    121,
                    122,
                    123,
                    124,
                    125,
                    126,
                    127,
                    128,
                    130,
                    131,
                    132,
                    133,
                    134,
                    135,
                    136,
                    137,
                    138,
                    139,
                    140,
                    143,
                    144,
                    146,
                    147,
                    148,
                    149,
                    150,
                    151,
                    152,
                    153,
                    154,
                    156,
                    157,
                    158,
                    159,
                    160,
                    162,
                    163,
                    164,
                    165,
                    166,
                    167,
                    168,
                    169,
                    170,
                    171,
                    173,
                    174,
                    175,
                    176,
                    177,
                    178,
                    179,
                    182,
                    183,
                    184,
                    185,
                    186,
                    187
        )
    ORDER BY 1
;-- -. . -..- - / . -. - .-. -.--
SELECT Value, BatchID, DocID
    FROM KCSystem.dbo.BatchField
    WHERE Value IN (
                    'D1332970',
                    'D1332971',
                    'D1332972',
                    'D1332973',
                    'D1332974',
                    'D1332975',
                    'D1332976',
                    'D1332977',
                    'D1332978',
                    'D1332979',
                    'D1332980',
                    'D1332981',
                    'D1332982',
                    'D1332983',
                    'D1332984',
                    'D1332985',
                    'D1332986',
                    'D1332987',
                    'D1332988',
                    'D1332989',
                    'D1332990',
                    'D1332991',
                    'D1332992',
                    'D1332993',
                    'D1332994',
                    'D1332995',
                    'D1332996',
                    'D1332997',
                    'D1332998',
                    'D1332999',
                    'D1333000',
                    'D1333001',
                    'D1333002',
                    'D1333003',
                    'D1333004',
                    'D1333005',
                    'D1333007',
                    'D1333008',
                    'D1333009',
                    'D1333011',
                    'D1333012',
                    'D1333013',
                    'D1333014',
                    'D1333015',
                    'D1333016',
                    'D1333017',
                    'D1333018',
                    'D1333019',
                    'D1333020',
                    'D1333021',
                    'D1333022',
                    'D1333023',
                    'D1333024',
                    'D1333025',
                    'D1333027',
                    'D1333028',
                    'D1333029',
                    'D1333030',
                    'D1333031',
                    'D1333032',
                    'D1333034',
                    'D1333035',
                    'D1333036',
                    'D1333037',
                    'D1333039',
                    'D1333040',
                    'D1333041',
                    'D1333042',
                    'D1333043',
                    'D1333044',
                    'D1333045',
                    'D1333046',
                    'D1333047',
                    'D1333048',
                    'D1333049',
                    'D1333050',
                    'D1333051',
                    'D1333052',
                    'D1333053',
                    'D1333054',
                    'D1333055',
                    'D1333056',
                    'D1333057',
                    'D1333059',
                    'D1333060',
                    'D1333061',
                    'D1333063',
                    'D1333064',
                    'D1333065',
                    'D1333067',
                    'D1333068',
                    'D1333069',
                    'D1333070',
                    'D1333071',
                    'D1333072',
                    'D1333073',
                    'D1333074',
                    'D1333075',
                    'D1333076',
                    'D1333077',
                    'D1333079',
                    'D1333080',
                    'D1333081',
                    'D1333082',
                    'D1333083',
                    'D1333084',
                    'D1333085',
                    'D1333086',
                    'D1333087',
                    'D1333088',
                    'D1333089',
                    'D1333092',
                    'D1333093',
                    'D1333094',
                    'D1333095',
                    'D1333096',
                    'D1333097',
                    'D1333098',
                    'D1333099',
                    'D1333100',
                    'D1333101',
                    'D1333102',
                    'D1333104',
                    'D1333105',
                    'D1333106',
                    'D1333107',
                    'D1333108',
                    'D1333110',
                    'D1333111',
                    'D1333112',
                    'D1333113',
                    'D1333114',
                    'D1333115',
                    'D1333116',
                    'D1333117',
                    'D1333118',
                    'D1333119',
                    'D1333121',
                    'D1333122',
                    'D1333123',
                    'D1333124',
                    'D1333125',
                    'D1333126',
                    'D1333127',
                    'D1333130',
                    'D1333131',
                    'D1333132',
                    'D1333133',
                    'D1333134',
                    'D1333135'
        )
;-- -. . -..- - / . -. - .-. -.--
SELECT Etiqueta, DID, NombreLote
    FROM Datos_PolizasContables
    WHERE NombreLote = 'Peninsular - PENINSULAR 05-6_CAJA 633'
      AND Paginas IS NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT Id AS BATCHID, BatchName
    FROM ddoc_Control.trx.Batches
    WHERE BatchName IN (
                        'Peninsular - PENINSULAR 05-6_CAJA 633',
                        'Peninsular - PENINSULAR 04-10_CAJA 634'
        )
;-- -. . -..- - / . -. - .-. -.--
SELECT IndexFieldID, Value, BatchID, DocID
    FROM KCSystem.dbo.BatchField
    WHERE BatchID IN (SELECT ExternalBatchID
                          FROM KCSystem.dbo.BatchCatalog
                          WHERE BatchName = 'Peninsular - PENINSULAR 05-6_CAJA 633')
      AND IndexFieldID = 2790
;-- -. . -..- - / . -. - .-. -.--
SELECT DocID, UniqueID, PDFGeneration, PDFGenerationFileType
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID = 42966
      AND DocID IN (14,
                    15,
                    16,
                    17,
                    19,
                    20,
                    21,
                    22,
                    23,
                    24,
                    25,
                    26,
                    27,
                    28,
                    29,
                    30,
                    31,
                    32,
                    33,
                    34,
                    35,
                    36,
                    37,
                    38,
                    39,
                    40,
                    41,
                    42,
                    43,
                    44,
                    45,
                    46,
                    47,
                    48,
                    49,
                    50,
                    52,
                    53,
                    54,
                    56,
                    57,
                    58,
                    59,
                    60,
                    61,
                    62,
                    63,
                    64,
                    65,
                    66,
                    67,
                    68,
                    71,
                    72,
                    74,
                    75,
                    76,
                    78,
                    79,
                    80,
                    82,
                    83,
                    84,
                    85,
                    90,
                    91,
                    92,
                    93,
                    94,
                    95,
                    96,
                    97,
                    98,
                    99,
                    100,
                    101,
                    102,
                    103,
                    104,
                    105,
                    106,
                    107,
                    108,
                    110,
                    111,
                    112,
                    114,
                    115,
                    116,
                    118,
                    119,
                    120,
                    121,
                    122,
                    123,
                    124,
                    125,
                    126,
                    127,
                    128,
                    130,
                    131,
                    132,
                    133,
                    134,
                    135,
                    136,
                    137,
                    138,
                    139,
                    140,
                    143,
                    144,
                    146,
                    147,
                    148,
                    149,
                    150,
                    151,
                    152,
                    153,
                    154,
                    156,
                    157,
                    158,
                    159,
                    160,
                    162,
                    163,
                    164,
                    165,
                    166,
                    167,
                    168,
                    169,
                    170,
                    171,
                    173,
                    174,
                    175,
                    176,
                    177,
                    178,
                    179,
                    182,
                    183,
                    184,
                    185,
                    186,
                    187
        )
    ORDER BY 1
;-- -. . -..- - / . -. - .-. -.--
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0EB2.pdf' WHERE UniqueID = 853306
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0EB4.pdf' WHERE UniqueID = 853307
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0EB5.pdf' WHERE UniqueID = 853308
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0EB7.pdf' WHERE UniqueID = 853309
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0EB9.pdf' WHERE UniqueID = 853310
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0EBC.pdf' WHERE UniqueID = 853311
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0EBE.pdf' WHERE UniqueID = 853312
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0EC4.pdf' WHERE UniqueID = 853313
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0EC5.pdf' WHERE UniqueID = 853314
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0EC6.pdf' WHERE UniqueID = 853315
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0EC7.pdf' WHERE UniqueID = 853316
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0EC8.pdf' WHERE UniqueID = 853317
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0EC9.pdf' WHERE UniqueID = 853318
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0ECA.pdf' WHERE UniqueID = 853319
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0ECB.pdf' WHERE UniqueID = 853320
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0ECC.pdf' WHERE UniqueID = 853321
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0ECD.pdf' WHERE UniqueID = 853322
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0ECE.pdf' WHERE UniqueID = 853323
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0ED0.pdf' WHERE UniqueID = 853324
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0ED1.pdf' WHERE UniqueID = 853325
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0ED2.pdf' WHERE UniqueID = 853326
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0ED3.pdf' WHERE UniqueID = 853327
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0ED4.pdf' WHERE UniqueID = 853328
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0ED5.pdf' WHERE UniqueID = 853329
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0ED6.pdf' WHERE UniqueID = 853330
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0ED7.pdf' WHERE UniqueID = 853331
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0ED8.pdf' WHERE UniqueID = 853332
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0ED9.pdf' WHERE UniqueID = 853333
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0EDA.pdf' WHERE UniqueID = 853334
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0EDB.pdf' WHERE UniqueID = 853335
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0EDC.pdf' WHERE UniqueID = 853336
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0EDD.pdf' WHERE UniqueID = 853337
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0EDE.pdf' WHERE UniqueID = 853338
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0EDF.pdf' WHERE UniqueID = 853339
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0EE0.pdf' WHERE UniqueID = 853340
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0EE1.pdf' WHERE UniqueID = 853341
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0EE3.pdf' WHERE UniqueID = 853342
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0EE5.pdf' WHERE UniqueID = 853343
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0EE7.pdf' WHERE UniqueID = 853344
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0EEA.pdf' WHERE UniqueID = 853345
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0EEB.pdf' WHERE UniqueID = 853346
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0EEC.pdf' WHERE UniqueID = 853347
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0EEE.pdf' WHERE UniqueID = 853348
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0EF0.pdf' WHERE UniqueID = 853349
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0EF2.pdf' WHERE UniqueID = 853350
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F05.pdf' WHERE UniqueID = 853351
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F07.pdf' WHERE UniqueID = 853352
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F09.pdf' WHERE UniqueID = 853353
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F0B.pdf' WHERE UniqueID = 853354
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F0D.pdf' WHERE UniqueID = 853355
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F0F.pdf' WHERE UniqueID = 853356
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F10.pdf' WHERE UniqueID = 853357
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F12.pdf' WHERE UniqueID = 853358
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F14.pdf' WHERE UniqueID = 853359
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F1D.pdf' WHERE UniqueID = 853360
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F1F.pdf' WHERE UniqueID = 853361
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F21.pdf' WHERE UniqueID = 853362
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F24.pdf' WHERE UniqueID = 853363
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F26.pdf' WHERE UniqueID = 853364
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F28.pdf' WHERE UniqueID = 853365
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F2D.pdf' WHERE UniqueID = 853366
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F2E.pdf' WHERE UniqueID = 853367
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F30.pdf' WHERE UniqueID = 853368
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F32.pdf' WHERE UniqueID = 853369
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F3C.pdf' WHERE UniqueID = 853370
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F3E.pdf' WHERE UniqueID = 853371
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F40.pdf' WHERE UniqueID = 853372
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F42.pdf' WHERE UniqueID = 853373
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F44.pdf' WHERE UniqueID = 853374
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F46.pdf' WHERE UniqueID = 853375
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F48.pdf' WHERE UniqueID = 853376
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F49.pdf' WHERE UniqueID = 853377
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F4B.pdf' WHERE UniqueID = 853378
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F4C.pdf' WHERE UniqueID = 853379
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F4E.pdf' WHERE UniqueID = 853380
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F4F.pdf' WHERE UniqueID = 853381
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F51.pdf' WHERE UniqueID = 853382
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F53.pdf' WHERE UniqueID = 853383
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F55.pdf' WHERE UniqueID = 853384
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F57.pdf' WHERE UniqueID = 853385
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F59.pdf' WHERE UniqueID = 853386
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F5B.pdf' WHERE UniqueID = 853387
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F5D.pdf' WHERE UniqueID = 853388
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F61.pdf' WHERE UniqueID = 853390
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F63.pdf' WHERE UniqueID = 853391
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F65.pdf' WHERE UniqueID = 853392
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F68.pdf' WHERE UniqueID = 853393
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F6C.pdf' WHERE UniqueID = 853394
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F6D.pdf' WHERE UniqueID = 853395
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F70.pdf' WHERE UniqueID = 853396
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F72.pdf' WHERE UniqueID = 853397
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F74.pdf' WHERE UniqueID = 853398
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F75.pdf' WHERE UniqueID = 853399
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F77.pdf' WHERE UniqueID = 853400
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F79.pdf' WHERE UniqueID = 853401
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F7B.pdf' WHERE UniqueID = 853402
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F7C.pdf' WHERE UniqueID = 853403
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F7E.pdf' WHERE UniqueID = 853404
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F80.pdf' WHERE UniqueID = 853405
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F82.pdf' WHERE UniqueID = 853406
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F86.pdf' WHERE UniqueID = 853407
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F88.pdf' WHERE UniqueID = 853408
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F8A.pdf' WHERE UniqueID = 853409
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F8C.pdf' WHERE UniqueID = 853410
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F8E.pdf' WHERE UniqueID = 853411
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F90.pdf' WHERE UniqueID = 853412
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F94.pdf' WHERE UniqueID = 853413
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F97.pdf' WHERE UniqueID = 853414
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F99.pdf' WHERE UniqueID = 853415
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F9B.pdf' WHERE UniqueID = 853416
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0F9D.pdf' WHERE UniqueID = 853417
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0FA3.pdf' WHERE UniqueID = 853418
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0FA4.pdf' WHERE UniqueID = 853419
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0FAB.pdf' WHERE UniqueID = 853420
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0FAE.pdf' WHERE UniqueID = 853421
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0FB0.pdf' WHERE UniqueID = 853422
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0FB2.pdf' WHERE UniqueID = 853423
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0FB4.pdf' WHERE UniqueID = 853424
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0FB6.pdf' WHERE UniqueID = 853425
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0FB9.pdf' WHERE UniqueID = 853426
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0FBC.pdf' WHERE UniqueID = 853427
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0FBE.pdf' WHERE UniqueID = 853428
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0FC2.pdf' WHERE UniqueID = 853429
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0FC4.pdf' WHERE UniqueID = 853430
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0FC6.pdf' WHERE UniqueID = 853431
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0FC7.pdf' WHERE UniqueID = 853432
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0FC8.pdf' WHERE UniqueID = 853433
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0FCB.pdf' WHERE UniqueID = 853434
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0FCD.pdf' WHERE UniqueID = 853435
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0FCF.pdf' WHERE UniqueID = 853436
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0FD1.pdf' WHERE UniqueID = 853437
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0FD3.pdf' WHERE UniqueID = 853438
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0FD4.pdf' WHERE UniqueID = 853439
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0FD6.pdf' WHERE UniqueID = 853440
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0FD8.pdf' WHERE UniqueID = 853441
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0FD9.pdf' WHERE UniqueID = 853442
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0FDA.pdf' WHERE UniqueID = 853443
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0FDE.pdf' WHERE UniqueID = 853444
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0FE0.pdf' WHERE UniqueID = 853445
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0FE2.pdf' WHERE UniqueID = 853446
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0FE5.pdf' WHERE UniqueID = 853447
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0FE8.pdf' WHERE UniqueID = 853448
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0FEA.pdf' WHERE UniqueID = 853449
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0FEC.pdf' WHERE UniqueID = 853450
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0FF0.pdf' WHERE UniqueID = 853451
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0FF1.pdf' WHERE UniqueID = 853452
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0FF2.pdf' WHERE UniqueID = 853453
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0FF3.pdf' WHERE UniqueID = 853454
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0FF4.pdf' WHERE UniqueID = 853455
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C0FF5.pdf' WHERE UniqueID = 853456
;-- -. . -..- - / . -. - .-. -.--
UPDATE KCSystem.dbo.BatchPage
SET Reviewed = 1
    WHERE BatchID IN (SELECT ExternalBatchID
                          FROM KCSystem.dbo.BatchCatalog
                          WHERE BatchName = 'Peninsular - PENINSULAR 04-10_CAJA 634')
;-- -. . -..- - / . -. - .-. -.--
SELECT Id AS BATCHID, BatchName
    FROM ddoc_Control.trx.Batches
    WHERE BatchName IN (
                        'Peninsular - PENINSULAR 04-10_CAJA 634',
                        'Peninsular - PENINSULAR 05-6_CAJA 631'
        )
;-- -. . -..- - / . -. - .-. -.--
SELECT DocID, UniqueID, PDFGeneration, PDFGenerationFileType
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID = 47913
    ORDER BY 1
;-- -. . -..- - / . -. - .-. -.--
SELECT Id AS BATCHID, BatchName
    FROM ddoc_Control.trx.Batches
    WHERE BatchName IN (
                        'Peninsular - PENINSULAR 05-6_CAJA 633'
        )
;-- -. . -..- - / . -. - .-. -.--
SELECT ExternalBatchID
                          FROM KCSystem.dbo.BatchCatalog
                          WHERE BatchName = 'Peninsular - PENINSULAR 05-6_CAJA 633'
;-- -. . -..- - / . -. - .-. -.--
SELECT DocID, UniqueID, PDFGeneration, PDFGenerationFileType
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID = 42966
    ORDER BY 1
;-- -. . -..- - / . -. - .-. -.--
SELECT Etiqueta, DID, NombreLote
    FROM Datos_PolizasContables
    WHERE NombreLote = 'Peninsular - PENINSULAR 04-10_CAJA 634'
      AND Paginas IS NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT Id AS BATCHID, BatchName
    FROM ddoc_Control.trx.Batches
    WHERE BatchName IN (
                        'Peninsular - PENINSULAR 04-10_CAJA 634'
        )
;-- -. . -..- - / . -. - .-. -.--
SELECT DocID, UniqueID, PDFGeneration, PDFGenerationFileType
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID = 47918
    ORDER BY 1
;-- -. . -..- - / . -. - .-. -.--
SELECT ExternalBatchID
                          FROM KCSystem.dbo.BatchCatalog
                          WHERE BatchName = 'Peninsular - PENINSULAR 04-10_CAJA 634'
;-- -. . -..- - / . -. - .-. -.--
SELECT Value, BatchID, DocID
    FROM KCSystem.dbo.BatchField
    WHERE Value IN (
                    2,
                    3,
                    4,
                    5,
                    6,
                    7,
                    8,
                    9,
                    10,
                    11,
                    14,
                    15,
                    16,
                    17,
                    18,
                    19,
                    20,
                    21,
                    22,
                    23,
                    24,
                    25,
                    26,
                    27,
                    28,
                    30,
                    31,
                    32,
                    33,
                    37,
                    38,
                    68,
                    105,
                    106,
                    107,
                    108,
                    115,
                    125,
                    126,
                    127,
                    128,
                    129,
                    130,
                    131,
                    132,
                    133,
                    134,
                    135,
                    136,
                    137,
                    138,
                    139,
                    140,
                    141,
                    142,
                    143,
                    144,
                    145,
                    146,
                    147,
                    148,
                    149,
                    150,
                    151,
                    152,
                    154,
                    156,
                    157,
                    158,
                    161,
                    164,
                    165,
                    166,
                    167,
                    168,
                    169,
                    171,
                    172,
                    174,
                    175,
                    176,
                    177,
                    178,
                    179,
                    180,
                    181,
                    182,
                    183,
                    184,
                    186,
                    187,
                    189,
                    190,
                    191,
                    192,
                    194,
                    195,
                    196,
                    197,
                    198,
                    199,
                    200,
                    201,
                    202,
                    203,
                    204,
                    206,
                    207,
                    209,
                    210,
                    211,
                    212,
                    213,
                    214,
                    215,
                    216,
                    217,
                    218,
                    219,
                    221,
                    222,
                    223,
                    224,
                    225,
                    226,
                    227,
                    228,
                    229,
                    230,
                    231,
                    232,
                    233,
                    234,
                    235,
                    236,
                    237,
                    238,
                    239,
                    240,
                    241,
                    243,
                    244,
                    245,
                    246,
                    247,
                    248,
                    249,
                    250,
                    251,
                    252,
                    253,
                    254,
                    255,
                    256,
                    257,
                    258,
                    259,
                    260,
                    262,
                    263,
                    264,
                    266,
                    268,
                    269,
                    270,
                    271,
                    272,
                    273,
                    274,
                    275,
                    276,
                    277,
                    278,
                    279,
                    280,
                    281,
                    282,
                    283,
                    284,
                    285,
                    286,
                    287,
                    288,
                    289,
                    290,
                    291,
                    292,
                    293,
                    294,
                    295,
                    296,
                    297,
                    298,
                    299,
                    300,
                    301,
                    302,
                    303,
                    304,
                    306,
                    307,
                    308,
                    309,
                    310,
                    314,
                    316,
                    317,
                    318,
                    319,
                    324,
                    325,
                    326,
                    327,
                    328,
                    329,
                    330,
                    331,
                    332,
                    333,
                    334,
                    335,
                    336,
                    337,
                    338,
                    339,
                    340,
                    341,
                    342,
                    346,
                    347,
                    348,
                    349,
                    350,
                    351,
                    352,
                    353,
                    354,
                    355,
                    356,
                    357,
                    358,
                    359,
                    360,
                    361
        )
;-- -. . -..- - / . -. - .-. -.--
SELECT IndexFieldID, Value, BatchID, DocID
    FROM KCSystem.dbo.BatchField
    WHERE BatchID IN (SELECT ExternalBatchID
                          FROM KCSystem.dbo.BatchCatalog
                          WHERE BatchName = 'Peninsular - PENINSULAR 04-10_CAJA 634')
      AND IndexFieldID = 2790
;-- -. . -..- - / . -. - .-. -.--
SELECT DocID, UniqueID, PDFGeneration, PDFGenerationFileType
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID = 42967
    ORDER BY 1
;-- -. . -..- - / . -. - .-. -.--
SELECT Value, BatchID, DocID
    FROM KCSystem.dbo.BatchField
;-- -. . -..- - / . -. - .-. -.--
SELECT Value, BatchID, DocID
    FROM KCSystem.dbo.BatchField
    WHERE Value IN (
                    'D1333377',
                    'D1333378',
                    'D1333379',
                    'D1333380',
                    'D1333381',
                    'D1333382',
                    'D1333383',
                    'D1333384',
                    'D1333385',
                    'D1333386',
                    'D1333387',
                    'D1333388',
                    'D1333389',
                    'D1333390',
                    'D1333391',
                    'D1333392',
                    'D1333393',
                    'D1333394',
                    'D1333395',
                    'D1333396',
                    'D1333397',
                    'D1333398',
                    'D1333399',
                    'D1333400',
                    'D1333401',
                    'D1333402',
                    'D1333403',
                    'D1333404',
                    'D1333405',
                    'D1333407',
                    'D1333408',
                    'D1333438',
                    'D1333475',
                    'D1333476',
                    'D1333477',
                    'D1333478',
                    'D1333485',
                    'D1333495',
                    'D1333496',
                    'D1333497',
                    'D1333498',
                    'D1333499',
                    'D1333500',
                    'D1333501',
                    'D1333502',
                    'D1333503',
                    'D1333504',
                    'D1333505',
                    'D1333506',
                    'D1333507',
                    'D1333508',
                    'D1333509',
                    'D1333510',
                    'D1333511',
                    'D1333512',
                    'D1333513',
                    'D1333514',
                    'D1333515',
                    'D1333516',
                    'D1333517',
                    'D1333518',
                    'D1333519',
                    'D1333520',
                    'D1333521',
                    'D1333522',
                    'D1333523',
                    'D1333524',
                    'D1333525',
                    'D1333526',
                    'D1333527',
                    'D1333530',
                    'D1333531',
                    'D1333532',
                    'D1333533',
                    'D1333534',
                    'D1333535',
                    'D1333537',
                    'D1333538',
                    'D1333540',
                    'D1333541',
                    'D1333542',
                    'D1333543',
                    'D1333544',
                    'D1333545',
                    'D1333546',
                    'D1333547',
                    'D1333548',
                    'D1333549',
                    'D1333550',
                    'D1333551',
                    'D1333552',
                    'D1333554',
                    'D1333555',
                    'D1333556',
                    'D1333557',
                    'D1333559',
                    'D1333560',
                    'D1333561',
                    'D1333562',
                    'D1333563',
                    'D1333564',
                    'D1333565',
                    'D1333566',
                    'D1333567',
                    'D1333568',
                    'D1333569',
                    'D1333570',
                    'D1333571',
                    'D1333573',
                    'D1333574',
                    'D1333575',
                    'D1333576',
                    'D1333577',
                    'D1333578',
                    'D1333579',
                    'D1333580',
                    'D1333581',
                    'D1333582',
                    'D1333583',
                    'D1333585',
                    'D1333586',
                    'D1333587',
                    'D1333588',
                    'D1333589',
                    'D1333590',
                    'D1333591',
                    'D1333592',
                    'D1333593',
                    'D1333594',
                    'D1333595',
                    'D1333596',
                    'D1333597',
                    'D1333598',
                    'D1333599',
                    'D1333600',
                    'D1333601',
                    'D1333602',
                    'D1333603',
                    'D1333604',
                    'D1333605',
                    'D1333607',
                    'D1333608',
                    'D1333609',
                    'D1333610',
                    'D1333611',
                    'D1333612',
                    'D1333613',
                    'D1333614',
                    'D1333615',
                    'D1333616',
                    'D1333617',
                    'D1333618',
                    'D1333619',
                    'D1333620',
                    'D1333621',
                    'D1333622',
                    'D1333623',
                    'D1333624',
                    'D1333625',
                    'D1333626',
                    'D1333627',
                    'D1333628',
                    'D1333629',
                    'D1333630',
                    'D1333631',
                    'D1333632',
                    'D1333633',
                    'D1333634',
                    'D1333635',
                    'D1333636',
                    'D1333637',
                    'D1333638',
                    'D1333639',
                    'D1333640',
                    'D1333641',
                    'D1333642',
                    'D1333643',
                    'D1333644',
                    'D1333645',
                    'D1333646',
                    'D1333647',
                    'D1333648',
                    'D1333649',
                    'D1333650',
                    'D1333651',
                    'D1333652',
                    'D1333653',
                    'D1333654',
                    'D1333655',
                    'D1333656',
                    'D1333657',
                    'D1333658',
                    'D1333659',
                    'D1333660',
                    'D1333661',
                    'D1333662',
                    'D1333663',
                    'D1333664',
                    'D1333665',
                    'D1333667',
                    'D1333668',
                    'D1333669',
                    'D1333670',
                    'D1333671',
                    'D1333675',
                    'D1333677',
                    'D1333678',
                    'D1333679',
                    'D1333680',
                    'D1333685',
                    'D1333686',
                    'D1333687',
                    'D1333688',
                    'D1333689',
                    'D1333690',
                    'D1333691',
                    'D1333692',
                    'D1333693',
                    'D1333694',
                    'D1333695',
                    'D1333696',
                    'D1333697',
                    'D1333698',
                    'D1333699',
                    'D1333700',
                    'D1333701',
                    'D1333702',
                    'D1333703',
                    'D1333707',
                    'D1333708',
                    'D1333709',
                    'D1333710',
                    'D1333711',
                    'D1333712',
                    'D1333713',
                    'D1333714',
                    'D1333715',
                    'D1333716',
                    'D1333717',
                    'D1333718',
                    'D1333719',
                    'D1333720',
                    'D1333721',
                    'D1333722'
        )
;-- -. . -..- - / . -. - .-. -.--
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1054.pdf' WHERE UniqueID = 853457
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1055.pdf' WHERE UniqueID = 853458
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1056.pdf' WHERE UniqueID = 853459
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1057.pdf' WHERE UniqueID = 853460
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1058.pdf' WHERE UniqueID = 853461
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1059.pdf' WHERE UniqueID = 853462
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C105A.pdf' WHERE UniqueID = 853463
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C105B.pdf' WHERE UniqueID = 853464
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C105C.pdf' WHERE UniqueID = 853465
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C105D.pdf' WHERE UniqueID = 853466
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C105E.pdf' WHERE UniqueID = 853467
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C105F.pdf' WHERE UniqueID = 853468
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1060.pdf' WHERE UniqueID = 853469
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1061.pdf' WHERE UniqueID = 853470
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1062.pdf' WHERE UniqueID = 853471
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1063.pdf' WHERE UniqueID = 853472
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1064.pdf' WHERE UniqueID = 853473
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1065.pdf' WHERE UniqueID = 853474
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1066.pdf' WHERE UniqueID = 853475
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1067.pdf' WHERE UniqueID = 853476
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1068.pdf' WHERE UniqueID = 853477
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1069.pdf' WHERE UniqueID = 853478
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C106A.pdf' WHERE UniqueID = 853479
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C106B.pdf' WHERE UniqueID = 853480
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C106C.pdf' WHERE UniqueID = 853481
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C106D.pdf' WHERE UniqueID = 853482
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C106E.pdf' WHERE UniqueID = 853483
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C106F.pdf' WHERE UniqueID = 853484
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1070.pdf' WHERE UniqueID = 853485
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1072.pdf' WHERE UniqueID = 853486
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1073.pdf' WHERE UniqueID = 853487
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1091.pdf' WHERE UniqueID = 853488
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10B6.pdf' WHERE UniqueID = 853489
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10B7.pdf' WHERE UniqueID = 853490
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10B8.pdf' WHERE UniqueID = 853491
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10B9.pdf' WHERE UniqueID = 853492
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10C0.pdf' WHERE UniqueID = 853493
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10CA.pdf' WHERE UniqueID = 853494
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10CB.pdf' WHERE UniqueID = 853495
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10CC.pdf' WHERE UniqueID = 853496
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10CD.pdf' WHERE UniqueID = 853497
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10CE.pdf' WHERE UniqueID = 853498
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10CF.pdf' WHERE UniqueID = 853499
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10D0.pdf' WHERE UniqueID = 853500
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10D1.pdf' WHERE UniqueID = 853501
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10D2.pdf' WHERE UniqueID = 853502
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10D3.pdf' WHERE UniqueID = 853503
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10D4.pdf' WHERE UniqueID = 853504
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10D5.pdf' WHERE UniqueID = 853505
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10D6.pdf' WHERE UniqueID = 853506
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10D7.pdf' WHERE UniqueID = 853507
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10D8.pdf' WHERE UniqueID = 853508
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10D9.pdf' WHERE UniqueID = 853509
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10DA.pdf' WHERE UniqueID = 853510
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10DB.pdf' WHERE UniqueID = 853511
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10DC.pdf' WHERE UniqueID = 853512
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10DD.pdf' WHERE UniqueID = 853513
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10DE.pdf' WHERE UniqueID = 853514
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10DF.pdf' WHERE UniqueID = 853515
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10E0.pdf' WHERE UniqueID = 853516
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10E1.pdf' WHERE UniqueID = 853517
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10E2.pdf' WHERE UniqueID = 853518
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10E3.pdf' WHERE UniqueID = 853519
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10E4.pdf' WHERE UniqueID = 853520
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10E5.pdf' WHERE UniqueID = 853521
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10E6.pdf' WHERE UniqueID = 853522
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10E7.pdf' WHERE UniqueID = 853523
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10E8.pdf' WHERE UniqueID = 853524
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10E9.pdf' WHERE UniqueID = 853525
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10EA.pdf' WHERE UniqueID = 853526
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10ED.pdf' WHERE UniqueID = 853527
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10EE.pdf' WHERE UniqueID = 853528
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10EF.pdf' WHERE UniqueID = 853529
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10F0.pdf' WHERE UniqueID = 853530
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10F1.pdf' WHERE UniqueID = 853531
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10F2.pdf' WHERE UniqueID = 853532
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10F4.pdf' WHERE UniqueID = 853533
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10F5.pdf' WHERE UniqueID = 853534
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10F7.pdf' WHERE UniqueID = 853535
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10F8.pdf' WHERE UniqueID = 853536
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10F9.pdf' WHERE UniqueID = 853537
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10FA.pdf' WHERE UniqueID = 853538
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10FB.pdf' WHERE UniqueID = 853539
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10FC.pdf' WHERE UniqueID = 853540
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10FD.pdf' WHERE UniqueID = 853541
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10FE.pdf' WHERE UniqueID = 853542
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C10FF.pdf' WHERE UniqueID = 853543
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1100.pdf' WHERE UniqueID = 853544
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1101.pdf' WHERE UniqueID = 853545
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1102.pdf' WHERE UniqueID = 853546
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1103.pdf' WHERE UniqueID = 853547
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1105.pdf' WHERE UniqueID = 853548
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1106.pdf' WHERE UniqueID = 853549
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1107.pdf' WHERE UniqueID = 853550
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1108.pdf' WHERE UniqueID = 853551
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C110A.pdf' WHERE UniqueID = 853552
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C110B.pdf' WHERE UniqueID = 853553
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C110C.pdf' WHERE UniqueID = 853554
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C110D.pdf' WHERE UniqueID = 853555
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C110E.pdf' WHERE UniqueID = 853556
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C110F.pdf' WHERE UniqueID = 853557
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1110.pdf' WHERE UniqueID = 853558
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1111.pdf' WHERE UniqueID = 853559
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1112.pdf' WHERE UniqueID = 853560
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1113.pdf' WHERE UniqueID = 853561
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1114.pdf' WHERE UniqueID = 853562
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1115.pdf' WHERE UniqueID = 853563
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1116.pdf' WHERE UniqueID = 853564
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1118.pdf' WHERE UniqueID = 853565
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1119.pdf' WHERE UniqueID = 853566
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C111A.pdf' WHERE UniqueID = 853567
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C111B.pdf' WHERE UniqueID = 853568
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C111C.pdf' WHERE UniqueID = 853569
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C111D.pdf' WHERE UniqueID = 853570
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C111E.pdf' WHERE UniqueID = 853571
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C111F.pdf' WHERE UniqueID = 853572
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1120.pdf' WHERE UniqueID = 853573
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1121.pdf' WHERE UniqueID = 853574
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1122.pdf' WHERE UniqueID = 853575
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1124.pdf' WHERE UniqueID = 853576
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1125.pdf' WHERE UniqueID = 853577
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1126.pdf' WHERE UniqueID = 853578
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1127.pdf' WHERE UniqueID = 853579
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1128.pdf' WHERE UniqueID = 853580
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1129.pdf' WHERE UniqueID = 853581
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C112A.pdf' WHERE UniqueID = 853582
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C112B.pdf' WHERE UniqueID = 853583
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C112C.pdf' WHERE UniqueID = 853584
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C112D.pdf' WHERE UniqueID = 853585
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C112E.pdf' WHERE UniqueID = 853586
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C112F.pdf' WHERE UniqueID = 853587
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1130.pdf' WHERE UniqueID = 853588
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1131.pdf' WHERE UniqueID = 853589
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1132.pdf' WHERE UniqueID = 853590
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1133.pdf' WHERE UniqueID = 853591
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1134.pdf' WHERE UniqueID = 853592
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1135.pdf' WHERE UniqueID = 853593
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1136.pdf' WHERE UniqueID = 853594
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1137.pdf' WHERE UniqueID = 853595
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1138.pdf' WHERE UniqueID = 853596
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C113A.pdf' WHERE UniqueID = 853597
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C113B.pdf' WHERE UniqueID = 853598
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C113C.pdf' WHERE UniqueID = 853599
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C113D.pdf' WHERE UniqueID = 853600
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C113E.pdf' WHERE UniqueID = 853601
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C113F.pdf' WHERE UniqueID = 853602
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1140.pdf' WHERE UniqueID = 853603
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1141.pdf' WHERE UniqueID = 853604
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1142.pdf' WHERE UniqueID = 853605
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1143.pdf' WHERE UniqueID = 853606
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1144.pdf' WHERE UniqueID = 853607
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1145.pdf' WHERE UniqueID = 853608
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1146.pdf' WHERE UniqueID = 853609
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1147.pdf' WHERE UniqueID = 853610
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1148.pdf' WHERE UniqueID = 853611
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1149.pdf' WHERE UniqueID = 853612
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C114A.pdf' WHERE UniqueID = 853613
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C114B.pdf' WHERE UniqueID = 853614
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C114C.pdf' WHERE UniqueID = 853615
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C114D.pdf' WHERE UniqueID = 853616
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C114E.pdf' WHERE UniqueID = 853617
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C114F.pdf' WHERE UniqueID = 853618
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1150.pdf' WHERE UniqueID = 853619
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1151.pdf' WHERE UniqueID = 853620
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1152.pdf' WHERE UniqueID = 853621
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1153.pdf' WHERE UniqueID = 853622
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1154.pdf' WHERE UniqueID = 853623
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1155.pdf' WHERE UniqueID = 853624
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1156.pdf' WHERE UniqueID = 853625
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1157.pdf' WHERE UniqueID = 853626
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1158.pdf' WHERE UniqueID = 853627
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1159.pdf' WHERE UniqueID = 853628
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C115A.pdf' WHERE UniqueID = 853629
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C115B.pdf' WHERE UniqueID = 853630
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C115C.pdf' WHERE UniqueID = 853631
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C115D.pdf' WHERE UniqueID = 853632
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C115E.pdf' WHERE UniqueID = 853633
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C115F.pdf' WHERE UniqueID = 853634
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1160.pdf' WHERE UniqueID = 853635
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1161.pdf' WHERE UniqueID = 853636
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1162.pdf' WHERE UniqueID = 853637
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1163.pdf' WHERE UniqueID = 853638
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1164.pdf' WHERE UniqueID = 853639
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1165.pdf' WHERE UniqueID = 853640
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1166.pdf' WHERE UniqueID = 853641
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1167.pdf' WHERE UniqueID = 853642
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1168.pdf' WHERE UniqueID = 853643
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1169.pdf' WHERE UniqueID = 853644
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C116A.pdf' WHERE UniqueID = 853645
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C116B.pdf' WHERE UniqueID = 853646
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C116C.pdf' WHERE UniqueID = 853647
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C116D.pdf' WHERE UniqueID = 853648
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C116E.pdf' WHERE UniqueID = 853649
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C116F.pdf' WHERE UniqueID = 853650
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1170.pdf' WHERE UniqueID = 853651
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1171.pdf' WHERE UniqueID = 853652
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1172.pdf' WHERE UniqueID = 853653
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1173.pdf' WHERE UniqueID = 853654
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1174.pdf' WHERE UniqueID = 853655
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1176.pdf' WHERE UniqueID = 853656
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1177.pdf' WHERE UniqueID = 853657
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1178.pdf' WHERE UniqueID = 853658
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1179.pdf' WHERE UniqueID = 853659
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C117A.pdf' WHERE UniqueID = 853660
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C117E.pdf' WHERE UniqueID = 853661
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1180.pdf' WHERE UniqueID = 853662
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1181.pdf' WHERE UniqueID = 853663
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1182.pdf' WHERE UniqueID = 853664
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1183.pdf' WHERE UniqueID = 853665
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1188.pdf' WHERE UniqueID = 853666
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1189.pdf' WHERE UniqueID = 853667
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C118A.pdf' WHERE UniqueID = 853668
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C118B.pdf' WHERE UniqueID = 853669
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C118C.pdf' WHERE UniqueID = 853670
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C118D.pdf' WHERE UniqueID = 853671
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C118E.pdf' WHERE UniqueID = 853672
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C118F.pdf' WHERE UniqueID = 853673
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1190.pdf' WHERE UniqueID = 853674
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1191.pdf' WHERE UniqueID = 853675
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1192.pdf' WHERE UniqueID = 853676
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1193.pdf' WHERE UniqueID = 853677
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1194.pdf' WHERE UniqueID = 853678
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1195.pdf' WHERE UniqueID = 853679
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1196.pdf' WHERE UniqueID = 853680
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1197.pdf' WHERE UniqueID = 853681
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1198.pdf' WHERE UniqueID = 853682
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C1199.pdf' WHERE UniqueID = 853683
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C119A.pdf' WHERE UniqueID = 853684
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C119E.pdf' WHERE UniqueID = 853685
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C119F.pdf' WHERE UniqueID = 853686
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C11A0.pdf' WHERE UniqueID = 853687
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C11A1.pdf' WHERE UniqueID = 853688
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C11A2.pdf' WHERE UniqueID = 853689
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C11A3.pdf' WHERE UniqueID = 853690
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C11A4.pdf' WHERE UniqueID = 853691
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C11A5.pdf' WHERE UniqueID = 853692
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C11A6.pdf' WHERE UniqueID = 853693
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C11A7.pdf' WHERE UniqueID = 853694
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C11A8.pdf' WHERE UniqueID = 853695
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C11A9.pdf' WHERE UniqueID = 853696
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C11AA.pdf' WHERE UniqueID = 853697
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C11AB.pdf' WHERE UniqueID = 853698
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C11AC.pdf' WHERE UniqueID = 853699
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C11AD.pdf' WHERE UniqueID = 853700
;-- -. . -..- - / . -. - .-. -.--
UPDATE KCSystem.dbo.BatchPage
SET Reviewed = 1
    WHERE BatchID IN (SELECT ExternalBatchID
                          FROM KCSystem.dbo.BatchCatalog
                          WHERE BatchName = 'Peninsular - PENINSULAR 05-6_CAJA 631')
;-- -. . -..- - / . -. - .-. -.--
SELECT ExternalBatchID
                          FROM KCSystem.dbo.BatchCatalog
                          WHERE BatchName = 'Peninsular - PENINSULAR 05-6_CAJA 631'
;-- -. . -..- - / . -. - .-. -.--
SELECT Value, BatchID, DocID
    FROM KCSystem.dbo.BatchField
    WHERE Value IN (
                    1,
                    2,
                    3,
                    4,
                    8,
                    11,
                    12,
                    13,
                    16,
                    17,
                    18,
                    19,
                    20,
                    23,
                    24,
                    25,
                    26,
                    27,
                    28,
                    29,
                    30,
                    31,
                    32,
                    33,
                    34,
                    35,
                    36,
                    37,
                    38,
                    39,
                    40,
                    41,
                    42,
                    44,
                    45,
                    46,
                    47,
                    49,
                    50,
                    51,
                    53,
                    54,
                    55,
                    56,
                    57,
                    58,
                    59,
                    60,
                    61,
                    62,
                    63,
                    64,
                    65,
                    66,
                    67,
                    68,
                    69,
                    70,
                    72,
                    73,
                    74,
                    75,
                    76,
                    77,
                    78,
                    79,
                    80,
                    81,
                    82,
                    83,
                    84,
                    85,
                    86,
                    87,
                    88,
                    89,
                    90,
                    91,
                    92,
                    93,
                    94,
                    95,
                    96,
                    97,
                    98,
                    99,
                    100,
                    101,
                    102,
                    103,
                    104,
                    105,
                    106,
                    107,
                    108,
                    109,
                    111,
                    112,
                    113,
                    114,
                    115,
                    116,
                    117,
                    118,
                    120,
                    121,
                    122,
                    123,
                    124,
                    126,
                    127,
                    128,
                    129,
                    130,
                    131
        )
;-- -. . -..- - / . -. - .-. -.--
SELECT Value, BatchID, DocID
    FROM KCSystem.dbo.BatchField
    WHERE Value IN (
                    'D1331419',
                    'D1331420',
                    'D1331421',
                    'D1331422',
                    'D1331426',
                    'D1331429',
                    'D1331430',
                    'D1331431',
                    'D1331433',
                    'D1331434',
                    'D1331435',
                    'D1331436',
                    'D1331437',
                    'D1331440',
                    'D1331441',
                    'D1331442',
                    'D1331443',
                    'D1331444',
                    'D1331445',
                    'D1331446',
                    'D1331447',
                    'D1331448',
                    'D1331449',
                    'D1331450',
                    'D1331451',
                    'D1331452',
                    'D1331453',
                    'D1331454',
                    'D1331455',
                    'D1331456',
                    'D1331457',
                    'D1331458',
                    'D1331459',
                    'D1331461',
                    'D1331462',
                    'D1331463',
                    'D1331464',
                    'D1331466',
                    'D1331467',
                    'D1331468',
                    'D1331470',
                    'D1331471',
                    'D1331472',
                    'D1331473',
                    'D1331474',
                    'D1331475',
                    'D1331476',
                    'D1331477',
                    'D1331478',
                    'D1331479',
                    'D1331480',
                    'D1331481',
                    'D1331482',
                    'D1331483',
                    'D1331484',
                    'D1331485',
                    'D1331486',
                    'D1331487',
                    'D1331489',
                    'D1331490',
                    'D1331491',
                    'D1331492',
                    'D1331493',
                    'D1331494',
                    'D1331495',
                    'D1331496',
                    'D1331497',
                    'D1331498',
                    'D1331499',
                    'D1331500',
                    'D1331501',
                    'D1331502',
                    'D1331503',
                    'D1331504',
                    'D1331505',
                    'D1331506',
                    'D1331507',
                    'D1331508',
                    'D1331509',
                    'D1331510',
                    'D1331511',
                    'D1331512',
                    'D1331513',
                    'D1331514',
                    'D1331515',
                    'D1331516',
                    'D1331517',
                    'D1331518',
                    'D1331519',
                    'D1331520',
                    'D1331521',
                    'D1331522',
                    'D1331523',
                    'D1331524',
                    'D1331525',
                    'D1331526',
                    'D1331528',
                    'D1331529',
                    'D1331530',
                    'D1331531',
                    'D1331532',
                    'D1331533',
                    'D1331534',
                    'D1331535',
                    'D1331537',
                    'D1331538',
                    'D1331539',
                    'D1331540',
                    'D1331541',
                    'D1331543',
                    'D1331544',
                    'D1331545',
                    'D1331546',
                    'D1331547',
                    'D1331548'
        )
;-- -. . -..- - / . -. - .-. -.--
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B65.pdf' WHERE UniqueID = 853701
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B66.pdf' WHERE UniqueID = 853702
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B67.pdf' WHERE UniqueID = 853703
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B68.pdf' WHERE UniqueID = 853704
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B6C.pdf' WHERE UniqueID = 853705
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B6F.pdf' WHERE UniqueID = 853706
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B70.pdf' WHERE UniqueID = 853707
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B71.pdf' WHERE UniqueID = 853708
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B74.pdf' WHERE UniqueID = 853709
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B75.pdf' WHERE UniqueID = 853710
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B76.pdf' WHERE UniqueID = 853711
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B77.pdf' WHERE UniqueID = 853712
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B78.pdf' WHERE UniqueID = 853713
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B7B.pdf' WHERE UniqueID = 853714
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B7C.pdf' WHERE UniqueID = 853715
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B7D.pdf' WHERE UniqueID = 853716
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B7E.pdf' WHERE UniqueID = 853717
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B7F.pdf' WHERE UniqueID = 853718
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B80.pdf' WHERE UniqueID = 853719
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B81.pdf' WHERE UniqueID = 853720
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B82.pdf' WHERE UniqueID = 853721
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B83.pdf' WHERE UniqueID = 853722
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B84.pdf' WHERE UniqueID = 853723
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B85.pdf' WHERE UniqueID = 853724
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B86.pdf' WHERE UniqueID = 853725
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B87.pdf' WHERE UniqueID = 853726
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B88.pdf' WHERE UniqueID = 853727
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B89.pdf' WHERE UniqueID = 853728
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B8A.pdf' WHERE UniqueID = 853729
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B8B.pdf' WHERE UniqueID = 853730
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B8C.pdf' WHERE UniqueID = 853731
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B8D.pdf' WHERE UniqueID = 853732
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B8E.pdf' WHERE UniqueID = 853733
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B90.pdf' WHERE UniqueID = 853734
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B91.pdf' WHERE UniqueID = 853735
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B92.pdf' WHERE UniqueID = 853736
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B93.pdf' WHERE UniqueID = 853737
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B95.pdf' WHERE UniqueID = 853738
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B96.pdf' WHERE UniqueID = 853739
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B97.pdf' WHERE UniqueID = 853740
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B99.pdf' WHERE UniqueID = 853741
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B9A.pdf' WHERE UniqueID = 853742
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B9B.pdf' WHERE UniqueID = 853743
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B9C.pdf' WHERE UniqueID = 853744
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B9D.pdf' WHERE UniqueID = 853745
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B9E.pdf' WHERE UniqueID = 853746
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4B9F.pdf' WHERE UniqueID = 853747
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BA0.pdf' WHERE UniqueID = 853748
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BA1.pdf' WHERE UniqueID = 853749
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BA2.pdf' WHERE UniqueID = 853750
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BA3.pdf' WHERE UniqueID = 853751
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BA4.pdf' WHERE UniqueID = 853752
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BA5.pdf' WHERE UniqueID = 853753
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BA6.pdf' WHERE UniqueID = 853754
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BA7.pdf' WHERE UniqueID = 853755
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BA8.pdf' WHERE UniqueID = 853756
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BA9.pdf' WHERE UniqueID = 853757
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BAA.pdf' WHERE UniqueID = 853758
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BAC.pdf' WHERE UniqueID = 853759
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BAD.pdf' WHERE UniqueID = 853760
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BAE.pdf' WHERE UniqueID = 853761
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BAF.pdf' WHERE UniqueID = 853762
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BB0.pdf' WHERE UniqueID = 853763
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BB1.pdf' WHERE UniqueID = 853764
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BB2.pdf' WHERE UniqueID = 853765
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BB3.pdf' WHERE UniqueID = 853766
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BB4.pdf' WHERE UniqueID = 853767
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BB5.pdf' WHERE UniqueID = 853768
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BB6.pdf' WHERE UniqueID = 853769
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BB7.pdf' WHERE UniqueID = 853770
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BB8.pdf' WHERE UniqueID = 853771
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BB9.pdf' WHERE UniqueID = 853772
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BBA.pdf' WHERE UniqueID = 853773
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BBB.pdf' WHERE UniqueID = 853774
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BBC.pdf' WHERE UniqueID = 853775
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BBD.pdf' WHERE UniqueID = 853776
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BBE.pdf' WHERE UniqueID = 853777
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BBF.pdf' WHERE UniqueID = 853778
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BC0.pdf' WHERE UniqueID = 853779
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BC1.pdf' WHERE UniqueID = 853780
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BC2.pdf' WHERE UniqueID = 853781
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BC3.pdf' WHERE UniqueID = 853782
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BC4.pdf' WHERE UniqueID = 853783
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BC5.pdf' WHERE UniqueID = 853784
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BC6.pdf' WHERE UniqueID = 853785
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BC7.pdf' WHERE UniqueID = 853786
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BC8.pdf' WHERE UniqueID = 853787
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BC9.pdf' WHERE UniqueID = 853788
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BCA.pdf' WHERE UniqueID = 853789
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BCB.pdf' WHERE UniqueID = 853790
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BCC.pdf' WHERE UniqueID = 853791
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BCD.pdf' WHERE UniqueID = 853792
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BCE.pdf' WHERE UniqueID = 853793
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BCF.pdf' WHERE UniqueID = 853794
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BD0.pdf' WHERE UniqueID = 853795
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BD1.pdf' WHERE UniqueID = 853796
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BD3.pdf' WHERE UniqueID = 853797
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BD4.pdf' WHERE UniqueID = 853798
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BD5.pdf' WHERE UniqueID = 853799
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BD6.pdf' WHERE UniqueID = 853800
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BD7.pdf' WHERE UniqueID = 853801
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BD8.pdf' WHERE UniqueID = 853802
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BD9.pdf' WHERE UniqueID = 853803
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BDA.pdf' WHERE UniqueID = 853804
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BDC.pdf' WHERE UniqueID = 853805
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BDD.pdf' WHERE UniqueID = 853806
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BDE.pdf' WHERE UniqueID = 853807
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BDF.pdf' WHERE UniqueID = 853808
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BE0.pdf' WHERE UniqueID = 853809
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BE2.pdf' WHERE UniqueID = 853810
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BE3.pdf' WHERE UniqueID = 853811
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BE4.pdf' WHERE UniqueID = 853812
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BE5.pdf' WHERE UniqueID = 853813
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BE6.pdf' WHERE UniqueID = 853814
UPDATE KCSystem.dbo.BatchDocument SET PDFGeneration = 1, PDFGenerationFileType = 1004, PDFGenerationFileName = N'K:\SalidaPDF\Peninsular\PolizasContables\000C4BE7.pdf' WHERE UniqueID = 853815
;-- -. . -..- - / . -. - .-. -.--
SELECT IndexFieldID, Value, BatchID, DocID
    FROM KCSystem.dbo.BatchField
    WHERE BatchID IN (SELECT ExternalBatchID
                          FROM KCSystem.dbo.BatchCatalog
                          WHERE BatchName = 'Peninsular - PENINSULAR 05-6_CAJA 631')
      AND IndexFieldID = 2790
;-- -. . -..- - / . -. - .-. -.--
SELECT Etiqueta, DID, NombreLote
    FROM Datos_PolizasContables
    WHERE NombreLote = 'Peninsular - PENINSULAR 05-6_CAJA 631'
      AND Paginas IS NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT Id AS BATCHID, BatchName
    FROM ddoc_Control.trx.Batches
    WHERE BatchName IN (
                        'Peninsular - PENINSULAR 05-6_CAJA 631'
        )
;-- -. . -..- - / . -. - .-. -.--
SELECT DocID, UniqueID, PDFGeneration, PDFGenerationFileType
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID = 42968
    ORDER BY 1
;-- -. . -..- - / . -. - .-. -.--
SELECT DocID, UniqueID, PDFGeneration, PDFGenerationFileType, PDFGenerationFileName
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID = 42968
    ORDER BY 1
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM KCSystem.dbo.BatchCatalog
WHERE ProcessID = 14999
AND State = 128
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM KCSystem.dbo.BatchCatalog
WHERE ProcessID = 14999
AND State = 128
AND ClassName = 'Peninsular_PolizasContables'
;-- -. . -..- - / . -. - .-. -.--
SELECT UniqueID
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID IN (SELECT ExternalBatchID
                          FROM KCSystem.dbo.BatchCatalog
                          WHERE ProcessID = 14999
                            AND State = 128
                            AND ClassName = 'Peninsular_PolizasContables')
;-- -. . -..- - / . -. - .-. -.--
SELECT NombreLote, COUNT(*) AS REGISTROS
    FROM Datos_PolizasContables
    WHERE Paginas IS NULL
    GROUP BY NombreLote
    ORDER BY 2 ASC
;-- -. . -..- - / . -. - .-. -.--
SELECT FechaProcesado
     , COUNT(*)     AS Documentos
     , SUM(Paginas) AS Páginas
    FROM Peninsular.dbo.Datos_PolizasContables
    WHERE FechaProcesado LIKE '%2024%'
    GROUP BY FechaProcesado
    ORDER BY CONVERT(DATE, FechaProcesado, 103) ASC
;-- -. . -..- - / . -. - .-. -.--
SELECT UniqueID
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID IN (SELECT ExternalBatchID
                          FROM KCSystem.dbo.BatchCatalog
                          WHERE ProcessID = 14999
                            AND State = 128
                            AND ClassName LIKE '%PENINSULAR%')
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM Peninsular.dbo.Datos_PolizasContables
;-- -. . -..- - / . -. - .-. -.--
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE DIARIO', NUMPOLIZA = '3' WHERE DID = 793430
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '3115' WHERE DID = 797470
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '41185' WHERE DID = 797551
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '41216' WHERE DID = 797585
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '29370' WHERE DID = 794702
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '29397' WHERE DID = 794760
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE DIARIO', NUMPOLIZA = '136412' WHERE DID = 797721
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE DIARIO', NUMPOLIZA = '136436' WHERE DID = 797744
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE DIARIO', NUMPOLIZA = '136444' WHERE DID = 797752
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE DIARIO', NUMPOLIZA = '136450' WHERE DID = 797758
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE DIARIO', NUMPOLIZA = '32' WHERE DID = 794984
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE DIARIO', NUMPOLIZA = '34' WHERE DID = 794988
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '437469' WHERE DID = 795685
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '437470' WHERE DID = 795688
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '437474' WHERE DID = 795698
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '42881' WHERE DID = 796170
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '437526' WHERE DID = 795093
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '42462' WHERE DID = 797903
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '3030' WHERE DID = 795170
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '29450' WHERE DID = 795260
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '29483' WHERE DID = 797058
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '438178' WHERE DID = 809534
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '438181' WHERE DID = 809540
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '29511' WHERE DID = 797086
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '29532' WHERE DID = 797102
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE DIARIO', NUMPOLIZA = '7' WHERE DID = 800012
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '308' WHERE DID = 803330
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE DIARIO', NUMPOLIZA = '19' WHERE DID = 849230
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE DIARIO', NUMPOLIZA = '25' WHERE DID = 849231
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE DIARIO', NUMPOLIZA = '26' WHERE DID = 849232
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE DIARIO', NUMPOLIZA = '27' WHERE DID = 849233
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '1307' WHERE DID = 849234
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15616' WHERE DID = 849235
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15617' WHERE DID = 849237
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15620' WHERE DID = 849238
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15621' WHERE DID = 849239
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15622' WHERE DID = 849245
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15624' WHERE DID = 849246
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15625' WHERE DID = 849248
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15626' WHERE DID = 849249
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15627' WHERE DID = 849251
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15629' WHERE DID = 849252
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15630' WHERE DID = 849253
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15631' WHERE DID = 849257
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15633' WHERE DID = 849259
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15634' WHERE DID = 849260
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15635' WHERE DID = 849261
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15637' WHERE DID = 849262
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15638' WHERE DID = 849263
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15639' WHERE DID = 849265
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15640' WHERE DID = 849268
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15641' WHERE DID = 849278
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15642' WHERE DID = 849282
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15643' WHERE DID = 849283
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15646' WHERE DID = 849286
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15647' WHERE DID = 849290
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15648' WHERE DID = 849292
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15650' WHERE DID = 849295
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15651' WHERE DID = 849299
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15653' WHERE DID = 849305
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15654' WHERE DID = 849308
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15656' WHERE DID = 849309
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15657' WHERE DID = 849312
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15658' WHERE DID = 849317
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15661' WHERE DID = 849320
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15662' WHERE DID = 849321
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15663' WHERE DID = 849323
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15664' WHERE DID = 849326
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15665' WHERE DID = 849328
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15666' WHERE DID = 849333
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15667' WHERE DID = 849336
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15673' WHERE DID = 849338
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15674' WHERE DID = 849341
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15675' WHERE DID = 849344
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15676' WHERE DID = 849345
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15677' WHERE DID = 849348
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15678' WHERE DID = 849351
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15679' WHERE DID = 849353
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15680' WHERE DID = 849356
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15681' WHERE DID = 849362
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15682' WHERE DID = 849364
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15683' WHERE DID = 849367
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15684' WHERE DID = 849369
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15685' WHERE DID = 849371
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15686' WHERE DID = 849374
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15687' WHERE DID = 849377
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15689' WHERE DID = 849381
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15690' WHERE DID = 849383
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15691' WHERE DID = 849391
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15692' WHERE DID = 849395
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15694' WHERE DID = 849398
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15695' WHERE DID = 849401
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15698' WHERE DID = 849404
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15699' WHERE DID = 849407
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15701' WHERE DID = 849409
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15702' WHERE DID = 849411
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15703' WHERE DID = 849412
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE EGRESOS', NUMPOLIZA = '15704' WHERE DID = 849414
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '14' WHERE DID = 849416
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '15' WHERE DID = 849417
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '16' WHERE DID = 849420
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '17' WHERE DID = 849422
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '1783' WHERE DID = 849425
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '1785' WHERE DID = 849428
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '1788' WHERE DID = 849430
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '1791' WHERE DID = 849431
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '1794' WHERE DID = 849434
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '1795' WHERE DID = 849437
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '1797' WHERE DID = 849439
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '1799' WHERE DID = 849441
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '1801' WHERE DID = 849443
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '1803' WHERE DID = 849447
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '1806' WHERE DID = 849449
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '1809' WHERE DID = 849453
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '1810' WHERE DID = 849456
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '1811' WHERE DID = 849463
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '1812' WHERE DID = 849465
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '1813' WHERE DID = 849468
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '1818' WHERE DID = 849470
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '1819' WHERE DID = 849472
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '1822' WHERE DID = 849473
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '1824' WHERE DID = 849475
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '197118' WHERE DID = 849476
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '197119' WHERE DID = 849480
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '197120' WHERE DID = 849481
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '197121' WHERE DID = 849486
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '197122' WHERE DID = 849493
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '197123' WHERE DID = 849496
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '197124' WHERE DID = 849499
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '197125' WHERE DID = 849502
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '197126' WHERE DID = 849504
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '197129' WHERE DID = 849506
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '197131' WHERE DID = 849508
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '197132' WHERE DID = 849511
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '197133' WHERE DID = 849514
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '197134' WHERE DID = 849517
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '197135' WHERE DID = 849519
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '197136' WHERE DID = 849520
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '197137' WHERE DID = 849521
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '197138' WHERE DID = 849525
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '197139' WHERE DID = 849526
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '197140' WHERE DID = 849528
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '197141' WHERE DID = 849532
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '197142' WHERE DID = 849536
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '197143' WHERE DID = 849538
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '197144' WHERE DID = 849541
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '197145' WHERE DID = 849544
UPDATE peninsular.dbo.Datos_PolizasContables SET TIPODOCUMENTO = 'POLIZA DE INGRESOS', NUMPOLIZA = '197147' WHERE DID = 849552
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM Peninsular.dbo.Datos_PolizasContables
WHERE CIAGENERADORA = ''
;-- -. . -..- - / . -. - .-. -.--
UPDATE PENINSULAR.dbo.Datos_PolizasContables
SET NOCAJALEGAJONUMPOLIZA = NOCAJA + LEGAJO + NUMPOLIZA + TIPODOCUMENTO
WHERE NOCAJALEGAJONUMPOLIZA = ''
;-- -. . -..- - / . -. - .-. -.--
UPDATE PC
SET PC.CIAGENERADORA = BPC.CIAGENERADORA
  , PC.FECHA = BPC.FECHA
  , PC.TOMO = BPC.TOMO
  , PC.VIGENCIA = BPC.VIGENCIA
  , PC.ID_CLTE = BPC.ID
  , PC.OFICINAS_OBRA = BPC.OFICINAS_OBRA
  , PC.CONCEPTO = BPC.CONCEPTO
  , PC.IMPORTE = BPC.IMPORTE
  , PC.CANTANEXOS = BPC.CANT_ANEXOS
    FROM PENINSULAR.dbo.Datos_PolizasContables PC
             INNER JOIN PENINSULAR.dbo.BASE_Polizas_Contables BPC ON PC.NOCAJALEGAJONUMPOLIZA = BPC.NumCajaLegajoNumero
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM Peninsular.dbo.Documento
WHERE DID = '849238'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM Peninsular.dbo.Datos_PolizasContables
         WHERE DID = '849238'
;-- -. . -..- - / . -. - .-. -.--
SELECT DID, REPLACE(Path,'SRVKOFAX','10.0.1.36') FROM Peninsular.dbo.Documento
WHERE DID = '849238'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM Peninsular.dbo.BASE_Polizas_Contables
WHERE NumCaja = 693
AND LEGAJO = 2
AND NUMERO = 15620
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM Peninsular.dbo.Datos_PolizasContables
    WHERE DID = '849238'
;-- -. . -..- - / . -. - .-. -.--
SELECT DID, REPLACE(Path, 'SRVKOFAX', '10.0.1.36') AS PATH
    FROM Peninsular.dbo.Documento
    WHERE DID = 849253
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM Peninsular.dbo.BASE_Polizas_Contables
WHERE NumCaja = 693
AND LEGAJO = 2
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM Peninsular.dbo.Datos_PolizasContables
    --WHERE OFICINAS_OBRA = ''
WHERE DID = 849253
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM Peninsular.dbo.Datos_PolizasContables
    WHERE OFICINAS_OBRA = ''
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM Peninsular.dbo.Datos_PolizasContables
    WHERE CONCEPTO = ''
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM Peninsular.dbo.Datos_PolizasContables
    WHERE IMPORTE = ''
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM Peninsular.dbo.Datos_PolizasContables
WHERE DID = 849268
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM Peninsular.dbo.BASE_Polizas_Contables
WHERE NumCaja = 636
AND LEGAJO = 14
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM Peninsular.dbo.BASE_Polizas_Contables
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM Peninsular.dbo.Datos_PolizasContables
WHERE CAJA = ''
;-- -. . -..- - / . -. - .-. -.--
SELECT DID, REPLACE(Path, 'SRVKOFAX', '10.0.1.36') AS PATH
    FROM Peninsular.dbo.Documento
    WHERE DID = 849268
;-- -. . -..- - / . -. - .-. -.--
SELECT DID, REPLACE(Path, 'SRVKOFAX', '10.0.1.36') AS PATH
    FROM Peninsular.dbo.Documento
    WHERE DID = 849295
;-- -. . -..- - / . -. - .-. -.--
SELECT DID, REPLACE(Path, 'SRVKOFAX', '10.0.1.36') AS PATH
    FROM Peninsular.dbo.Documento
    WHERE DID = 849356
;-- -. . -..- - / . -. - .-. -.--
SELECT DID, REPLACE(Path, 'SRVKOFAX', '10.0.1.36') AS PATH
    FROM Peninsular.dbo.Documento
    WHERE DID = 849383
;-- -. . -..- - / . -. - .-. -.--
SELECT DID, REPLACE(Path, 'SRVKOFAX', '10.0.1.36') AS PATH
    FROM Peninsular.dbo.Documento
    WHERE DID = 849456
;-- -. . -..- - / . -. - .-. -.--
SELECT DID, REPLACE(Path, 'SRVKOFAX', '10.0.1.36') AS PATH
    FROM Peninsular.dbo.Documento
    WHERE DID = 849481
;-- -. . -..- - / . -. - .-. -.--
SELECT DID, REPLACE(Path, 'SRVKOFAX', '10.0.1.36') AS PATH
    FROM Peninsular.dbo.Documento
    WHERE DID = 849528
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM Peninsular.dbo.Datos_PolizasContables
;-- -. . -..- - / . -. - .-. -.--
SELECT CIAGENERADORA
    FROM Peninsular.dbo.Datos_PolizasContables
GROUP BY CIAGENERADORA
;-- -. . -..- - / . -. - .-. -.--
SELECT CIAGENERADORA
    FROM Peninsular.dbo.Datos_PolizasContables
GROUP BY CIAGENERADORA
ORDER BY CIAGENERADORA
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.Datos_PolizasContables
SET CIAGENERADORA = 'CONCESIONARIA LERMA SANTIAGO, S.A. DE C.V.'
WHERE CIAGENERADORA = 'CONCESIONARIA LERMA SANTIAGO, SA DE CV'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.Datos_PolizasContables
SET CIAGENERADORA = 'HI CONCESIONARIA II, S.A. DE C.V.'
WHERE CIAGENERADORA = 'HI CONCESIONARIA II'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.Datos_PolizasContables
SET CIAGENERADORA = 'LA PENINSULAR CIA. CONSTRUCTORA'
WHERE CIAGENERADORA = 'LA PENINSULAR CIA. CONSTRUCTORA, S.A. DE C.V.'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.Datos_PolizasContables
SET CIAGENERADORA = 'LA PENINSULAR CIA. CONSTRUCTORA'
WHERE CIAGENERADORA = 'LA PENINSULAR COMPAÑIA CONSTRUCTORA, S.A. DE C.V.'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.Datos_PolizasContables
SET CIAGENERADORA = 'LA PENINSULAR CIA. CONSTRUCTORA'
WHERE CIAGENERADORA = 'LA PENINSULAR COMPAÑÍA CONSTRUCTORA, S.A. DE C.V.'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.Datos_PolizasContables
SET CIAGENERADORA = 'LA PENINSULAR CIA. CONSTRUCTORA'
WHERE CIAGENERADORA = 'LA PENINSULAR COMPAÑIA CONTRUCTORA, S.A. DE C.V.'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.Datos_PolizasContables
SET CIAGENERADORA = 'LA PENINSULAR CIA. CONSTRUCTORA'
WHERE CIAGENERADORA = 'LA PENINSULAR CONSTRUCTORA, S.A. DE C.V.'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.Datos_PolizasContables
SET CIAGENERADORA = 'LA PENINSULAR CIA. CONSTRUCTORA'
WHERE CIAGENERADORA = 'LA PENSINSULAR COMPAÑIA CONSTRUCTORA, S.A. DE C.V.'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.Datos_PolizasContables
SET CIAGENERADORA = 'LA PENINSULAR COMPAÑÍA CONSTRUCTORA, S.A. DE C.V.'
WHERE CIAGENERADORA = 'LA PENINSULAR COMPAÑIA CONSTRUCTORA'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.Datos_PolizasContables
SET CIAGENERADORA = 'LA PENINSULAR COMPAÑÍA CONSTRUCTORA, S.A. DE C.V.'
WHERE CIAGENERADORA = 'LA PENINSULAR CIA. CONSTRUCTORA'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.Datos_PolizasContables
SET CIAGENERADORA = 'OPERADORA Y ADMINISTACION TECNICA, S.A. DE C.V.'
WHERE CIAGENERADORA = 'OPERADORA Y ADMINISTACION TECNICA, S.A. DE C.V.'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.Datos_PolizasContables
SET CIAGENERADORA = 'OPERADORA Y ADMINISTACION TECNICA, S.A. DE C.V.'
WHERE CIAGENERADORA = 'OPERADORA Y ADMINISTRACION TECNICA, S.A. DE C.V.'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.Datos_PolizasContables
SET CIAGENERADORA = 'OPERADORA Y ADMINISTACION TECNICA, S.A. DE C.V.'
WHERE CIAGENERADORA = 'OPERADORA Y ADMINISTRADORA TECNICA'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.Datos_PolizasContables
SET CIAGENERADORA = 'OPERADORA Y ADMINISTACION TECNICA, S.A. DE C.V.'
WHERE CIAGENERADORA = 'OPERADORA Y ADMINISTRADORA TECNICA, S.A DE C.V.'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.Datos_PolizasContables
SET CIAGENERADORA = 'OPERADORA Y ADMINISTACION TECNICA, S.A. DE C.V.'
WHERE CIAGENERADORA = 'OPERADORA Y ADMINISTRADORA TECNICA, S.A. DE C.V.'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.Datos_PolizasContables
SET CIAGENERADORA = 'REHABILITADOR Y MANTENEDOR DE AUTOPISTAS MEXICANAS, S.A. DE C.V.'
WHERE CIAGENERADORA = 'REHABILITADOR Y MANTENEDOR DE AUTOPISTAS  MEXICANAS, S.A. DE C.V.'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.Datos_PolizasContables
SET CIAGENERADORA = 'REHABILITADOR Y MANTENEDOR DE AUTOPISTAS MEXICANAS, S.A. DE C.V.'
WHERE CIAGENERADORA = 'REHABILITADOR Y MANTENEDOR DE AUTOPISTAS MEXICANAS, S.A. DE C.V.'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.Datos_PolizasContables
SET CIAGENERADORA = 'RESULTADOS CORPORATIVOS, S.A. DE C.V.'
WHERE CIAGENERADORA = 'RESULTADOS CORPORATIVOS'
;-- -. . -..- - / . -. - .-. -.--
UPDATE Peninsular.dbo.Datos_PolizasContables
SET CIAGENERADORA = 'RESULTADOS CORPORATIVOS, S.A. DE C.V.'
WHERE CIAGENERADORA = 'RESULTADOS CORPORATIVOS, S.A. DE C.V.'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM Peninsular.dbo.BASE_Polizas_Contables
WHERE NumCaja = 622
AND LEGAJO = 1
AND NUMERO = 615381
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM Peninsular.dbo.BASE_Polizas_Contables
WHERE NumCaja = 622
AND LEGAJO = 1
;-- -. . -..- - / . -. - .-. -.--
SELECT DID, REPLACE(Path, 'SRVKOFAX', '10.0.1.36') AS PATH
    FROM Peninsular.dbo.Documento
    WHERE DID = 778925
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM Peninsular.dbo.Datos_PolizasContables
WHERE CIAGENERADORA = 'REMORD SEM47 RAMAL OCUILAN CLP'
;-- -. . -..- - / . -. - .-. -.--
SELECT NOCAJA        AS NUMERO_DE_CAJA
     , LEGAJO
     , NUMPOLIZA     AS NUMERO_DE_DOCUMENTO
     , TIPODOCUMENTO AS TIPO_DE_DOCUMENTO
     , FECHA         AS FECHA_DEL_DOCUMENTO
     , CIAGENERADORA AS COMPANIA_PROP_DEL_DOCTO
     , OFICINAS_OBRA AS ORIGEN_DEL_DOCUMENTO
     , CONCEPTO      AS CONCEPTO_DEL_DOCTO_REF
     , IMPORTE
     , Paginas
     , 'ENTREGA 8'   AS ENTREGA
    FROM Peninsular.dbo.Datos_PolizasContables A
             INNER JOIN Peninsular.dbo.Documento B ON A.DID = B.DID
    WHERE FechaProcesado LIKE '%2024'
;-- -. . -..- - / . -. - .-. -.--
SELECT A.DID                                                                                                       AS ID_CARGA
     , NOCAJA                                                                                                      AS NUMERO_DE_CAJA
     , LEGAJO
     , NUMPOLIZA                                                                                                   AS NUMERO_DE_DOCUMENTO
     , TIPODOCUMENTO                                                                                               AS TIPO_DE_DOCUMENTO
     , FECHA                                                                                                       AS FECHA_DEL_DOCUMENTO
     , CIAGENERADORA                                                                                               AS COMPANIA_PROP_DEL_DOCTO
     , OFICINAS_OBRA                                                                                               AS ORIGEN_DEL_DOCUMENTO
     , CONCEPTO                                                                                                    AS CONCEPTO_DEL_DOCTO_REF
     , IMPORTE
     , Paginas
     , 'ENTREGA 8'                                                                                                 AS ENTREGA
     , REPLACE(Path, '\\SRVKOFAX\SalidaPDF\Peninsular\PolizasContables',
               'D:\Entregas\Entrega 8\PolizasContables')                                                           AS RUTA_ARCHIVO
    FROM Peninsular.dbo.Datos_PolizasContables A
             INNER JOIN Peninsular.dbo.Documento B ON A.DID = B.DID
    WHERE Migrado IS NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM Peninsular.dbo.Datos_CorteCaja
WHERE FechaProcesado LIKE '%2024%'
ORDER BY CONVERT(DATE, FechaProcesado, 103)
;-- -. . -..- - / . -. - .-. -.--
SELECT A.DID                                             AS ID_CARGA
     , NOCAJA                                            AS NUMERO_DE_CAJA
     , LEGAJO
     , NUMPOLIZA                                         AS NUMERO_DE_DOCUMENTO
     , TIPODOCUMENTO                                     AS TIPO_DE_DOCUMENTO
     , FECHA                                             AS FECHA_DEL_DOCUMENTO
     , CIAGENERADORA                                     AS COMPANIA_PROP_DEL_DOCTO
     , OFICINAS_OBRA                                     AS ORIGEN_DEL_DOCUMENTO
     , CONCEPTO                                          AS CONCEPTO_DEL_DOCTO_REF
     , IMPORTE
     , Paginas
     , 'ENTREGA 8'                                       AS ENTREGA
     , REPLACE(Path, '\\SRVKOFAX\SalidaPDF\Peninsular\PolizasContables',
               'D:\Entregas\Entrega 8\PolizasContables') AS RUTA_ARCHIVO
    FROM Peninsular.dbo.Datos_PolizasContables A
             INNER JOIN Peninsular.dbo.Documento B ON A.DID = B.DID
    WHERE Migrado IS NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM Peninsular.dbo.Datos_PolizasContables A
             INNER JOIN Peninsular.dbo.Documento B ON A.DID = B.DID
    WHERE FechaProcesado LIKE '%2024'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM Peninsular.dbo.Datos_CorteCaja
WHERE FechaProcesado LIKE '%2024%'
;-- -. . -..- - / . -. - .-. -.--
SELECT A.DID                                             AS ID_CARGA
     , NOCAJA                                            AS NUMERO_DE_CAJA
     , CAJA
     , LEGAJO
     , NUMPOLIZA                                         AS NUMERO_DE_DOCUMENTO
     , TIPODOCUMENTO                                     AS TIPO_DE_DOCUMENTO
     , FECHA                                             AS FECHA_DEL_DOCUMENTO
     , TOMO
     , CIAGENERADORA                                     AS COMPANIA_PROP_DEL_DOCTO
     , OFICINAS_OBRA                                     AS ORIGEN_DEL_DOCUMENTO
     , CONCEPTO                                          AS CONCEPTO_DEL_DOCTO_REF
     , VIGENCIA
     , ID_CLTE
     , IMPORTE
     , Paginas
    FROM Peninsular.dbo.Datos_PolizasContables A
             INNER JOIN Peninsular.dbo.Documento B ON A.DID = B.DID
    WHERE FechaProcesado LIKE '%2024'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM Peninsular.dbo.Datos_CorteCaja
WHERE FechaProcesado LIKE '%2024'
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM Peninsular.dbo.Datos_PolizasContables
             WHERE DID IN (
                           792725,
                           779219,
                           781814,
                           780781,
                           763847
                 )
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM Peninsular.dbo.Datos_CorteCaja
WHERE FechaProcesado LIKE '%2024'
;-- -. . -..- - / . -. - .-. -.--
SELECT DID AS ID_CARGA,
NOCAJA AS NUMERO_CAJA,
NUMCORTE  AS NUMERO_CORTE,
NUMPOLIZA AS NUMERO_DOCUMENTO,
TIPODOCUMENTO AS TIPO_DOCUMENTO,
Periodo  AS PERIODO,
TOMO AS TOMO,
CIAGENERADORA AS COMPAÑIA_PROPIETRIA,
FECHA AS FECHA_DOCUMENTO,
ID_CLTE AS NUMERO_PROYECTO,
CONCEPTO AS CONCEPTO_DOCUMENTO,
IMPORTE AS IMPORTE,
Paginas AS PAGINAS,
'ENTREGA 8' AS ENTREGA,
    Path
    FROM Peninsular.dbo.Datos_CorteCaja DCC
    INNER JOIN Peninsular.dbo.Documento D ON DCC.GID = D.DID
WHERE FechaProcesado LIKE '%2024'
;-- -. . -..- - / . -. - .-. -.--
SELECT DCC.DID       AS ID_CARGA
     , NOCAJA        AS NUMERO_CAJA
     , NUMCORTE      AS NUMERO_CORTE
     , NUMPOLIZA     AS NUMERO_DOCUMENTO
     , TIPODOCUMENTO AS TIPO_DOCUMENTO
     , Periodo       AS PERIODO
     , TOMO          AS TOMO
     , CIAGENERADORA AS COMPAÑIA_PROPIETRIA
     , FECHA         AS FECHA_DOCUMENTO
     , ID_CLTE       AS NUMERO_PROYECTO
     , CONCEPTO      AS CONCEPTO_DOCUMENTO
     , IMPORTE       AS IMPORTE
     , Paginas       AS PAGINAS
     , 'ENTREGA 8'   AS ENTREGA
     , Path
    FROM Peninsular.dbo.Datos_CorteCaja DCC
             INNER JOIN Peninsular.dbo.Documento D ON DCC.GID = D.DID
    WHERE FechaProcesado LIKE '%2024'
;-- -. . -..- - / . -. - .-. -.--
SELECT DCC.DID       AS ID_CARGA
     , NOCAJA        AS NUMERO_CAJA
     , NUMCORTE      AS NUMERO_CORTE
     , NUMPOLIZA     AS NUMERO_DOCUMENTO
     , TIPODOCUMENTO AS TIPO_DOCUMENTO
     , Periodo       AS PERIODO
     , TOMO          AS TOMO
     , CIAGENERADORA AS COMPAÑIA_PROPIETRIA
     , FECHA         AS FECHA_DOCUMENTO
     , ID_CLTE       AS NUMERO_PROYECTO
     , CONCEPTO      AS CONCEPTO_DOCUMENTO
     , IMPORTE       AS IMPORTE
     , Paginas       AS PAGINAS
     , 'ENTREGA 8'   AS ENTREGA
     ---, REPLACE(Path, '\\SRVKOFAX\SalidaPDF\Peninsular\PolizasContables',
        ---       'D:\Entregas\Entrega 8\PolizasContables') AS RUTA_ARCHIVO
    FROM Peninsular.dbo.Datos_CorteCaja DCC
             INNER JOIN Peninsular.dbo.Documento D ON DCC.GID = D.DID
    WHERE FechaProcesado LIKE '%2024'
;-- -. . -..- - / . -. - .-. -.--
SELECT DCC.DID       AS ID_CARGA
     , NOCAJA        AS NUMERO_CAJA
     , NUMCORTE      AS NUMERO_CORTE
     , NUMPOLIZA     AS NUMERO_DOCUMENTO
     , TIPODOCUMENTO AS TIPO_DOCUMENTO
     , Periodo       AS PERIODO
     , TOMO          AS TOMO
     , CIAGENERADORA AS COMPAÑIA_PROPIETRIA
     , FECHA         AS FECHA_DOCUMENTO
     , ID_CLTE       AS NUMERO_PROYECTO
     , CONCEPTO      AS CONCEPTO_DOCUMENTO
     , IMPORTE       AS IMPORTE
     , Paginas       AS PAGINAS
     , 'ENTREGA 8'   AS ENTREGA
     ---, REPLACE(Path, '\\SRVKOFAX\SalidaPDF\Peninsular\PolizasContables',
        ---       'D:\Entregas\Entrega 8\PolizasContables') AS RUTA_ARCHIVO
    FROM Peninsular.dbo.Datos_CorteCaja DCC
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM Peninsular.dbo.Documento
WHERE DID = 588283
;-- -. . -..- - / . -. - .-. -.--
SELECT DCC.DID       AS ID_CARGA
     , NOCAJA        AS NUMERO_CAJA
     , NUMCORTE      AS NUMERO_CORTE
     , NUMPOLIZA     AS NUMERO_DOCUMENTO
     , TIPODOCUMENTO AS TIPO_DOCUMENTO
     , Periodo       AS PERIODO
     , TOMO          AS TOMO
     , CIAGENERADORA AS COMPAÑIA_PROPIETRIA
     , FECHA         AS FECHA_DOCUMENTO
     , ID_CLTE       AS NUMERO_PROYECTO
     , CONCEPTO      AS CONCEPTO_DOCUMENTO
     , IMPORTE       AS IMPORTE
     , Paginas       AS PAGINAS
     , 'ENTREGA 8'   AS ENTREGA
     ,Path
    FROM Peninsular.dbo.Datos_CorteCaja DCC
             INNER JOIN Peninsular.dbo.Documento D ON DCC.GID = D.DID
    WHERE FechaProcesado LIKE '%2024'
;-- -. . -..- - / . -. - .-. -.--
SELECT DCC.DID       AS ID_CARGA
     , NOCAJA        AS NUMERO_CAJA
     , NUMCORTE      AS NUMERO_CORTE
     , NUMPOLIZA     AS NUMERO_DOCUMENTO
     , TIPODOCUMENTO AS TIPO_DOCUMENTO
     , Periodo       AS PERIODO
     , TOMO          AS TOMO
     , CIAGENERADORA AS COMPAÑIA_PROPIETRIA
     , FECHA         AS FECHA_DOCUMENTO
     , ID_CLTE       AS NUMERO_PROYECTO
     , CONCEPTO      AS CONCEPTO_DOCUMENTO
     , IMPORTE       AS IMPORTE
     , Paginas       AS PAGINAS
     , 'ENTREGA 8'   AS ENTREGA
     ,Path
    FROM Peninsular.dbo.Datos_CorteCaja DCC
             INNER JOIN Peninsular.dbo.Documento D ON DCC.DID = D.DID
    WHERE FechaProcesado LIKE '%2024'
;-- -. . -..- - / . -. - .-. -.--
SELECT DCC.DID                                           AS ID_CARGA
     , NOCAJA                                            AS NUMERO_CAJA
     , NUMCORTE                                          AS NUMERO_CORTE
     , NUMPOLIZA                                         AS NUMERO_DOCUMENTO
     , TIPODOCUMENTO                                     AS TIPO_DOCUMENTO
     , Periodo                                           AS PERIODO
     , TOMO                                              AS TOMO
     , CIAGENERADORA                                     AS COMPAÑIA_PROPIETRIA
     , FECHA                                             AS FECHA_DOCUMENTO
     , ID_CLTE                                           AS NUMERO_PROYECTO
     , CONCEPTO                                          AS CONCEPTO_DOCUMENTO
     , IMPORTE                                           AS IMPORTE
     , Paginas                                           AS PAGINAS
     , 'ENTREGA 8'                                       AS ENTREGA
     , REPLACE(Path, '\\SRVKOFAX\SalidaPDF\Peninsular\CortesCaja',
               'D:\Entregas\Entrega 8\CortesCaja') AS RUTA_ARCHIVO
    FROM Peninsular.dbo.Datos_CorteCaja DCC
             INNER JOIN Peninsular.dbo.Documento D ON DCC.DID = D.DID
    WHERE FechaProcesado LIKE '%2024'
;-- -. . -..- - / . -. - .-. -.--
SELECT DCC.DID                                     AS ID_CARGA
     , NOCAJA                                      AS NUMERO_CAJA
     , NUMCORTE                                    AS NUMERO_CORTE
     , NUMPOLIZA                                   AS NUMERO_DOCUMENTO
     , TIPODOCUMENTO                               AS TIPO_DOCUMENTO
     , Periodo                                     AS PERIODO
     , TOMO                                        AS TOMO
     , CIAGENERADORA                               AS COMPAÑIA_PROPIETRIA
     , FECHA                                       AS FECHA_DOCUMENTO
     , ID_CLTE                                     AS NUMERO_PROYECTO
     , NOMBREDELAOBRA                              AS NOMBRE_PROYECTO
     , CONCEPTO                                    AS CONCEPTO_DOCUMENTO
     , IMPORTE                                     AS IMPORTE
     , Paginas                                     AS PAGINAS
     , 'ENTREGA 8'                                 AS ENTREGA
     , REPLACE(Path, '\\SRVKOFAX\SalidaPDF\Peninsular\CortesCaja',
               'D:\Entregas\Entrega 8\CortesCaja') AS RUTA_ARCHIVO
    FROM Peninsular.dbo.Datos_CorteCaja DCC
             INNER JOIN Peninsular.dbo.Documento D ON DCC.DID = D.DID
    WHERE FechaProcesado LIKE '%2024'
    ORDER BY 1
;-- -. . -..- - / . -. - .-. -.--
SELECT A.DID                                             AS ID_CARGA
     , NOCAJA                                            AS NUMERO_DE_CAJA
     , LEGAJO
     , NUMPOLIZA                                         AS NUMERO_DE_DOCUMENTO
     , TIPODOCUMENTO                                     AS TIPO_DE_DOCUMENTO
     , FECHA                                             AS FECHA_DEL_DOCUMENTO
     , CIAGENERADORA                                     AS COMPANIA_PROP_DEL_DOCTO
     , OFICINAS_OBRA                                     AS ORIGEN_DEL_DOCUMENTO
     , CONCEPTO                                          AS CONCEPTO_DEL_DOCTO_REF
     , IMPORTE
     , Paginas
     , 'ENTREGA 8'                                       AS ENTREGA
     , REPLACE(Path, '\\SRVKOFAX\SalidaPDF\Peninsular\PolizasContables',
               'D:\Entregas\Entrega 8\PolizasContables') AS RUTA_ARCHIVO
    FROM Peninsular.dbo.Datos_PolizasContables A
             INNER JOIN Peninsular.dbo.Documento B ON A.DID = B.DID
    WHERE A.DID IN (
                    792725,
                    779219,
                    781814,
                    780781,
                    763847
        )
;-- -. . -..- - / . -. - .-. -.--
SELECT A.DID                                             AS ID_CARGA
     , NOCAJA                                            AS NUMERO_DE_CAJA
     , LEGAJO
     , NUMPOLIZA                                         AS NUMERO_DE_DOCUMENTO
     , TIPODOCUMENTO                                     AS TIPO_DE_DOCUMENTO
     , FECHA                                             AS FECHA_DEL_DOCUMENTO
     , CIAGENERADORA                                     AS COMPANIA_PROP_DEL_DOCTO
     , OFICINAS_OBRA                                     AS ORIGEN_DEL_DOCUMENTO
     , CONCEPTO                                          AS CONCEPTO_DEL_DOCTO_REF
     , IMPORTE
     , Paginas
     , 'ENTREGA 8'                                       AS ENTREGA
     , REPLACE(Path, '\\SRVKOFAX\SalidaPDF\Peninsular\PolizasContables',
               'D:\Entregas\Entrega 8\PolizasContables') AS RUTA_ARCHIVO
    FROM Peninsular.dbo.Datos_PolizasContables A
             INNER JOIN Peninsular.dbo.Documento B ON A.DID = B.DID
    WHERE FechaProcesado LIKE '%2024%'
;-- -. . -..- - / . -. - .-. -.--
SELECT DCC.DID                                     AS ID_CARGA
     , NOCAJA                                      AS NUMERO_CAJA
     , NUMCORTE                                    AS NUMERO_CORTE
     , NUMPOLIZA                                   AS NUMERO_DOCUMENTO
     , TIPODOCUMENTO                               AS TIPO_DOCUMENTO
     , Periodo                                     AS PERIODO
     , TOMO                                        AS TOMO
     , CIAGENERADORA                               AS COMPAÑIA_PROPIETRIA
     , FECHA                                       AS FECHA_DOCUMENTO
     , ID_CLTE                                     AS NUMERO_PROYECTO
     , NOMBREDELAOBRA                              AS NOMBRE_PROYECTO
     , CONCEPTO                                    AS CONCEPTO_DOCUMENTO
     , IMPORTE                                     AS IMPORTE
     , Paginas                                     AS PAGINAS
     , 'ENTREGA 8'                                 AS ENTREGA
     , REPLACE(Path, '\\SRVKOFAX\SalidaPDF\Peninsular\CortesCaja',
               'D:\Entregas\Entrega 8\CortesCaja') AS RUTA_ARCHIVO
    FROM Peninsular.dbo.Datos_CorteCaja DCC
             INNER JOIN Peninsular.dbo.Documento D ON DCC.DID = D.DID
    WHERE FechaProcesado LIKE '%2024'
    AND TIPODOCUMENTO = 'POLIZA DE EGRESOS'
    ORDER BY 1
;-- -. . -..- - / . -. - .-. -.--
SELECT DCC.DID                                     AS ID_CARGA
     , NOCAJA                                      AS NUMERO_CAJA
     , NUMCORTE                                    AS NUMERO_CORTE
     , NUMPOLIZA                                   AS NUMERO_DOCUMENTO
     , TIPODOCUMENTO                               AS TIPO_DOCUMENTO
     , Periodo                                     AS PERIODO
     , TOMO                                        AS TOMO
     , CIAGENERADORA                               AS COMPAÑIA_PROPIETRIA
     , FECHA                                       AS FECHA_DOCUMENTO
     , ID_CLTE                                     AS NUMERO_PROYECTO
     , NOMBREDELAOBRA                              AS NOMBRE_PROYECTO
     , CONCEPTO                                    AS CONCEPTO_DOCUMENTO
     , IMPORTE                                     AS IMPORTE
     , Paginas                                     AS PAGINAS
     , 'ENTREGA 8'                                 AS ENTREGA
     , REPLACE(Path, '\\SRVKOFAX\SalidaPDF\Peninsular\CortesCaja',
               'D:\Entregas\Entrega 8\CortesCaja') AS RUTA_ARCHIVO
    FROM Peninsular.dbo.Datos_CorteCaja DCC
             INNER JOIN Peninsular.dbo.Documento D ON DCC.DID = D.DID
    WHERE FechaProcesado LIKE '%2024'
    AND TIPODOCUMENTO NOT IN ('POLIZA DE EGRESOS')
    ORDER BY 1
;-- -. . -..- - / . -. - .-. -.--
SELECT DCC.DID                                     AS ID_CARGA
     , NOCAJA                                      AS NUMERO_CAJA
     , NUMCORTE                                    AS NUMERO_CORTE
     , NUMPOLIZA                                   AS NUMERO_DOCUMENTO
     , TIPODOCUMENTO                               AS TIPO_DOCUMENTO
     , Periodo                                     AS PERIODO
     , TOMO                                        AS TOMO
     , CIAGENERADORA                               AS COMPAÑIA_PROPIETRIA
     , FECHA                                       AS FECHA_DOCUMENTO
     , ID_CLTE                                     AS NUMERO_PROYECTO
     , NOMBREDELAOBRA                              AS NOMBRE_PROYECTO
     , CONCEPTO                                    AS CONCEPTO_DOCUMENTO
     , IMPORTE                                     AS IMPORTE
     , Paginas                                     AS PAGINAS
     , 'ENTREGA 8'                                 AS ENTREGA
     , REPLACE(Path, '\\SRVKOFAX\SalidaPDF\Peninsular\CortesCaja',
               'D:\Entregas\Entrega 8\CortesCaja') AS RUTA_ARCHIVO
    FROM Peninsular.dbo.Datos_CorteCaja DCC
             INNER JOIN Peninsular.dbo.Documento D ON DCC.DID = D.DID
    WHERE FechaProcesado LIKE '%2024'
    AND TIPODOCUMENTO = 'POLIZA DE INGRESOS'
    --AND TIPODOCUMENTO NOT IN ('POLIZA DE EGRESOS')
    ORDER BY 1
;-- -. . -..- - / . -. - .-. -.--
SELECT DCC.DID                                     AS ID_CARGA
     , NOCAJA                                      AS NUMERO_CAJA
     , NUMCORTE                                    AS NUMERO_CORTE
     , NUMPOLIZA                                   AS NUMERO_DOCUMENTO
     , TIPODOCUMENTO                               AS TIPO_DOCUMENTO
     , Periodo                                     AS PERIODO
     , TOMO                                        AS TOMO
     , CIAGENERADORA                               AS COMPAÑIA_PROPIETRIA
     , FECHA                                       AS FECHA_DOCUMENTO
     , ID_CLTE                                     AS NUMERO_PROYECTO
     , NOMBREDELAOBRA                              AS NOMBRE_PROYECTO
     , CONCEPTO                                    AS CONCEPTO_DOCUMENTO
     , IMPORTE                                     AS IMPORTE
     , Paginas                                     AS PAGINAS
     , 'ENTREGA 8'                                 AS ENTREGA
     , REPLACE(Path, '\\SRVKOFAX\SalidaPDF\Peninsular\CortesCaja',
               'D:\Entregas\Entrega 8\CortesCaja') AS RUTA_ARCHIVO
    FROM Peninsular.dbo.Datos_CorteCaja DCC
             INNER JOIN Peninsular.dbo.Documento D ON DCC.DID = D.DID
    WHERE FechaProcesado LIKE '%2024'
    --AND TIPODOCUMENTO = 'POLIZA DE INGRESOS'
    AND TIPODOCUMENTO NOT IN ('POLIZA DE EGRESOS','POLIZA DE INGRESOS)
    ORDER BY 1

SELECT *
    FROM Peninsular.dbo.Documento
    WHERE DID = 588283
;-- -. . -..- - / . -. - .-. -.--
SELECT DCC.DID                                     AS ID_CARGA
     , NOCAJA                                      AS NUMERO_CAJA
     , NUMCORTE                                    AS NUMERO_CORTE
     , NUMPOLIZA                                   AS NUMERO_DOCUMENTO
     , TIPODOCUMENTO                               AS TIPO_DOCUMENTO
     , Periodo                                     AS PERIODO
     , TOMO                                        AS TOMO
     , CIAGENERADORA                               AS COMPAÑIA_PROPIETRIA
     , FECHA                                       AS FECHA_DOCUMENTO
     , ID_CLTE                                     AS NUMERO_PROYECTO
     , NOMBREDELAOBRA                              AS NOMBRE_PROYECTO
     , CONCEPTO                                    AS CONCEPTO_DOCUMENTO
     , IMPORTE                                     AS IMPORTE
     , Paginas                                     AS PAGINAS
     , 'ENTREGA 8'                                 AS ENTREGA
     , REPLACE(Path, '\\SRVKOFAX\SalidaPDF\Peninsular\CortesCaja',
               'D:\Entregas\Entrega 8\CortesCaja') AS RUTA_ARCHIVO
    FROM Peninsular.dbo.Datos_CorteCaja DCC
             INNER JOIN Peninsular.dbo.Documento D ON DCC.DID = D.DID
    WHERE FechaProcesado LIKE '%2024'
    --AND TIPODOCUMENTO = 'POLIZA DE INGRESOS'
    AND TIPODOCUMENTO NOT IN ('POLIZA DE EGRESOS','POLIZA DE INGRESOS')
    ORDER BY 1
;-- -. . -..- - / . -. - .-. -.--
SELECT DCC.DID                                     AS ID_CARGA
     , NOCAJA                                      AS NUMERO_CAJA
     , NUMCORTE                                    AS NUMERO_CORTE
     , NUMPOLIZA                                   AS NUMERO_DOCUMENTO
     , TIPODOCUMENTO                               AS TIPO_DOCUMENTO
     , Periodo                                     AS PERIODO
     , TOMO                                        AS TOMO
     , CIAGENERADORA                               AS COMPAÑIA_PROPIETRIA
     , FECHA                                       AS FECHA_DOCUMENTO
     , ID_CLTE                                     AS NUMERO_PROYECTO
     , NOMBREDELAOBRA                              AS NOMBRE_PROYECTO
     , CONCEPTO                                    AS CONCEPTO_DOCUMENTO
     , IMPORTE                                     AS IMPORTE
     , Paginas                                     AS PAGINAS
     , 'ENTREGA 8'                                 AS ENTREGA
     , REPLACE(Path, '\\SRVKOFAX\SalidaPDF\Peninsular\CortesCaja',
               'D:\Entregas\Entrega 8\CortesCaja') AS RUTA_ARCHIVO
    FROM Peninsular.dbo.Datos_CorteCaja DCC
             INNER JOIN Peninsular.dbo.Documento D ON DCC.DID = D.DID
    WHERE FechaProcesado LIKE '%2024'
    AND TIPODOCUMENTO = 'POLIZA DE DIARIO'
    --AND TIPODOCUMENTO NOT IN ('POLIZA DE EGRESOS','POLIZA DE INGRESOS')
    ORDER BY 1
;-- -. . -..- - / . -. - .-. -.--
SELECT DCC.DID                                     AS ID_CARGA
     , NOCAJA                                      AS NUMERO_CAJA
     , NUMCORTE                                    AS NUMERO_CORTE
     , NUMPOLIZA                                   AS NUMERO_DOCUMENTO
     , TIPODOCUMENTO                               AS TIPO_DOCUMENTO
     , Periodo                                     AS PERIODO
     , TOMO                                        AS TOMO
     , CIAGENERADORA                               AS COMPAÑIA_PROPIETRIA
     , FECHA                                       AS FECHA_DOCUMENTO
     , ID_CLTE                                     AS NUMERO_PROYECTO
     , NOMBREDELAOBRA                              AS NOMBRE_PROYECTO
     , CONCEPTO                                    AS CONCEPTO_DOCUMENTO
     , IMPORTE                                     AS IMPORTE
     , Paginas                                     AS PAGINAS
     , 'ENTREGA 8'                                 AS ENTREGA
     , REPLACE(Path, '\\SRVKOFAX\SalidaPDF\Peninsular\CortesCaja',
               'D:\Entregas\Entrega 8\CortesCaja') AS RUTA_ARCHIVO
    FROM Peninsular.dbo.Datos_CorteCaja DCC
             INNER JOIN Peninsular.dbo.Documento D ON DCC.DID = D.DID
    WHERE FechaProcesado LIKE '%2024'
    --AND TIPODOCUMENTO = 
    AND TIPODOCUMENTO NOT IN ('POLIZA DE EGRESOS','POLIZA DE INGRESOS','POLIZA DE DIARIO')
    ORDER BY 1
;-- -. . -..- - / . -. - .-. -.--
SELECT DCC.DID                                     AS ID_CARGA
     , NOCAJA                                      AS NUMERO_CAJA
     , NUMCORTE                                    AS NUMERO_CORTE
     , NUMPOLIZA                                   AS NUMERO_DOCUMENTO
     , TIPODOCUMENTO                               AS TIPO_DOCUMENTO
     , Periodo                                     AS PERIODO
     , TOMO                                        AS TOMO
     , CIAGENERADORA                               AS COMPAÑIA_PROPIETRIA
     , FECHA                                       AS FECHA_DOCUMENTO
     , ID_CLTE                                     AS NUMERO_PROYECTO
     , NOMBREDELAOBRA                              AS NOMBRE_PROYECTO
     , CONCEPTO                                    AS CONCEPTO_DOCUMENTO
     , IMPORTE                                     AS IMPORTE
     , Paginas                                     AS PAGINAS
     , 'ENTREGA 8'                                 AS ENTREGA
     , REPLACE(Path, '\\SRVKOFAX\SalidaPDF\Peninsular\CortesCaja',
               'D:\Entregas\Entrega 8\CortesCaja') AS RUTA_ARCHIVO
    FROM Peninsular.dbo.Datos_CorteCaja DCC
             INNER JOIN Peninsular.dbo.Documento D ON DCC.DID = D.DID
    WHERE FechaProcesado LIKE '%2024'