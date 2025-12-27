
-- Total rows

select count(*) as total_rows
from retail_sales;

-- check for NULLs
select 
    count(*) Filter (where amount is null) as null_amount,
    count(*) Filter (where profit is null) as null_profit,
    count(*) filter (where order_date is null) as null_order_date
from retail_sales;

-- check zero or negative values

select
    count(*) Filter (where amount <= 0) as invalid_amount,
    count(*) Filter (where quantity <= 0) as invalid_quantity
from retail_sales;

-- check distinct values

select
    count(distinct customer_name) as unique_customers,
    count(distinct order_id) as unique_orders
from retail_sales;