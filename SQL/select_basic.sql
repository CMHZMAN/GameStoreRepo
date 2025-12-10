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