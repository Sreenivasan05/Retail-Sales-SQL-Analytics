DROP TABLE IF EXISTS retail_sales;

CREATE TABLE retail_sales (
    order_id VARCHAR(50),
    amount NUMERIC(10,2),
    profit NUMERIC(10,2),
    quantity INTEGER,
    category VARCHAR(50),
    sub_category VARCHAR(50),
    payment_mode VARCHAR(50),
    order_date DATE,
    customer_name VARCHAR(100),
    state VARCHAR(100),
    city VARCHAR(100),
    year_month VARCHAR(20)
);
