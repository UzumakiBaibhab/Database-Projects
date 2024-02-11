-- -------------------------------------------Sales-------------------------------------
-- Number of sales made in each time of the day per weekday
select day_name,time_of_day,count(*) as total_sales 
from sales 
group by day_name,time_of_day 
order by day_name asc;
-- Which of the customer types brings the most revenue?
select customer_type,sum(total) as revenue 
from sales 
group by customer_type 
order by revenue desc;
-- Which city has the largest tax percent/ VAT (Value Added Tax)?
select city,avg(VAT) as vat 
from sales 
group by city 
order by vat desc;
select city,round(max(VAT),2) as vat 
from sales 
group by city 
order by vat desc;
-- Which customer type pays the most in VAT?
select customer_type,count(*) as cust_count,sum(VAT) as sum_vat 
from sales 
group by customer_type 
order by sum_vat desc;