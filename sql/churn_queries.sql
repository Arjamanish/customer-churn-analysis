SELECT ROUND(100.0 * SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)/COUNT(*),2) AS churn_rate
FROM telco_churn;

SELECT Contract,
COUNT(*) customers,
ROUND(100.0 * SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)/COUNT(*),2) churn_rate
FROM telco_churn
GROUP BY Contract
ORDER BY churn_rate DESC;

SELECT PaymentMethod,
COUNT(*) customers,
ROUND(100.0 * SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)/COUNT(*),2) churn_rate
FROM telco_churn
GROUP BY PaymentMethod
ORDER BY churn_rate DESC;
