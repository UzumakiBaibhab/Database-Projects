CREATE TABLE employee7(
     emp_id INT,
     first_name VARCHAR(15),
     last_name VARCHAR(15),
     birth_date DATE,
     sex VARCHAR(1),
     salary INT,
     super_id INT,
     branch_id INT,
     PRIMARY KEY(emp_id)
);
DROP TABLE employee7;
CREATE TABLE branch7(
     branch_id INT,
     branch_name VARCHAR(10),
     mgr_id INT,
     mgr_start_date DATE,
     PRIMARY KEY(branch_id),
     FOREIGN KEY(mgr_id) REFERENCES employee7(emp_id) ON DELETE SET NULL
);
DROP TABLE branch7;
ALTER TABLE employee7
ADD FOREIGN KEY(super_id)
REFERENCES employee7(emp_id)
ON DELETE SET NULL;

ALTER TABLE employee7
ADD FOREIGN KEY(branch_id)
REFERENCES branch7(branch_id)
ON DELETE CASCADE;
CREATE TABLE client7(
     client_id INT PRIMARY KEY,
     client_name VARCHAR(20),
     branch_id INT,
     FOREIGN KEY(branch_id) REFERENCES branch7(branch_id) ON DELETE CASCADE
);
CREATE TABLE works_with7(
     emp_id INT,
     client_id INT,
     total_sales INT,
     PRIMARY KEY(emp_id,client_id),
     FOREIGN KEY(emp_id) REFERENCES employee7(emp_id) ON DELETE CASCADE,
     FOREIGN KEY(client_id) REFERENCES client7(client_id) ON DELETE CASCADE
);
CREATE TABLE branch_supplier7(
     branch_id INT,
     supplier_name VARCHAR(20),
     supply_type VARCHAR(15),
     PRIMARY KEY(branch_id, supplier_name),
     FOREIGN KEY(branch_id) REFERENCES branch7(branch_id) ON DELETE CASCADE
);
--Insertion of DATA
--Corporate Branch where branch_id is 1
INSERT INTO employee7 VALUES (100,'David','Wallace','1967-11-17','M',250000,NULL,NULL); --Don't insert the branch_id beforehand
INSERT INTO branch7 VALUES (1,'Corporate', 100, '2006-02-09'); --Declare the branch id from the branch table
UPDATE employee7
SET branch_id= 1
WHERE emp_id= 100; --Now update the employee table using the pre defined branch_id
INSERT INTO employee7 VALUES(101,'Jan', 'Levison','1961-05-11','F',110000,100,1);
--Scranton Branch where branch_id is 2
INSERT INTO employee7 VALUES(102,'Micheal','Scott','1964-03-15','M',75000,100,NULL);
INSERT INTO branch7 VALUES (2,'Corporate', 102, '1992-04-06');
UPDATE branch7
SET branch_name='Scranton'
WHERE branch_id=2;
UPDATE employee7
SET branch_id=2
WHERE emp_id=102;
INSERT INTO employee7 VALUES(103,'Angela','Martin','1971-06-25','F',63000,102,2);
INSERT INTO employee7 VALUES(104,'Kelly','Kapoor','1980-02-05','F',55000,102,2);
INSERT INTO employee7 VALUES(105,'Stanley','Hudson','1958-02-19','M',69000,102,2);
--Stanford Branch where branch_id is 3
INSERT INTO employee7 VALUES(106,'Josh','Porter','1969-09-05','M',78000,100,NULL);
INSERT INTO branch7 VALUES (3,'Stanford',106,'1998-02-13');
INSERT INTO branch7 VALUES(4,'Buffalo',NULL,NULL);
UPDATE employee7
SET branch_id=3
WHERE emp_id=106;
INSERT INTO employee7 VALUES(107,'Andy','Bernard','1973-07-22','M',65000,106,3);
INSERT INTO employee7 VALUES(108,'Jim','Halpert','1978-10-01','M',71000,106,3);
SELECT * FROM employee7; --Print Lines
SELECT * FROM branch7; --Print Lines
--Client7 Insertion
INSERT INTO client7 VALUES(400,'Dunmore Highschool',2);
INSERT INTO client7 VALUES(401, 'LackawanaCountry',2);
INSERT INTO client7 VALUES(402,'FedEx',3);
INSERT INTO client7 VALUES(403,'John Daly Law,LLC',3);
INSERT INTO client7 VALUES(404,'Scranton Whitepapers',2);
INSERT INTO client7 VALUES(405,'Times Newspaper',3);
INSERT INTO client7 VALUES(406,'FedEx',2);
SELECT * FROM client7; --Print Lines
--Works With Insertion
INSERT INTO works_with7 VALUES(105,400,55000);
INSERT INTO works_with7 VALUES(102,401,267000);
INSERT INTO works_with7 VALUES(108,402,22500);
INSERT INTO works_with7 VALUES(107,403,5000);
INSERT INTO works_with7 VALUES(108,403,12000);
INSERT INTO works_with7 VALUES(105,404,33000);
INSERT INTO works_with7 VALUES(107,405,26000);
INSERT INTO works_with7 VALUES(102,406,15000);
INSERT INTO works_with7 VALUES(105,406,130000);
SELECT * FROM works_with7;
--Branch Supplier Insertion
INSERT INTO branch_supplier7 VALUES(2,'Hammer Mill','Paper');
INSERT INTO branch_supplier7 VALUES(2,'Uni-Ball','WritingUtensil');
INSERT INTO branch_supplier7 VALUES(3,'Patriot Paper','Paper');
INSERT INTO branch_supplier7 VALUES(3,'J.T.Forms&Labels','Custom Forms');
INSERT INTO branch_supplier7 VALUES(3,'Uni-Ball','WritingUtensil');
INSERT INTO branch_supplier7 VALUES(3,'Hammer Mill','Paper');
INSERT INTO branch_supplier7 VALUES(3,'Stanford Labels','Custom Forms');
DROP TABLE works_with7;
DROP TABLE client7;
SELECT * FROM branch_supplier7;
