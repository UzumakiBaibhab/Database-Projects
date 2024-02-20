--Queries--
--Show all employees ordered by salary
SELECT *
FROM employee7
ORDER BY salary DESC;
--Order employees by sex then name
SELECT *
FROM employee7
ORDER BY sex, first_name, last_name ASC;
--Select 5 employees
SELECT *
FROM employee7
LIMIT 5;
--Find first and last name of all employees
SELECT first_name,last_name
FROM employee7;
--Find forename and surname
SELECT first_name AS forename, last_name AS surname
FROM employee7;
--Find out all genders
SELECT DISTINCT sex
FROM employee7;
--Functions--
--Find number of employees
SELECT COUNT(emp_id)
FROM employee7;
--Find the number of female employees born after 1970
SELECT COUNT(sex) 
FROM employee7
WHERE sex='F' AND birth_date>'1970-01-01';
--Find average of all employees salary
SELECT AVG(salary)
FROM employee7;
--FIND avg salary of male staffs
SELECT AVG(salary)
FROM employee7
WHERE sex='M';
--Find sum of salaries
SELECT SUM(salary)
FROM employee7;
--Find out how many males and females are there
SELECT COUNT(sex), sex 
FROM employee7
GROUP BY sex;
--Total sales by each salesman
SELECT SUM(total_sales), emp_id
FROM works_with7
GROUP BY emp_id;
--Total products bought by client
SELECT SUM(total_sales),client_id
FROM works_with7
GROUP BY client_id;
