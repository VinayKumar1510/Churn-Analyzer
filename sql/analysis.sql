USE  churn_analysis;
-- =========================
-- BASIC DATA CHECK
-- =========================

-- Total records
SELECT COUNT(*) AS total_customers
FROM customers;

-- Preview data
SELECT *
FROM customers
LIMIT 10;


-- =========================
-- CHURN ANALYSIS
-- =========================

-- Overall churn count
SELECT Churn, COUNT(*) AS total
FROM customers
GROUP BY Churn;

-- Churn rate (%)
SELECT 
    Churn,
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM customers) AS churn_percentage
FROM customers
GROUP BY Churn;


-- =========================
-- CHURN BY GENDER
-- =========================

SELECT 
    gender,
    Churn,
    COUNT(*) AS total
FROM customers
GROUP BY gender, Churn;


-- =========================
-- CHURN BY CONTRACT TYPE
-- =========================

SELECT 
    Contract,
    Churn,
    COUNT(*) AS total
FROM customers
GROUP BY Contract, Churn
ORDER BY Contract;


-- =========================
-- CHURN BY TENURE
-- =========================

SELECT 
    CASE 
        WHEN tenure <= 12 THEN '0-12 Months'
        WHEN tenure <= 24 THEN '12-24 Months'
        WHEN tenure <= 48 THEN '24-48 Months'
        ELSE '48+ Months'
    END AS tenure_group,
    Churn,
    COUNT(*) AS total
FROM customers
GROUP BY tenure_group, Churn
ORDER BY tenure_group;


-- =========================
-- CHURN BY MONTHLY CHARGES
-- =========================

SELECT 
    Churn,
    AVG(MonthlyCharges) AS avg_monthly_charges
FROM customers
GROUP BY Churn;


-- =========================
-- HIGH VALUE CUSTOMERS
-- =========================

SELECT 
    CASE 
        WHEN MonthlyCharges > 70 THEN 'High Value'
        ELSE 'Low Value'
    END AS customer_type,
    Churn,
    COUNT(*) AS total
FROM customers
GROUP BY customer_type, Churn;


-- =========================
-- CONTRACT RISK ANALYSIS
-- =========================

SELECT 
    CASE 
        WHEN Contract = 'Month-to-month' THEN 'High Risk'
        WHEN Contract = 'One year' THEN 'Medium Risk'
        ELSE 'Low Risk'
    END AS contract_risk,
    Churn,
    COUNT(*) AS total
FROM customers
GROUP BY contract_risk, Churn;