-- Kontrollerar vilka kunder som har köpt spel 

SELECT * 
FROM Kund as K  
Left Join Basket as B on K.PK_Kund = B.FK_Kund

-- Tar bort kunder som inte har köpt spel 
DELETE FROM Kund 
WHERE Kund.PK_Kund in (
SELECT PK_Kund 
FROM Kund as K  
Left Join Basket as B on K.PK_Kund = B.FK_Kund
WHERE PK_Basket is NULL
)