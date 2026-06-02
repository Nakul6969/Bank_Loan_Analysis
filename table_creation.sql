CREATE TABLE customers(
    customer_id INT PRIMARY KEY,
    age SMALLINT,
    gender VARCHAR(20),
    state VARCHAR(50),
    annual_income DECIMAL(12,2),
    employment_type VARCHAR(50),
    credit_score DECIMAL(5,1)
);

COPY customers (
    customer_id, age, gender, state, annual_income, employment_type, credit_score
)
FROM 'E:/cleaned_bank_customers.csv'
DELIMITER ','
CSV HEADER;

CREATE TABLE loans(
	loan_id INT primary key, 
	customer_id INT, 
	loan_type VARCHAR(50), 
	loan_amount decimal(12,2), 
	interest_rate decimal(5,2),
    loan_term_months INT, 
	loan_status VARCHAR(20), 
	loan_date DATE
);

COPY loans (
    loan_id, customer_id, loan_type, loan_amount, interest_rate, loan_term_months, loan_status, loan_date
)
FROM 'E:\cleaned_bank_loans.csv'
DELIMITER ','
CSV HEADER;

CREATE TABLE payments(
    payment_id INT PRIMARY KEY,
    loan_id INT,
    payment_date DATE,
    payment_amount DECIMAL(12,2),
    payment_method VARCHAR(50),
    payment_status VARCHAR(20),
    loan_amount DECIMAL(12,2),
    loan_bucket VARCHAR(20)
);

COPY payments (
    payment_id, loan_id, payment_date, payment_amount, payment_method, payment_status, loan_amount, loan_bucket
)
FROM 'E:/cleaned_bank_payments.csv'
DELIMITER ','
CSV HEADER;