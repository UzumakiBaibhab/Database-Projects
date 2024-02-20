--'%'=any no. of characters    '_'=one character
--Find any client's name who are LLC
SELECT * FROM client7
WHERE client_name LIKE '%LLC%';
--Find any branch supplier who are in label business
SELECT * FROM branch_supplier7
WHERE supplier_name LIKE '%label%';
--Find any employee born in october
SELECT * FROM employee7
WHERE birth_date LIKE '____-10%';
--Find clients who are schools
SELECT * FROM client7
WHERE client_name LIKE '%school%';
