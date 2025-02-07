-- Write a solution to swap the seat id of every two consecutive students. If the number of students is odd, the id of the last student is not swapped.
-- Return the result table ordered by id in ascending order.

select id,
case when id%2 = 0 then (lag(student) over (order by id))
else ifnull(lead(student) over (order by id),student)
END as student
from Seat 
