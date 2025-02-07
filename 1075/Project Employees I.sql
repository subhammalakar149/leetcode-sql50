-- Write an SQL query that reports the average experience years of all the employees for each project, rounded to 2 digits.
-- Return the result table in any order.

select a.project_id, round(sum(b.experience_years)/count(b.employee_id),2) average_years
from project a, employee b
where a.employee_id = b.employee_id
group by a.project_id
