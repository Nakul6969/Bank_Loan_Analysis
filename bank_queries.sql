-- INNER JOIN : it returns only Matching Records 
SELECT * FROM customers c
INNER JOIN loans l
ON c.customer_id = l.customer_id;

-- LEFT JOIN : returns all customers even if they do not have a loan 
SELECT * FROM customers c
LEFT JOIN loans l
ON c.customer_id = l.customer_id;

-- RIGHT JOIN : returns all loans even if customer details are missing 
SELECT * FROM customers c
RIGHT JOIN loans l
ON c.customer_id = l.customer_id;

-- FULL OUTER JOIN : returns everything from both tables 
SELECT * FROM customers c
FULL OUTER JOIN loans l
ON c.customer_id = l.customer_id;

-- 1) Total Loan Amount By State

SELECT
    c.state,
    SUM(l.loan_amount) AS total_loan
FROM customers c
JOIN loans l
ON c.customer_id = l.customer_id
GROUP BY c.state
ORDER BY total_loan DESC;

-- 2) Top 10 Customers By Loan Amount

SELECT
    c.customer_id,
    SUM(l.loan_amount) AS total_loan
FROM customers c
JOIN loans l
ON c.customer_id = l.customer_id
GROUP BY c.customer_id
ORDER BY total_loan DESC
LIMIT 10;

-- 3) Find Average Credit Score by Employment Type

select employment_type, round(avg(credit_score),0) 
from customers 
group by employment_type;

-- 4) Total Payments By Payment Methods

SELECT
    payment_method,
    SUM(payment_amount) AS total_payment
FROM payments
GROUP BY payment_method;

-- 5) Find State Wise Average Loan Amount 

SELECT
    c.state,
    ROUND(AVG(l.loan_amount),2) AS avg_loan
FROM customers c
JOIN loans l
ON c.customer_id = l.customer_id
GROUP BY c.state;

-- 6) Rank Customers By Loan Amount 

SELECT
    c.customer_id,
    SUM(l.loan_amount) AS total_loan,
    RANK() OVER(
        ORDER BY SUM(l.loan_amount) DESC
    ) AS ranking
FROM customers c
JOIN loans l
ON c.customer_id = l.customer_id
GROUP BY c.customer_id;

-- 7) Find Sixth Highest Loan Amount 

SELECT *
FROM (
    SELECT
        loan_id,
        loan_amount,
        DENSE_RANK() OVER(
            ORDER BY loan_amount DESC
        ) AS rnk
    FROM loans
) t
WHERE rnk = 6;
