
-- order date and category index

create Index idx_order_date on retail_sales(order_date);
create Index idx_category on retail_sales(category);