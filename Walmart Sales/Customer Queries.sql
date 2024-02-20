-- ---------------------------CUSTOMER-----------------------
-- How many unique customer types does the data have?
Select distinct(customer_type) from sales group by customer_type;
-- How many unique payment methods does the data have?
Select distinct(payment_method) from sales;
-- What is the most common customer type?
Select max(distinct(customer_type)) from sales;
-- What is the gender of most of the customers?
Select gender,customer_type,count(gender) as gnd_cnt from sales group by customer_type,gender order by gnd_cnt desc;
-- What is the gender distribution per branch?
Select branch,gender,count(gender) as cnt from sales group by branch,gender order by branch asc;
-- Which time of the day do customers give most ratings?
Select time_of_day,avg(rating) as rate from sales group by time_of_day order by time_of_day asc;
-- Which time of the day do customers give most ratings per branch?
Select branch,time_of_day,rating from sales group by branch,time_of_day,rating order by branch asc;
-- Which day fo the week has the best avg ratings?
Select day_name,avg(rating) as rate from sales group by day_name order by rate asc;
-- Which day of the week has the best average ratings per branch?
Select distinct(branch),day_name,avg(rating) from sales group by branch,day_name order by branch asc limit 8;