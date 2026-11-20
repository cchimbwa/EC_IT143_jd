DROP TABLE IF EXISTS dbo.t_MyFC_PositionCount;
CREATE TABLE dbo.t_MyFC_PositionCount (
  Position NVARCHAR(50) NOT NULL PRIMARY KEY,
  PlayerCount INT NOT NULL DEFAULT 0
);