SELECT REPLACE(Path, '\\SRVKOFAX\SalidaPDF\Peninsular\PolizasContables',
               'K:\SalidaPDF\Peninsular\PolizasContables') AS RUTA_ARCHIVO
    FROM Peninsular.dbo.Datos_PolizasContables A
             INNER JOIN Peninsular.dbo.Documento B ON A.DID = B.DID
    WHERE FechaProcesado IN ('22/10/2024', '29/10/2024', '05/11/2024')

UPDATE Peninsular.dbo.Datos_PolizasContables
SET IMPORTE = REPLACE(IMPORTE, ',', '.')

UPDATE Peninsular.dbo.Datos_PolizasContables
SET Migrado = 1
    WHERE FechaProcesado IN ('22/10/2024', '29/10/2024', '05/11/2024')

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

SELECT *
    FROM Peninsular.dbo.Datos_PolizasContables
    WHERE DID IN (
                  792725,
                  779219,
                  781814,
                  780781,
                  763847
        )

SELECT A.DID         AS ID_CARGA
     , NOCAJA        AS NUMERO_DE_CAJA
     , CAJA
     , LEGAJO
     , NUMPOLIZA     AS NUMERO_DE_DOCUMENTO
     , TIPODOCUMENTO AS TIPO_DE_DOCUMENTO
     , FECHA         AS FECHA_DEL_DOCUMENTO
     , TOMO
     , CIAGENERADORA AS COMPANIA_PROP_DEL_DOCTO
     , OFICINAS_OBRA AS ORIGEN_DEL_DOCUMENTO
     , CONCEPTO      AS CONCEPTO_DEL_DOCTO_REF
     , VIGENCIA
     , ID_CLTE
     , IMPORTE
     , Paginas
    FROM Peninsular.dbo.Datos_PolizasContables A
             INNER JOIN Peninsular.dbo.Documento B ON A.DID = B.DID
    WHERE FechaProcesado LIKE '%2024'

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

SELECT *
    FROM Peninsular.dbo.Documento
    WHERE DID = 588283