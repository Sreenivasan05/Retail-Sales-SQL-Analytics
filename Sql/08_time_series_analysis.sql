

-- Monthly sales trend
Select
	year_month,
	sum(amount) as monthly_sales,
	sum(profit) as monthly_profit
from retail_sales
group by year_month
order by year_month;

-- Yearly sales trend

Select
	EXTRACT(YEAR from order_date) as year,
	sum(amount) as yearly_sales
from retail_sales
group by year
order by year;

-- Best and worst month

Select
    year_month,
    sum(amount) as sales,
	Rank() over (Order by sum(amount) Desc)	as rank
from retail_sales
group by year_month;


-- Cumulative Sales Over Time

SELECT
    year_month,
    SUM(amount) AS monthly_sales,
    SUM(SUM(amount)) OVER (ORDER BY year_month) AS cumulative_sales
FROM retail_sales
GROUP BY year_month;

-- Category Share Over Time

SELECT
	year_month,
	category,
	round(
	sum(amount) * 100 /
	sum(sum(amount)) over (partition by year_month),
	2)
	as category_share_percent
FROM retail_sales
group by year_month, category
order by year_month;
