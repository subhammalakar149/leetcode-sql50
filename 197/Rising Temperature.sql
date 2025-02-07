-- Write a solution to find all dates''id with higher temperatures compared to its previous dates (yesterday).
-- Return the result table in any order.

select a.id
from weather a
left join weather b
on b.recorddate +1 = a.recorddate
where
a.temperature > b.temperature
order by 1
