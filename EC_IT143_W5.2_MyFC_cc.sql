-- ============================================================
-- Author: Cecilia Chimbwa
-- Course: IT143 - W5.2 Create Answers
-- Community: MyFC
-- Date: 2026-11-28
-- ============================================================

USE MyFC;
GO

-- Q1: What is the total monthly salary by team?
-- Author: Cecilia Chimbwa (Self)
SELECT 
    t.t_code AS Team,
    COUNT(p.pl_id) AS NumPlayers,
    SUM(f.mtd_salary) AS TotalSalary
FROM dbo.tblPlayerDim p
JOIN dbo.tblTeamDim t ON p.t_id = t.t_id
JOIN dbo.tblPlayerFact f ON p.pl_id = f.pl_id
GROUP BY t.t_code
ORDER BY TotalSalary DESC;
GO

-- Q2: Who are the top 10 highest paid players?
-- Author: Other Student - From 4.3 Collaboration Corner
SELECT TOP 10
    p.pl_name AS PlayerName,
    t.t_code AS TeamCode,
    f.mtd_salary AS MonthlySalary
FROM dbo.tblPlayerDim p
JOIN dbo.tblTeamDim t ON p.t_id = t.t_id
JOIN dbo.tblPlayerFact f ON p.pl_id = f.pl_id
ORDER BY f.mtd_salary DESC;
GO

-- Q3: What is the average salary by position?
-- Author: Cecilia Chimbwa (Self)
SELECT 
    pos.p_id AS PositionID,
    AVG(f.mtd_salary) AS AvgSalary,
    COUNT(p.pl_id) AS PlayerCount
FROM dbo.tblPlayerDim p
JOIN dbo.tblPositionDim pos ON p.p_id = pos.p_id
JOIN dbo.tblPlayerFact f ON p.pl_id = f.pl_id
GROUP BY pos.p_id
ORDER BY AvgSalary DESC;
GO

-- Q4: How many players on each team per position?
-- Author: Cecilia Chimbwa (Self)
SELECT 
    t.t_code AS Team,
    pos.p_id AS PositionID,
    COUNT(p.pl_id) AS TotalPlayers
FROM dbo.tblPlayerDim p
JOIN dbo.tblTeamDim t ON p.t_id = t.t_id
JOIN dbo.tblPositionDim pos ON p.p_id = pos.p_id
GROUP BY t.t_code, pos.p_id
ORDER BY t.t_code;
GO