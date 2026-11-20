DROP TABLE IF EXISTS dbo.t_Simpsons_FamilyCount;
CREATE TABLE dbo.t_Simpsons_FamilyCount (
  FamilyName NVARCHAR(100) NOT NULL PRIMARY KEY,
  CharacterCount INT NOT NULL DEFAULT 0
);
INSERT INTO dbo.t_Simpsons_FamilyCount (FamilyName, CharacterCount)
SELECT FamilyName, CharacterCount FROM dbo.v_Simpsons;
SELECT * FROM dbo.t_Simpsons_FamilyCount;