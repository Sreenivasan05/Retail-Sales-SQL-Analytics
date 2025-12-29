-- Customeer spend analysis

select
	customer_name,
	sum(amount) as total_spend,
	count(order_id) as orders
from retail_sales
group by customer_name
order by total_spend Desc;

-- Top 10 customers

select 
	customer_name,
	sum(amount) as total_spend
from retail_sales
group by customer_name
order by total_spend Desc
limit 10;

-- Repeat vs one-time customers

select 
	CASE
		when order_count = 1 Then 'One-time'
		Else 'Repeat'
	END as customer_type,
	count(*) as customers
from (
	select 
		customer_name,
		count(*) as order_count
	from retail_sales
	group by customer_name
)t
group by customer_type;