CREATE DATABASE db_churn

use db_churn

select * from stg_churn

SELECT Gender , COUNT(Gender) as TotalCount,
COUNT(Gender) *100.0 / (SELECT COUNT(*) from stg_churn) as Percentage
from stg_churn
Group By Gender

SELECT Contract , COUNT(Contract) as TotalCount,
COUNT(Contract) * 100.0 / (SELECT COUNT(*) FROM stg_churn) as Percentage
from stg_churn
Group By Contract


SELECT Customer_Status, COUNT(Customer_Status) as TotalCount, SUM(Total_Revenue) as TotalRev,
SUM(Total_Revenue) / (SELECT SUM(Total_Revenue) FROM stg_churn) * 100 as PerRevenue
FROM stg_churn
Group By Customer_Status


SELECT State, COUNT(State) as TotalCount,
COUNT(State) * 100.0 / (SELECT COUNT(*) FROM stg_churn) as Percentage
FROM stg_churn
Group By State
Order By Percentage DESC


SELECT DISTINCT Internet_Type
FROM stg_churn