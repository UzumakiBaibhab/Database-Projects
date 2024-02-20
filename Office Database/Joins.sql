--Find all branches and the name of their managers
SELECT employee7.emp_id,employee7.first_name,employee7.last_name,branch7.branch_name
FROM employee7
JOIN branch7
ON employee7.emp_id=branch7.mgr_id;
--Left Join
SELECT employee7.emp_id,employee7.first_name,employee7.last_name,branch7.branch_name
FROM employee7;
LEFT JOIN branch7
ON employee7.emp_id=branch7.mgr_id;
--Right Join
SELECT employee7.emp_id,employee7.first_name,employee7.last_name,branch7.branch_name
FROM employee7
RIGHT JOIN branch7
ON employee7.emp_id=branch7.mgr_id;
