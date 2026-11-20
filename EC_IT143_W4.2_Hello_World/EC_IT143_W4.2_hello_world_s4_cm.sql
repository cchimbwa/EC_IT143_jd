-- EC_IT143_W4.2_hello_world_s4_cm.sql
-- Author: CM
-- Description: Creates view from ad hoc query

USE EC_IT143_DA;
GO

CREATE OR ALTER VIEW dbo.v_hello_world
AS
SELECT 'Hello World' AS my_message;
GO

-- Test the view
SELECT * FROM dbo.v_hello_world;