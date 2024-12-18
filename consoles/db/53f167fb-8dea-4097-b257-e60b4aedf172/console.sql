SELECT FechaProcesado
     , Migrado
     , COUNT(*)         AS DOCUMENTOS
     --, SUM(Paginas) AS PAGINAS
     , SUM(PaginasDdoc) AS PAGINASddoc
    FROM CATASTRO_TULUM02.dbo.Datos D
             INNER JOIN CATASTRO_TULUM02.dbo.Documentos D2 ON D.DID = D2.DID
    GROUP BY FechaProcesado, Migrado
    ORDER BY CONVERT(DATE, FechaProcesado, 103)

SELECT Migrado
     , COUNT(*)         AS DOCUMENTOS
     , SUM(PaginasDdoc) AS PAGINASDDOC
    FROM CATASTRO_TULUM02.dbo.Datos D
             INNER JOIN CATASTRO_TULUM02.dbo.Documentos D2 ON D.DID = D2.DID
    GROUP BY Migrado

SELECT ID
     , ClaveCatastral
     , Folionumero
     , Categoria
     , UbicacionPredio
     , NombrePropietario
     , Padron
     , Localidad
     , Region
     , Supermanzana
     , Manzana
     , Lote
     , Condominio
     , DID
     , GID
     , PaginasDdoc
     , Migrado
     , NombreLote
     , FechaProcesado
    FROM CATASTRO_TULUM02.dbo.Datos
    WHERE CONVERT(DATE, FechaProcesado, 103) > '2024-12-06'