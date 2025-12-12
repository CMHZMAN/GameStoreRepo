USE [GamesDB]
GO

-- 1. Utgivare (Publishers)
INSERT INTO [dbo].[Utgivare] (PK_Utg, Namn, Stad, Email) VALUES
(1, 'Electronic Arts', 'Redwood City', 'contact@ea.com'),
(2, 'Ubisoft', 'Paris', 'support@ubisoft.com'),
(3, 'Activision Blizzard', 'Santa Monica', 'info@blizzard.com'),
(4, 'CD Projekt RED', 'Warsaw', 'contact@cdprojektred.com'),
(5, 'Square Enix', 'Tokyo', 'support@square-enix.com'),
(6, 'Bethesda Softworks', 'Rockville', 'support@bethsoft.com'),
(7, 'Valve Corporation', 'Bellevue', 'info@valvesoftware.com'),
(8, 'Nintendo', 'Kyoto', 'no-reply@nintendo.com');

-- 2. GameDev (Developers)
INSERT INTO [dbo].[GameDev] (PK_Dev, Namn, Stad, Telefon, Email) VALUES
(1, 'DICE', 'Stockholm', '08-5551234', 'dice@ea.com'),
(2, 'Ubisoft Montreal', 'Montreal', '514-5555678', 'montreal@ubi.com'),
(3, 'CD Projekt RED', 'Warsaw', '22-5559012', 'studio@cdpr.com'),
(4, 'FromSoftware', 'Tokyo', '03-5553456', 'info@fromsoftware.jp'),
(5, 'Rockstar North', 'Edinburgh', '0131-5557890', 'north@rockstar.com'),
(6, 'Naughty Dog', 'Santa Monica', '310-5551122', 'contact@naughtydog.com'),
(7, 'Valve', 'Bellevue', '425-5553344', 'dev@valvesoftware.com'),
(8, 'Mojang Studios', 'Stockholm', '08-5559988', 'support@mojang.com');

-- 3. Kund (Customers)
INSERT INTO [dbo].[Kund] (PK_Kund, Namn, Adress, Postnummer, Ort, Mobil) VALUES
(1, 'Anna Andersson', 'Storgatan 1', '111 22', 'Stockholm', '070-1112233'),
(2, 'Erik Bergman', 'Lilla gatan 5', '222 33', 'Göteborg', '073-4455667'),
(3, 'Lisa Karlsson', 'Skolgatan 12', '753 21', 'Uppsala', '070-8899001'),
(4, 'Johan Nilsson', 'Parkvägen 8', '413 04', 'Göteborg', '076-2233445'),
(5, 'Maria Olsson', 'Kungsgatan 33', '111 43', 'Stockholm', '072-5566778'),
(6, 'Peter Svensson', 'Drottninggatan 7', '211 49', 'Malmö', '070-9900112'),
(7, 'Sofia Lind', 'Vasagatan 22', '411 37', 'Göteborg', '073-1122334'),
(8, 'Oskar Hansen', 'Birger Jarlsg 5', '114 34', 'Stockholm', '076-5566778');

-- 4. Games
INSERT INTO [dbo].[Games] (PK_GameId, FK_Dev, FK_Utg, Namn, Genre, Pris, Lagersaldo, ProduktTyp, Beskriving) VALUES
(1, 1, 1, 'Battlefield 2042', 'FPS', 599.00, 120, 'PC', 'Next-gen multiplayer shooter'),
(2, 2, 2, 'Assassin''s Creed Valhalla', 'Action-RPG', 499.00, 85, 'PS5', 'Viking epic adventure'),
(3, 3, 4, 'Cyberpunk 2077', 'RPG', 399.00, 200, 'PC', 'Open-world dystopian RPG'),
(4, 4, 5, 'Elden Ring', 'Action-RPG', 649.00, 150, 'PS5', 'FromSoftware''s masterpiece'),
(5, 5, 1, 'GTA V', 'Open World', 299.00, 300, 'PC', 'Still the king of open-world games'),
(6, 6, 6, 'The Last of Us Part II', 'Action-Adventure', 549.00, 90, 'PS5', 'Emotional post-apocalyptic story'),
(7, 7, 7, 'Half-Life: Alyx', 'VR Shooter', 499.00, 60, 'PC VR', 'Best VR game ever made'),
(8, 8, 1, 'Minecraft', 'Sandbox', 249.00, 1000, 'PC', 'The game that never dies'),
(9, 1, 1, 'Apex Legends', 'Battle Royale', 0.00, 9999, 'PC', 'Free-to-play battle royale'),
(10, 3, 4, 'The Witcher 3', 'RPG', 299.00, 180, 'PC', 'One of the greatest RPGs of all time');

-- Add a few more games so we have 25 in total (you can expand this list easily)
INSERT INTO [dbo].[Games] (PK_GameId, FK_Dev, FK_Utg, Namn, Genre, Pris, Lagersaldo, ProduktTyp, Beskriving) VALUES
(11, 2, 2, 'Far Cry 6', 'FPS', 499.00, 70, 'Xbox', 'Revolution in tropical Yara'),
(12, 4, 5, 'Sekiro: Shadows Die Twice', 'Action', 549.00, 95, 'PC', 'Extremely challenging samurai game'),
(13, 5, 1, 'Red Dead Redemption 2', 'Open World', 499.00, 140, 'PS5', 'Masterpiece western adventure'),
(14, 6, 6, 'Uncharted 4', 'Action-Adventure', 349.00, 110, 'PS4', 'Nathan Drake''s final chapter'),
(15, 7, 7, 'Counter-Strike 2', 'FPS', 0.00, null, 'PC', 'The classic tactical shooter reborn');


-- 5. Basket (one basket per customer for demo purposes)
INSERT INTO [dbo].[Basket] (PK_Basket, FK_Kund, Datum) VALUES
(1, 1, '2025-11-15 14:22:00'),
(2, 2, '2025-11-20 09:11:00'),
(3, 3, '2025-12-01 18:45:00'),
(4, 5, '2025-12-08 11:30:00'),
(5, 8, '2025-12-09 20:15:00');

-- 6. BasketDetails (some items in the baskets)
INSERT INTO [dbo].[BasketDetails] (PK_BasketDt, FK_Basket, FK_GameId) VALUES
(1, 1, 4),   -- Anna köper Elden Ring
(2, 1, 3),   -- och Cyberpunk 2077
(3, 2, 13),  -- Erik köper Red Dead Redemption 2
(4, 2, 5),   -- och GTA V
(5, 3, 10),  -- Lisa köper The Witcher 3
(6, 3, 8),   -- och Minecraft till sitt barn
(7, 4, 1),   -- Maria köper Battlefield 2042
(8, 5, 7);   -- Oskar köper Half-Life: Alyx