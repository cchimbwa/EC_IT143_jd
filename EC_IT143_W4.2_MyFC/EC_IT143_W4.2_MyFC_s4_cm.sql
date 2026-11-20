CREATE OR ALTER VIEW dbo.v_MyFC AS
SELECT Position, COUNT(*) AS PlayerCount
FROM dbo.t_MyFC
GROUP BY Position;