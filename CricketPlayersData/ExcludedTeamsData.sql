IF OBJECT_ID('tempdb..#excludedTeams') IS NOT NULL
  DROP TABLE #excludedTeams

CREATE TABLE #excludedTeams
(
  [Id]            INT             IDENTITY(1, 1) NOT NULL,  
  [TeamName]	  NVARCHAR(MAX)   NOT NULL,
  [IsActive]      BIT             DEFAULT((1)) NOT NULL,
);

INSERT INTO #excludedTeams	([TeamName], [IsActive])
--SELECT 'Nottinghamshire' AS [TeamName], 1 AS IsActive UNION ALL
--SELECT 'Worcestershire' AS [TeamName], 1 AS IsActive UNION ALL
--SELECT 'Glamorgan' AS [TeamName], 1 AS IsActive UNION ALL
--SELECT 'Somerset' AS [TeamName], 1 AS IsActive UNION ALL
--SELECT 'Durham' AS [TeamName], 1 AS IsActive UNION ALL
--SELECT 'Northamptonshire' AS [TeamName], 1 AS IsActive UNION ALL
--SELECT 'Essex' AS [TeamName], 1 AS IsActive UNION ALL
--SELECT 'Surrey' AS [TeamName], 1 AS IsActive UNION ALL
--SELECT 'Gloucestershire' AS [TeamName], 1 AS IsActive UNION ALL
--SELECT 'Kent' AS [TeamName], 1 AS IsActive UNION ALL
--SELECT 'Derbyshire' AS [TeamName], 1 AS IsActive UNION ALL
--SELECT 'Yorkshire' AS [TeamName], 1 AS IsActive UNION ALL
--SELECT 'Lancashire' AS [TeamName], 1 AS IsActive UNION ALL
--SELECT 'Birmingham Bears' AS [TeamName], 1 AS IsActive UNION ALL
--SELECT 'Leicestershire' AS [TeamName], 1 AS IsActive UNION ALL
--SELECT 'Hampshire' AS [TeamName], 1 AS IsActive UNION ALL
--SELECT 'Middlesex' AS [TeamName], 1 AS IsActive UNION ALL
--SELECT 'Sussex' AS [TeamName], 1 AS IsActive UNION ALL
--SELECT 'Warwickshire' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'Scotland' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'Afghanistan' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'Hong Kong' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'Zimbabwe' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'Papua New Guinea' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'United Arab Emirates' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'Nepal' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'United States of America' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'Namibia' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'Oman' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'Netherlands' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'Bermuda' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'Canada' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'Kenya' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'Africa XI' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'Asia XI' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'Philippines' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'Vanuatu' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'Germany' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'Italy' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'Ghana' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'Uganda' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'Botswana' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'Nigeria' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'Guernsey' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'Denmark' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'Norway' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'Jersey' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'Malaysia' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'Thailand' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'Maldives' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'Singapore' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'Qatar' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'Kuwait' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'Cayman Islands' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'Spain' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'Portugal' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'Gibraltar' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'Bhutan' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'Saudi Arabia' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'Bahrain' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'Iran' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'Ireland' AS [TeamName], 1 AS IsActive UNION ALL
SELECT 'Zimbabwe' AS [TeamName], 1 AS IsActive

Go

BEGIN TRY

  BEGIN TRANSACTION

      MERGE  dbo.ExcludedTeams AS TARGET
          USING #excludedTeams AS SOURCE
          ON(TARGET.[TeamName] = SOURCE.[TeamName])
              WHEN MATCHED AND TARGET.IsActive <> SOURCE.IsActive
              THEN
                  UPDATE
                  SET TARGET.IsActive = SOURCE.IsActive
              WHEN NOT MATCHED BY TARGET
              THEN
                  INSERT([TeamName]
                        , IsActive)
                  VALUES(SOURCE.[TeamName]
                        , SOURCE.IsActive);

  COMMIT TRANSACTION
PRINT 'MERGE dbo.ExcludedTeams - Done'
END TRY
BEGIN CATCH
      ROLLBACK TRANSACTION;
      THROW
END CATCH
