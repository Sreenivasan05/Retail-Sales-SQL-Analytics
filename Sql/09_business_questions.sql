

-- Top 20% customer contribution (Pareto analysis)

with customer_sales as (
	select 
		customer_name,
		sum(amount) as total_sales
	from retail_sales
	group by customer_name
),
ranked as (
	select *,
		NTILE(5) over (order by total_sales Desc) as bucket
	from customer_sales
)
select
	sum(total_sales) as top_20_percent_sales
from ranked
where bucket = 1;

-- Cities with high sales but low profit

select 
	city,
	sum(amount) as sales,
	sum(profit) as profit
from retail_sales
group by city
having sum(amount) > 200000 and sum(profit) < 100000;


-- Category contribution to total sales

select 
	category,
	Round(
	sum(amount) * 100/
	(select sum(amount) from retail_sales),
	2)
	as contribution_pct
from retail_sales
group by category;

