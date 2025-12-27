
-- Overall performance
Select
    sum(amount) as total_sales,
    sum(profit) as total_profits,
    sum(quantity) as total_quantity
from retail_sales;

--sales by category
select 
    category,
    sum(amount) as total_sales,
    sum(profit) as total_profit
from retail_sales
group by category
order by total_sales desc;

-- sales by payment mode
select 
    payment_mode,
    sum(amount) as total_sales,
    count(*) as orders
from retail_sales
group by payment_mode
order by total_sales Desc;

