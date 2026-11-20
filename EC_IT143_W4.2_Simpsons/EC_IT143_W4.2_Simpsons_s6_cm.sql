-- EC_IT143_W4.2_Simpsons_s6_cm.sql
SELECT Department, COUNT(*) as FamilyCount
FROM dbo.Family_Data
GROUP BY Department;