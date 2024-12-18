SELECT *
    FROM KCSystem.dbo.BatchField
    WHERE IndexFieldID IN (348, 352, 356, 360, 366)

SELECT *
    FROM KCSystem.dbo.BatchField
    WHERE BatchID = 1372
      AND DocID = 26


SELECT BD.Name, IndexFieldID, FieldDefID, I.Name
    FROM KCSystem.dbo.IndexField I
             INNER JOIN KCSystem.dbo.BatchDefID BD ON I.PublishedBatchDefID = BD.PublishedBatchDefID

SELECT GuiaMaster, GuiaHouse, NumeroPaleta, GID
    FROM Larrabezua.dbo.Entradas
UNION
SELECT GuiaMaster, GuiaHouse, NumeroFact, GID
    FROM Larrabezua.dbo.Salidas
UNION
SELECT GuiaMaster, GuiaHouse, NumeroFact, GID
    FROM Larrabezua.dbo.Previos
    WHERE GuiaMaster IN (
                         '17284984255',
                         '5751267764',
                         '7463668301',
                         '86512299372',
                         '5709652646',
                         '17282633062',
                         '86512299372',
                         '86512299372',
                         '1422757873',
                         '1401262833',
                         '1401262833',
                         '1401262833',
                         '1401262833',
                         '78406589192',
                         '78406589133',
                         '78406589111',
                         '2053609754',
                         '1432732431',
                         '1431173273',
                         '35552086683',
                         '36989478653',
                         '2023625011',
                         '2054355313',
                         '86514020263',
                         '86514020263',
                         '86514020263',
                         '86514020263',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81040940690',
                         '81041517442',
                         '81041861260',
                         '99227442144',
                         '15736789734',
                         '15736789863',
                         '15736789815',
                         '15736789804',
                         '15736789826',
                         '15736789885',
                         '15736789830',
                         '17284522023',
                         '36989478664',
                         '17284984255',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '87320023172',
                         '17680266222',
                         '2099308296',
                         '1473854745',
                         '15737406515',
                         '15737406412',
                         '2099368205',
                         '2099368931',
                         '2002477985',
                         '1445850490',
                         '16052430954',
                         '16052430954',
                         '2023724094',
                         '2023723604',
                         '99200057304',
                         '99200057304',
                         '2032028290',
                         '23589988253',
                         '86514280766',
                         '1431173284',
                         '48960098301',
                         '72947659500',
                         '48960098010',
                         '72947659496',
                         '48960081884',
                         '48960097634',
                         '48960097726',
                         '48960098006',
                         '48960098010',
                         '48960098006',
                         '48960098010',
                         '48960097726',
                         '86514116373'
        )

SELECT 'Salidas'    AS TIPO
     , Migrado
     , COUNT(*)     AS DOCUMENTOS
     , SUM(Paginas) AS PAGINAS
    FROM Larrabezua.dbo.Salidas
    GROUP BY Migrado
UNION
SELECT 'Entradas'   AS TIPO
     , Migrado
     , COUNT(*)     AS DOCUMENTOS
     , SUM(Paginas) AS PAGINAS
    FROM Larrabezua.dbo.Entradas
    GROUP BY Migrado
UNION
SELECT 'Transito'   AS TIPO
     , Migrado
     , COUNT(*)     AS DOCUMENTOS
     , SUM(Paginas) AS PAGINAS
    FROM Larrabezua.dbo.Transito
    GROUP BY Migrado
UNION
SELECT 'Otros'      AS TIPO
     , Migrado
     , COUNT(*)     AS DOCUMENTOS
     , SUM(Paginas) AS PAGINAS
    FROM Larrabezua.dbo.Otros
    GROUP BY Migrado
UNION
SELECT 'Previos'    AS TIPO
     , Migrado
     , COUNT(*)     AS DOCUMENTOS
     , SUM(Paginas) AS PAGINAS
    FROM Larrabezua.dbo.Previos
    GROUP BY Migrado

SELECT * FROM Larrabezua.dbo.Entradas
WHERE NumeroPaleta = '11301'

SELECT * FROM Larrabezua.dbo.Salidas
WHERE Migrado = 0