/* Detta är den första Select satsen med Where */
SELECT * FROM Kund WHERE Ort = 'Stockholm'



/* Order by  */

SELECT * from Games ORDER BY Pris asc

/* Like  */


SELECT * from Games WHERE Genre LIKE 'Action%'

/* Group BY  */
SELECT ProduktTyp,COUNT(1) as AntalSpel 
FROM  Games 
WHERE Genre LIKE 'Action%' 
GROUP BY ProduktTyp Order BY COUNT(1) desc



SELECT K.Namn,K.Ort,B.Datum,G.Namn,G.Pris 
FROM Kund as K
JOIN Basket as B on B.FK_Kund = K.PK_Kund
JOIN BasketDetails as BD on BD.FK_Basket = B.PK_Basket
JOIN Games as G on G.PK_GameId = BD.FK_GameId
WHERE K.Ort = 'Stockholm'




