-- Write a solution to find managers with at least five direct reports.
-- Return the result table in any order.

select a.name
from
    employee a,
    employee b
where
    a.id = b.managerid
group by
    a.name,
    b.managerid having count(*)>=5
