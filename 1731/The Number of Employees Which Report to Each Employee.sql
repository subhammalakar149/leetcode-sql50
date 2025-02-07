-- For this problem, we will consider a manager an employee who has at least 1 other employee reporting to them.
-- Write a solution to report the ids and the names of all managers, the number of employees who report directly to them, and the average age of the reports rounded to the nearest integer.
-- Return the result table ordered by employee_id.
select
    a.employee_id,
    a.name,
    count(a.employee_id) reports_count,
    round(sum(b.age)/count(a.employee_id),0) average_age
from
    employees a,
    employees b
where
    a.employee_id = b.reports_to
group by
    a.employee_id,
    a.name
order by
    a.employee_id asc
