
-- Sub-category performance

select 
	category,
	sub_category,
	sum(amount) as sales,
	sum(profit) as profit
from retail_sales
group by category, sub_category
order by sales Desc;

-- Loss-making sub-categories
select
	sub_category,
	sum(profit) as total_loss
from retail_sales
where profit < 0
group by sub_category
order by total_loss;


-- Profit margin by category
select
	category,
	round(
		sum(profit) * 100 / Nullif(sum(amount), 0),
		2) as profit_margin_pct
from retail_sales
group by category
order by profit_margin_pct Desc;