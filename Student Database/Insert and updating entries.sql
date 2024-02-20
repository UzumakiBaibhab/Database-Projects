DROP TABLE student2;
CREATE TABLE student2(
    Student_roll_no INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(17) NOT NULL,
    Surname VARCHAR(12) DEFAULT 'No Surname',
    Percentage DECIMAL(4,2) UNIQUE
);

INSERT INTO student2(Name, Surname, Percentage) VALUES ('Manaswini', 'Maiti', 85.23);
INSERT INTO student2(Name, Surname, Percentage) VALUES ('Baibhab', 'Ghosh', 87.10);
INSERT INTO student2(Name, Surname, Percentage) VALUES ('Shaikat', 'Halder', 79.23);
INSERT INTO student2(Name, Percentage) VALUES ('Jewel', 93.12);
SELECT * FROM student2;
UPDATE student2  --Updatation of Elements
SET Surname='Das'
WHERE Surname='No Surname';
