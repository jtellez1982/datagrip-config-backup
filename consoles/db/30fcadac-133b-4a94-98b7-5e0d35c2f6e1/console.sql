SELECT NumExpediente
     , Empresa
     , TipoContrato
     , NombreContraparte
     , FechaCelebracion
     , DC.DID
     , GID
     , NomenClatura
     , Consecutivo
     , PATH
    FROM NADRO.dbo.Datos_Contratos DC
             INNER JOIN NADRO.dbo.Documentos D ON DC.DID = D.DID
    WHERE Empresa LIKE 'DRUGSTORE%'
       OR Empresa LIKE '%CENTRO DE DISTRIBUCIÓN%'
       OR Empresa LIKE '%FARMACIAS BAYARDO%'
       OR Empresa LIKE '%FARMACIAS BELLA VISTA%'
       OR Empresa LIKE '%FARMACIAS BELLAVISTA%'
       OR Empresa LIKE '%PROFOM%'
       OR Empresa LIKE '%SERVICIOS%'
       OR Empresa LIKE '%TENEDORA%'
       OR Empresa LIKE '%CONTROLADORA%'
       OR Empresa LIKE '%OPERADORA%'

SELECT NoExpediente
     , Empresa
     , TipoContrato
     , Contraparte
     , FechaCelebracion
     , DC.DID
     , GID
     , NomenClatura
     , Consecutivo
     , PATH
    FROM NADRO.dbo.Datos_Arrendamiento DC
             INNER JOIN NADRO.dbo.Documentos D ON DC.DID = D.DID
    WHERE Empresa LIKE 'DRUGSTORE%'
       OR Empresa LIKE '%CENTRO DE DISTRIBUCIÓN%'
       OR Empresa LIKE '%FARMACIAS BAYARDO%'
       OR Empresa LIKE '%FARMACIAS BELLA VISTA%'
       OR Empresa LIKE '%FARMACIAS BELLAVISTA%'
       OR Empresa LIKE '%PROFOM%'
       OR Empresa LIKE '%SERVICIOS%'
       OR Empresa LIKE '%TENEDORA%'
       OR Empresa LIKE '%CONTROLADORA%'
       OR Empresa LIKE '%OPERADORA%'

SELECT *
    FROM NADRO.dbo.Datos_Contratos DC
    WHERE Empresa LIKE '%OPERADORA%'

SELECT *
    FROM NADRO.dbo.Datos_Arrendamiento DC
    WHERE Empresa LIKE '%OPERADORA%'