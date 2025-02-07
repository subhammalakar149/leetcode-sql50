-- A single number is a number that appeared only once in the MyNumbers table.
-- Find the largest single number. If there is no single number, report null.

select max(num) as num
from
(
select num from mynumbers group by num having count(*) = 1
) a
