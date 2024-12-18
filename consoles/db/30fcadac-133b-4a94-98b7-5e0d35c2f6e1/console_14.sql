DECLARE @caja VARCHAR(50) = 'CAJA 12'

SELECT TipoContrato
     , Contraparte
     , Empresa
     , DID
     , CentroCostos
     , Sucursal
     , Consecutivo
    FROM NADRO.dbo.Datos_Arrendamiento
    WHERE DID IN (SELECT did
                      FROM CaratulasNadro.nadro.DatosInicialesCaratula
                      WHERE CAJA = @caja)
UNION
SELECT TipoContrato
     , NombreContraparte
     , Empresa
     , DID
     , ''
     , ''
     , Consecutivo
    FROM NADRO.dbo.Datos_Contratos
    WHERE DID IN (SELECT did
                      FROM CaratulasNadro.nadro.DatosInicialesCaratula
                      WHERE CAJA = @caja)