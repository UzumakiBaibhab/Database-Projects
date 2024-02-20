--Find names of all employees who have sold over 30000 to clients
SELECT employee7.first_name,employee7.last_name 
FROM employee7
WHERE employee7.emp_id IN(
     SELECT works_with7.emp_id FROM works_with7
     WHERE works_with7.total_sales>30000
);
--Find all clients who are handled by the branch that Micheal Scott manages(Assume you know Micheal's ID)
SELECT client7.client_name FROM client7
WHERE client7.branch_id =(
     SELECT branch7.branch_id FROM branch7
     WHERE branch7.mgr_id=102
     LIMIT 1 --only one output
);
