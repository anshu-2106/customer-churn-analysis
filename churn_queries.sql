CREATE DATABASE churn_project;
USE churn_project; 
CREATE TABLE churn_data (
    customerID VARCHAR(50),
    gender VARCHAR(10),
    tenure INT,
    Contract VARCHAR(50),
    MonthlyCharges FLOAT,
    TotalCharges FLOAT,
    Churn VARCHAR(10)
);
SHOW TABLES;
DROP TABLE churn_data;
SHOW TABLES;
SELECT COUNT(*) FROM churn_data;
SELECT * FROM churn_data LIMIT 10;
SELECT 
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate_percentage
FROM churn_data;
SELECT 
    gender,
    COUNT(*) AS total,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned
FROM churn_data
GROUP BY gender;
SELECT 
    Contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers
FROM churn_data
GROUP BY Contract;
SELECT 
    AVG(MonthlyCharges) AS avg_monthly_charge_churned
FROM churn_data
WHERE Churn = 'Yes';
SELECT 
    Contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate
FROM churn_data
GROUP BY Contract;
SELECT 
    tenure,
    COUNT(*) AS total,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned
FROM churn_data
GROUP BY tenure
ORDER BY tenure;
SELECT 
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate
FROM churn_data;
SELECT 
    gender,
    COUNT(*) AS total,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned
FROM churn_data
GROUP BY gender;
SELECT * FROM churn_data;