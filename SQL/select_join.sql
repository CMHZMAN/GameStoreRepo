SELECT K.Namn,K.Ort,B.Datum,G.Namn,G.Pris 
FROM Kund as K
JOIN Basket as B on B.FK_Kund = K.PK_Kund
JOIN BasketDetails as BD on BD.FK_Basket = B.PK_Basket
JOIN Games as G on G.PK_GameId = BD.FK_GameId
WHERE K.Ort = 'Stockholm'
