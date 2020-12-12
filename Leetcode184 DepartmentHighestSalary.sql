#Write a SQL query to find employees who have the highest salary in each of the departments. 
#For the above tables, your SQL query should return the following rows (order of rows does not matter).

CREATE TABLE  Employee (
Id int,
Name varchar(255),
Salary int,
DepartmentId int
);
CREATE TABLE Department (
Id int, 
Name varchar(255)
);
DROP TABLE Department;
insert into Employee (Id, Name, Salary, DepartmentId) values ('1', 'Joe', '70000', '1');
insert into Employee (Id, Name, Salary, DepartmentId) values ('2', 'Jim', '90000', '1');
insert into Employee (Id, Name, Salary, DepartmentId) values ('3', 'Henry', '80000', '2');
insert into Employee (Id, Name, Salary, DepartmentId) values ('4', 'Sam', '60000', '2');
insert into Employee (Id, Name, Salary, DepartmentId) values ('5', 'Max', '90000', '1');

insert into Department (Id, Name) values ('1', 'IT');
insert into Department (Id, Name) values ('2', 'Sales');

#Solution
SELECT d.Name AS Department, e.Name AS Employee, e.Salary AS Salary
FROM Employee AS e JOIN Department AS d
ON e.departmentId = d.Id
WHERE (e.salary, d.Id) IN (SELECT MAX(Salary), departmentId
                           FROM Employee
                           GROUP BY DepartmentId
                                );

