SELECT *
    FROM Catastro.dbo.Datos
    WHERE DID IN (
                  472,
                  522,
                  527,
                  548,
                  601,
                  602,
                  603,
                  604,
                  605,
                  606,
                  607,
                  608,
                  644,
                  656,
                  657,
                  834,
                  835,
                  836,
                  903,
                  904,
                  916,
                  954
        )

SELECT *
    FROM Catastro.dbo.Documentos
    WHERE DID IN (
                  472,
                  522,
                  527,
                  548,
                  601,
                  602,
                  603,
                  604,
                  605,
                  606,
                  607,
                  608,
                  644,
                  656,
                  657,
                  834,
                  835,
                  836,
                  903,
                  904,
                  916,
                  954
        )

SELECT Path, GID, migrado, A.DID
    FROM Catastro.dbo.Datos A
             INNER JOIN Catastro.dbo.Documentos B ON A.DID = B.DID
    WHERE A.DID IN (
                    472,
                    522,
                    527,
                    548,
                    601,
                    602,
                    603,
                    604,
                    605,
                    606,
                    607,
                    608,
                    644,
                    656,
                    657,
                    834,
                    835,
                    836,
                    903,
                    904,
                    916,
                    954
        )

SELECT * FROM Catastro.dbo.Datos
WHERE GID = '01D0000SDU'