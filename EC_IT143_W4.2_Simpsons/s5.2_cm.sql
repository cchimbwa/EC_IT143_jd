-- EC_IT143_W4.2_hello_world_s5.2_cm.sql
-- Author: CM
-- Description: Alternate table creation using SELECT INTO

USE EC_IT143_DA;
GO

DROP TABLE IF EXISTS dbo.t_hello_world_alt;
GO

SELECT my_message
INTO dbo.t_hello_world_alt
FROM dbo.v_hello_world;
GO

SELECT * FROM dbo.t_hello_world_alt;