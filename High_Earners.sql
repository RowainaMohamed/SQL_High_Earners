CREATE TABLE Department(
   DepartmentID   int (2),
   DepartmentName VARCHAR (20)
);

CREATE TABLE Employee(
   EmployeeID   INT,
   EmployeeName VARCHAR (20),
   salary   int (9),       
   DepartmentID int (2)
  
);

INSERT INTO Department VALUES (1, 'IT');
INSERT INTO Department VALUES (2, 'Sales');


INSERT INTO Employee VALUES (1, 'Joe', 85000, 1 );
INSERT INTO Employee VALUES (2, 'Henry', 80000 , 2);
INSERT INTO Employee VALUES (3, 'Sam', 60000 , 2);
INSERT INTO Employee VALUES (4, 'Max', 90000 , 1 );
INSERT INTO Employee VALUES (5, 'Janet', 69000 , 1);
INSERT INTO Employee VALUES (6, 'Randy', 85000 , 1);
INSERT INTO Employee VALUES (7, 'Will', 70000 , 1);


SELECT Department.DepartmentName, Employee.EmployeeName, Employee.salary
FROM Employee
JOIN Department ON Employee.DepartmentID=Department.DepartmentID
ORDER BY Department.DepartmentName,salary DESC;