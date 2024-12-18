SELECT * FROM Catastro.dbo.Documentos
WHERE DID IN (
              1207,
              1269,
              2562,
              2563,
              2564,
              2565,
              2566,
              2567,
              2568,
              2569,
              2570,
              2571,
              2572,
              2573,
              2574,
              2575,
              2576,
              2577,
              2578,
              2579,
              2580,
              2581,
              2582,
              2583,
              2584,
              2585,
              2586,
              2587,
              2588,
              3020
    )

UPDATE Catastro.dbo.Documentos
SET Path = REPLACE(Path,'  ',' ')
    WHERE DID IN (
                  1207,
                  1269,
                  2562,
                  2563,
                  2564,
                  2565,
                  2566,
                  2567,
                  2568,
                  2569,
                  2570,
                  2571,
                  2572,
                  2573,
                  2574,
                  2575,
                  2576,
                  2577,
                  2578,
                  2579,
                  2580,
                  2581,
                  2582,
                  2583,
                  2584,
                  2585,
                  2586,
                  2587,
                  2588,
                  3020
        )

UPDATE Catastro.dbo.Datos
SET migrado = NULL
WHERE DID IN (
    1207,1269
    )