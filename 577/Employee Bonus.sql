-- Write a solution to report the name and bonus amount of each employee with a bonus less than 1000.
-- Return the result table in any order.

select a.name, b.bonus
from employee a left join bonus b
on a.empid = b.empid
where
b.bonus is null or b.bonus < 1000
