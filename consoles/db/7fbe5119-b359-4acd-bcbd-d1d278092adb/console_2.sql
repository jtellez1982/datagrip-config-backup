SELECT *
    FROM KCSystem.dbo.BatchField
    WHERE BatchID IN (SELECT ExternalBatchID
                          FROM KCSystem.dbo.BatchCatalog
                          WHERE ProcessID = 14999
                            AND State = 128)

SELECT * FROM KCSystem.dbo.BatchCatalog
WHERE ProcessID = 14999

SELECT * FROM Larrabezua.dbo.Salidas
WHERE Migrado IS NULL

UPDATE Larrabezua.dbo.Entradas
SET Migrado = NULL
WHERE Migrado = 0

--91184

SELECT * FROM Larrabezua.dbo.Entradas
SELECT * FROM Larrabezua.dbo.Salidas

SELECT * FROM SICPD.trx.Batches
WHERE BatchName LIKE '%caja130%'

SELECT * FROM SICPD.trx.Batches
         WHERE Id = 2632
