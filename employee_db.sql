-- Create a table to store information about employees
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Department VARCHAR(50)
);

-- Insert some data into the Employees table
INSERT INTO Employees (EmployeeID, FirstName, LastName, Age, Department)
VALUES (1, 'John', 'Doe', 30, 'Engineering');

INSERT INTO Employees (EmployeeID, FirstName, LastName, Age, Department)
VALUES (2, 'Jane', 'Smith', 28, 'Marketing');

INSERT INTO Employees (EmployeeID, FirstName, LastName, Age, Department)
VALUES (3, 'Michael', 'Johnson', 35, 'Finance');

-- Query to retrieve all employees from the Engineering department
SELECT * FROM Employees WHERE Department = 'Engineering';
