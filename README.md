# Banking Loan Analysis Dashboard

## Project Overview

This project analyzes banking loan data to uncover customer behavior, loan trends, repayment patterns, and risk factors. The goal is to transform raw banking data into meaningful business insights using Python, SQL, and Power BI.

## Objectives

* Clean and preprocess banking datasets
* Handle missing values using business-driven imputation techniques
* Perform SQL analysis using joins, aggregations, and filtering
* Create an interactive Power BI dashboard
* Generate actionable insights related to loans, customers, and payments

## Datasets

### Customers Dataset

* customer_id
* age
* gender
* state
* annual_income
* employment_type
* credit_score

### Loans Dataset

* loan_id
* customer_id
* loan_type
* loan_amount
* interest_rate
* loan_term_months
* loan_status
* loan_date

### Payments Dataset

* payment_id
* loan_id
* payment_date
* payment_amount
* payment_method
* payment_status

## Data Cleaning

### Customers

* Missing Gender → Filled using Mode
* Missing Annual Income → Filled using Median by Employment Type
* Missing Credit Score → Filled using Median by Employment Type

### Loans

* Missing Interest Rate → Filled using Loan Type and Credit Score Bands

### Payments

* Missing Payment Amount → Filled using Median Payment Amount within Loan Amount Buckets
* Missing Payment Method → Filled using Mode

## Tools & Technologies

* Python
* Pandas
* NumPy
* SQL
* Power BI
* Jupyter Notebook

## SQL Concepts Used

* INNER JOIN
* LEFT JOIN
* GROUP BY
* HAVING
* Aggregate Functions
* Window Functions
* CTEs

## Dashboard KPIs

* Total Customers
* Total Loan Amount
* Total Payments
* Average Credit Score
* Default Rate
* Active Loans
* Closed Loans

## Key Insights

* States with highest loan demand
* Most popular loan types
* Relationship between income and loan amount
* Credit score distribution across customers
* Loan default analysis
* Payment behavior trends

## Project Workflow

1. Data Collection
2. Data Cleaning
3. Missing Value Treatment
4. Exploratory Data Analysis (EDA)
5. SQL Analysis
6. Dashboard Development
7. Insight Generation

## Future Improvements

* Loan Default Prediction using Machine Learning
* Customer Segmentation
* Risk Scoring Model
* Real-Time Banking Dashboard

## Author

Nakul Kalani

Computer Engineering Student | Aspiring Data Analyst
