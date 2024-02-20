--Find the list of employee,client and branch names
SELECT first_name AS NAME FROM employee7
UNION
SELECT branch_name FROM branch7
UNION
SELECT client_name FROM client7; 
--Find the list of all client and branch supplier names with respective branch ids
SELECT client_name AS name ,branch_id FROM client7
UNION
SELECT supplier_name,branch_id FROM branch_supplier7;
--Find a list of all money spent or earned by a company
SELECT salary FROM employee7
UNION
SELECT total_sales FROM works_with7;
