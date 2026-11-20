-- EC_IT143_W4.2_hello_world_s7_cm.sql
-- Author: CM
-- Description: Stored procedure that returns Hello World

USE EC_IT143_DA;
GO

CREATE OR ALTER PROCEDURE dbo.usp_hello_world
AS
BEGIN
    SELECT * FROM dbo.t_hello_world;
END;
GO