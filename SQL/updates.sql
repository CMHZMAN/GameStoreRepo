/*----- UPDATES -----*/
-- Kontrollera att det blir rätt rad som uppdateras (Körs först)
SELECT * from Games WHERE PK_GameId = 1

-- Uppdatera data
BEGIN TRANSACTION 

UPDATE Games SET Pris = Pris - 500 WHERE PK_GameId = 1; 

--Här kan man välja. Om uppdateringen gick bra så köra man commit annars så kör man rollback

--Rollback; 
--Commit; 


-- Uppdatera priset med 30kr
UPDATE Games SET Pris = Pris + 30 WHERE PK_GameId = 4;