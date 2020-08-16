IF OBJECT_ID('tempdb..#playerAliases') IS NOT NULL
  DROP TABLE #playerAliases

CREATE TABLE #playerAliases
(
  [Id]            INT             IDENTITY(1, 1) NOT NULL,  
  [CricInfoId]    INT             NOT NULL,
  [IsActive]      BIT             DEFAULT((1)),
  [CricsheetName] NVARCHAR(MAX)   NOT NULL,
);

INSERT INTO #playerAliases	([CricInfoId], [IsActive], [CricsheetName])
SELECT 6513 AS CricInfoId, 1 AS IsActive, 'Martyn' AS CricsheetName UNION ALL
SELECT 209457 AS CricInfoId, 1 AS IsActive, 'Kapugedera' AS CricsheetName UNION ALL
SELECT 36185 AS CricInfoId, 1 AS IsActive, 'Astle' AS CricsheetName UNION ALL
SELECT 681117 AS CricInfoId, 1 AS IsActive, 'Fahim Ashraf' AS CricsheetName UNION ALL
SELECT 707183 AS CricInfoId, 1 AS IsActive, 'P Young-Husband' AS CricsheetName UNION ALL
SELECT 49920 AS CricInfoId, 1 AS IsActive, 'MDK Perera' AS CricsheetName
Go

BEGIN TRY

  BEGIN TRANSACTION

      MERGE  dbo.PlayerAliasMapping AS TARGET
          USING #playerAliases AS SOURCE
          ON(TARGET.CricInfoId = SOURCE.CricInfoId)
              WHEN MATCHED AND TARGET.IsActive <> SOURCE.IsActive
              THEN
                  UPDATE
                  SET TARGET.IsActive = SOURCE.IsActive
              WHEN NOT MATCHED BY TARGET
              THEN
                  INSERT(CricInfoId
                        , IsActive
                        , CricsheetName)
                  VALUES(SOURCE.CricInfoId
                        , SOURCE.IsActive
                        , SOURCE.CricsheetName);

  COMMIT TRANSACTION
PRINT 'MERGE dbo.PlayerAliasMapping - Done'
END TRY
BEGIN CATCH
      ROLLBACK TRANSACTION;
      THROW
END CATCH
