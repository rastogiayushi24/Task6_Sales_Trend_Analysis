# Task 6: Sales Trend Analysis Using SQL Aggregations

## Project Overview

This project focuses on analyzing sales trends using SQL aggregation functions on the Olist E-commerce dataset. The objective is to calculate monthly revenue and order volume by joining the `orders` and `order_payments` tables and applying SQL aggregation techniques.

The project demonstrates how SQL can be used to generate business insights from transactional data by summarizing sales performance over time.

---

## Objectives

- Analyze monthly sales revenue.
- Calculate monthly order volume.
- Identify yearly revenue trends.
- Determine the highest revenue month.
- Calculate average order value.
- Practice SQL aggregation and date functions.

---

## Tools & Technologies

- MySQL Workbench
- SQL
- Olist E-commerce Dataset
- Git & GitHub

---

## Database Tables Used

- `orders`
- `order_payments`

---

## SQL Concepts Used

- INNER JOIN
- GROUP BY
- ORDER BY
- SUM()
- COUNT(DISTINCT)
- AVG()
- YEAR()
- MONTH()
- ROUND()
- LIMIT()

---

## Analysis Performed

### 1. Monthly Revenue Analysis
Calculated the total revenue generated each month using the payment amount.

### 2. Monthly Order Volume
Counted the number of unique orders placed each month.

### 3. Yearly Revenue
Analyzed the total revenue generated each year.

### 4. Average Order Value
Calculated the average payment value for orders placed each month.

### 5. Highest Revenue Month
Identified the month with the highest total sales revenue.

### 6. Highest Order Volume Month
Determined the month with the highest number of orders.

---

## Sample Output

| Year | Month | Total Revenue | Order Volume |
|------|------:|--------------:|-------------:|
| 2016 | 9 | 1,200.50 | 5 |
| 2016 | 10 | 35,420.90 | 324 |
| 2016 | 11 | 89,732.10 | 742 |
| ... | ... | ... | ... |


## Key Learning Outcomes

- Working with relational databases using SQL.
- Performing data aggregation using SQL functions.
- Using JOIN operations to combine multiple tables.
- Analyzing sales trends through monthly and yearly reports.
- Generating business insights from transactional data.

---

## Conclusion

This project demonstrates how SQL aggregation functions can be used to analyze business performance by summarizing sales data into meaningful insights. The analysis provides a clear understanding of revenue trends, customer purchasing patterns, and order volume over time, which can support data-driven business decisions.

---
