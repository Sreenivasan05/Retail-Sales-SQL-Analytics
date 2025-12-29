

-- Ranking customers by sales

with customer_sales as (
	select
		customer_name,
		sum(amount) as total_sales
	from retail_sales
	group by customer_name
)
select 
	customer_name,
	total_sales,
	RANK() over (order by total_sales DESC) as sales_rank
from customer_sales;

-- Ranking sub-categoires with category

SELECT
    year_month,
    SUM(amount) AS monthly_sales,
    SUM(SUM(amount)) OVER (ORDER BY year_month) AS cumulative_sales
FROM retail_sales
GROUP BY year_month;