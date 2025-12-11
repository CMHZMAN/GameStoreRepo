BEGIN TRANSACTION 

SELECT * from Games WHERE PK_GameId = 1
UPDATE Games SET Pris = Pris - 500 WHERE PK_GameId = 1; 

--Rollback; 
--Commit; 

UPDATE Games SET Pris = Pris + 30 WHERE PK_GameId = 4;