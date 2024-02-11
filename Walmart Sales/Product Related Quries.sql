-- -------------------------------- Products -------------------------------------------
-- How many unique product lines does the data have?
select count(distinct product_line) from sales;
-- What is the most common payment method?
select payment_method,count(payment_method) as counting from sales group by payment_method order by counting desc;
-- What is the most selling product line?
select product_line, count(product_line) as cnt2 from sales group by product_line order by cnt2 desc;
-- What is the total revenue by month?
select sum(total) as revenue,month_name from sales group by month_name order by revenue asc;
-- What month had the largest COGS?
select month_name,sum(cogs) as max from sales group by month_name order by max desc limit 1; 
-- What product line had the largest revenue?
select  product_line,sum(total) as max_rev from sales group by product_line order by max_rev desc limit 1;
-- What is the city with the largest revenue?
select city,sum(total) as max_rev from sales group by city order by max_rev desc limit 1;
-- What product line had the largest VAT?
select product_line,sum(VAT) as VAT from sales group by product_line order by VAT desc limit 1;
-- Fetch each product line and add a column to those product line showing "Good", "Bad". Good if its greater than average sales
select product_line,(case 
when total>avg_sales then 'GOOD'
else 'BAD' end)
 as Product_Review from (SELECT 
        product_line,
        SUM(total) AS total,
        (SELECT AVG(total) FROM sales) AS avg_sales
    FROM 
        sales
    GROUP BY 
        product_line)as Rate;
-- Which branch sold more products than average product sold?
select branch,sum(quantity) as qty from sales group by branch having sum(quantity)>(select avg(quantity)from sales);
-- What is the most common product line by gender?
select product_line, gender,count(gender) as gen_c from sales group by product_line,gender order by gen_c desc;
-- What is the average rating of each product line?
select product_line,avg(rating) avg_r from sales group by product_line order by avg_r desc;
-- -------------------------------------------------------------------------------------