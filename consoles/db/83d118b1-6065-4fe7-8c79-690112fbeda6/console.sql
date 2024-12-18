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

SELECT migrado, COUNT(*) AS DOCUMENTOS, SUM(Paginas) AS PAGINAS
    FROM UNAM_Bibliotecas.dbo.DatosFolletosPDF
    GROUP BY migrado

UPDATE UNAM_Bibliotecas.dbo.DatosFolletosPDF
SET migrado = 1
    WHERE DID IN (
                  812733,
                  801827,
                  812723,
                  812730,
                  812736
        )
