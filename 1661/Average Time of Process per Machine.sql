/*
There is a factory website that has several machines each running the same number of processes. Write a solution to find the average time each machine takes to complete a process.
The time to complete a process is the 'end' timestamp minus the 'start' timestamp.
The average time is calculated by the total time to complete every process on the machine divided by the number of processes that were run.
The resulting table should have the machine_id along with the average time as processing_time, which should be rounded to 3 decimal places.
*/
-- Return the result table in any order.

select a.machine_id, round(avg(b.timestamp - a.timestamp),3) as processing_time
from activity a, activity b
where a.machine_id = b.machine_id and
a.process_id = b.process_id and
a.activity_type = 'start' and
b.activity_type = 'end'
group by a.machine_id
order by processing_time asc
