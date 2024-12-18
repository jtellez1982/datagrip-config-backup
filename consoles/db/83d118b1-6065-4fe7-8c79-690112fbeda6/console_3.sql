SELECT UniqueID
    FROM KCSystem.dbo.BatchDocument
    WHERE BatchID IN (SELECT ExternalBatchID
                          FROM KCSystem.dbo.BatchCatalog
                          WHERE ProcessID = 14999
                            AND State = 128
                            AND ClassName LIKE '%PENINSULAR%')