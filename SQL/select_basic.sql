/* Detta är den första Select satsen med Where */
SELECT * FROM Kund WHERE Ort = 'Stockholm'

SELECT Namn,Adress FROM Kund WHERE Ort = 'Uppsala'

/*
LINQ version: 

var result = db.Kund
    .Where(k => k.Ort.Trim() == "Uppsala")
    .Select(k => new
    {
        k.Namn,
        k.Adress
    });


*/

/* Order by  */

SELECT * from Games ORDER BY Pris asc

/*        
LINQ version: 

var result = Games 
	.OrderBy(x => x.Pris)
	.ToList();
*/

/* Like  */

SELECT * from Games WHERE Genre LIKE 'Open World'

SELECT * from Games WHERE Genre LIKE 'Action%'


/* Group BY  */
SELECT ProduktTyp,COUNT(1) as AntalSpel 
FROM  Games 
WHERE Genre LIKE 'Action%' 
GROUP BY ProduktTyp Order BY COUNT(1) desc

/*  LINQ version: 

var result = db.Games
    .Where(g => g.Genre.StartsWith("Action"))
    .GroupBy(g => g.ProduktTyp)
    .OrderByDescending(grp => grp.Count())
    .Select(grp => new
    {
        ProduktTyp = grp.Key,
        AntalSpel = grp.Count()
    });
*/