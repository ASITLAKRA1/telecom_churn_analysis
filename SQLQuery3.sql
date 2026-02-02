Create View vw_ChurnData as 
	Select * from [db_churn].[dbo].[prod_churn] where customer_status IN ('Churned','Stayed')


Create View vw_JoinData as 
	Select * from [db_churn].[dbo].[prod_churn] where customer_status = 'Joined'


SELECT DB_NAME();


use db_churn


USE master;
GO

DROP VIEW IF EXISTS vw_JoinData;
