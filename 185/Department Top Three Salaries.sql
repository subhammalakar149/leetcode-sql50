/*
A company's executives are interested in seeing who earns the most money in each of the company's departments. 
A high earner in a department is an employee who has a salary in the top three unique salaries for that department.
*/
-- Write a solution to find the employees who are high earners in each of the departments.
-- Return the result table in any order.

  SELECT D.Name as Department, E.Name as Employee, E.Salary 
  FROM Department D, Employee E, Employee E2  
  WHERE D.ID = E.DepartmentId and E.DepartmentId = E2.DepartmentId and 
  E.Salary <= E2.Salary
  group by D.ID,E.Name having count(distinct E2.Salary) <= 3
  order by D.Name, E.Salary desc
