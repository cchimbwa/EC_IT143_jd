-- EC_IT143_W4.2_MyFC_s5_cm.sql
-- Q: Which players have jersey number > 50?
SELECT TOP 10 pl_name, pl_num, t_id
FROM dbo.tblPlayerDim
WHERE pl_num > 50
ORDER BY pl_num DESC;
-- EC_IT143_W4.2_MyFC_s6_cm.sql
-- Q: How many players per team?
SELECT t_id, COUNT(*) as PlayerCount
FROM dbo.tblPlayerDim
GROUP BY t_id
ORDER BY PlayerCount DESC;
-- EC_IT143_W4.2_MyFC_s7_cm.sql
-- Q: Show all player details with facts count
SELECT TOP 20 p.pl_name, p.t_id, p.p_id, COUNT(f.pl_id) as FactRecords
FROM dbo.tblPlayerDim p
LEFT JOIN dbo.tblPlayerFact f ON p.pl_id = f.pl_id
GROUP BY p.pl_name, p.t_id, p.p_id;
-- EC_IT143_W4.2_MyFC_s8_cm.sql
-- Q: List all tables in MyFC
SELECT TABLE_NAME 
FROM INFORMATION_SCHEMA.TABLES 
WHERE TABLE_TYPE = 'BASE TABLE';