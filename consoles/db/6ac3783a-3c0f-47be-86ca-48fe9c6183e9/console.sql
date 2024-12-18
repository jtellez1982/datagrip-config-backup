SELECT * FROM BDUnilever.dbo.Datos D
INNER JOIN BDUnilever.dbo.Documentos DD ON D.DID = DD.DID
WHERE Migrado = 0

UPDATE BDUnilever.dbo.Datos
SET Migrado = NULL
WHERE Migrado = 0 AND Fecha_Procesado = '30/10/2024'

SELECT * FROM BDUnilever.dbo.Datos D
                  INNER JOIN BDUnilever.dbo.Documentos DD ON D.DID = DD.DID
         WHERE Fecha_Procesado = '30/10/2024'

SELECT * FROM SICPD.trx.BATCHES
WHERE BATCHNAME = 'W-685-2024 3061'

SELECT * FROM BDUnilever.dbo.Datos
WHERE Etiqueta = 'C2326193'

SELECT * FROM SICPD.trx.BATCHDATA
WHERE BATCHID = '6468'