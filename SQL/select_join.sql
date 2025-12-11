-- Join query för kunder från Stockholm och vilka spel de har köpt 
SELECT K.Namn,K.Ort,B.Datum,G.Namn,G.Pris 
FROM Kund as K
JOIN Basket as B on B.FK_Kund = K.PK_Kund
JOIN BasketDetails as BD on BD.FK_Basket = B.PK_Basket
JOIN Games as G on G.PK_GameId = BD.FK_GameId
WHERE K.Ort = 'Stockholm'

-- Join query för spel med utgivare och studios
SELECT G.Namn as SpelNamn, U.Namn as Utgivare, GD.Namn as Studio from Games as G
JOIN Utgivare as U on U.PK_Utg = G.FK_Utg
JOIN GameDev as GD on GD.PK_Dev = G.FK_Dev




