CREATE OR ALTER VIEW dbo.v_Simpsons AS
SELECT 
  LTRIM(RTRIM(SUBSTRING(Character_Name, CHARINDEX(' ', Character_Name)+1, LEN(Character_Name)))) AS FamilyName,
  COUNT(*) AS CharacterCount
FROM dbo.t_Simpsons
GROUP BY LTRIM(RTRIM(SUBSTRING(Character_Name, CHARINDEX(' ', Character_Name)+1, LEN(Character_Name))));
GO
SELECT * FROM dbo.v_Simpsons;