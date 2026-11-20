DROP TABLE IF EXISTS dbo.t_Simpsons_FamilyCount;
SELECT * INTO dbo.t_Simpsons_FamilyCount FROM dbo.v_Simpsons;
SELECT * FROM dbo.t_Simpsons_FamilyCount;