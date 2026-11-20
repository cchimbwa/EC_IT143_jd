-- EC_IT143_W4.2_Simpsons_s5_cm.sql
SELECT Member_ID, Name, Job_Title, Department, Status
FROM dbo.Family_Data
WHERE Status = 'Active';