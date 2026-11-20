-- EC_IT143_W4.2_hello_world_s6_cm.sql
-- Author: CM
-- Description: Load data from view into table

USE EC_IT143_DA;
GO

TRUNCATE TABLE dbo.t_hello_world;
GO

INSERT INTO dbo.t_hello_world (my_message)
SELECT my_message
FROM dbo.v_hello_world;
GO

SELECT * FROM dbo.t_hello_world;