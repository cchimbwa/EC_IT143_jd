-- ============================================================
-- Author: Cecilia Chimbwa
-- Course: IT143 - W5.2 Create Answers
-- Community: Simpsons / IT143_DA
-- Date: 2026-11-28
-- ============================================================

USE Simpsons;
GO

-- Q1: What is the total number of employees by Department?
-- Author: Cecilia Chimbwa (Self)
SELECT 
    Department AS Department,
    COUNT(Member_ID) AS NumEmployees
FROM dbo.Family_Data
GROUP BY Department
ORDER BY NumEmployees DESC;
GO

-- Q2: Who are the top 10 highest spending card members?
-- Author: Other Student - From 4.3 Collaboration Corner
SELECT TOP 10
    Card_Member AS CardMember,
    SUM(CAST(Amount AS FLOAT)) AS TotalSpent
FROM dbo.Planet_Express
GROUP BY Card_Member
ORDER BY TotalSpent DESC;
GO

-- Q3: What is the average spend by Category?
-- Author: Cecilia Chimbwa (Self)
SELECT 
    Category AS Category,
    AVG(CAST(Amount AS FLOAT)) AS AvgAmount,
    COUNT(*) AS TransactionCount
FROM dbo.Planet_Express
GROUP BY Category
ORDER BY AvgAmount DESC;
GO

-- Q4: How many family members per Department by Status?
-- Author: Cecilia Chimbwa (Self)
SELECT 
    Department AS Department,
    Status AS WorkStatus,
    COUNT(Member_ID) AS TotalMembers
FROM dbo.Family_Data
GROUP BY Department, Status
ORDER BY Department;
GO