-- --------------- Feature Engineering ----------------------------------------
-- time_of_day --
SELECT time,
(case
when `time` between '00:00:00' and '12:00:00' then 'Morning'
when `time` between '12:00:01' and '16:00:00' then 'Afternoon'
else 'Evening' 
end)
as time_of_day  
from sales;

ALTER TABLE sales add column time_of_day varchar(20);
UPDATE sales
SET time_of_day=(case
when `time` between '00:00:00' and '12:00:00' then 'Morning'
when `time` between '12:00:01' and '16:00:00' then 'Afternoon'
else 'Evening' 
end);
-- day_name --
SELECT date,(dayname(date)) from sales;
ALTER TABLE sales add column day_name varchar(10);
UPDATE sales
SET day_name=(dayname(date));
-- month_name --
Select date, MONTHNAME(date) from sales;
ALTER TABLE sales add column month_name varchar(10);
UPDATE sales
SET month_name=(monthname(date));
-- -------------------------------------------------------------------------------------
