CREATE TABLE student( --Creating the table by defining data --This is schemas defining
    Student_roll_no INT PRIMARY KEY,
    Name VARCHAR(17),
    Percentage DECIMAL(4,2)
);
DESCRIBE student; --Prints the table
DROP TABLE student; --Deletes the table
ALTER TABLE student ADD Age INT; --Adds an column externally into the table
ALTER TABLE student DROP Age; --Deletes column from the table
