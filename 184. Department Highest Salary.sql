# Write your MySQL query statement below
Select 
    Department.Name as Department, 
    Employee.Name as Employee, Salary
From Employee Join Department
On
    Employee.DepartmentId= Department.Id
Where (Employee.DepartmentID, Salary) in (
    Select 
        DepartmentId,Max(Salary)
    From Employee
    Group by DepartmentId
    )
