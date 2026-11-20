-- EC_IT143_W4.2_hello_world_s5.1_cm.sql
-- Author: CM
-- Description: Create table to hold Hello World

USE EC_IT143_DA;
GO

DROP TABLE IF EXISTS dbo.t_hello_world;
GO

CREATE TABLE dbo.t_hello_world (
    my_message NVARCHAR(100) NOT NULL
);
GO

SELECT * FROM dbo.t_hello_world;