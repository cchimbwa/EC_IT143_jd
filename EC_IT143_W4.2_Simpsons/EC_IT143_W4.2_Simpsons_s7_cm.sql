-- EC_IT143_W4.2_Simpsons_s7_cm.sql
SELECT Department, Status, COUNT(*) as CountByStatus
FROM dbo.Family_Data
GROUP BY Department, Status
ORDER BY Department;