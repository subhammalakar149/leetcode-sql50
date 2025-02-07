-- Write a solution to find the second highest distinct salary from the Employee table. If there is no second highest salary, return null (return None in Pandas).

SELECT 
    max(salary) AS SecondHighestSalary
FROM 
    Employee 
WHERE 
    Salary <> (SELECT max(salary) FROM Employee)
