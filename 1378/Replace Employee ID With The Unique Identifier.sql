-- Write a solution to show the unique ID of each user, If a user does not have a unique ID replace just show null.
-- Return the result table in any order.

select a.unique_id, b.name from employeeUNI a
right outer join
employees b on
a.id = b.id 
order by b.name
