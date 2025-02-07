-- Write a solution to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.
-- Return the result table sorted in any order.

select customer_id, count(customer_id) count_no_trans 
from visits 
where visit_id not in (select distinct(visit_id) from transactions)
group by customer_id
order by customer_id
