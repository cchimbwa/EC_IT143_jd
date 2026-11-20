CREATE OR ALTER PROCEDURE dbo.usp_MyFC_Load AS
BEGIN
  TRUNCATE TABLE dbo.t_MyFC_PositionCount;
  INSERT INTO dbo.t_MyFC_PositionCount SELECT * FROM dbo.v_MyFC;
END