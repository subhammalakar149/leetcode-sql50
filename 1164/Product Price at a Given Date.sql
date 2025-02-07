-- Write a solution to find the prices of all products on 2019-08-16. Assume the price of all products before any change is 10.
-- Return the result table in any order.

select distinct product_id, new_price as price
from Products
where (product_id, change_date)
in
(select product_id, max(change_date)
from Products
where change_date <= '2019-08-16'
group by product_id)
-- the above query retrieves respective rows filtered by maximum date of a product which is less than '2019-08-16'

union

select product_id, 10 as price
from Products
group by product_id
having min(change_date) > '2019-08-16'
-- the above query retrieves rows with products filtered with smallest date which is greater than '2019-08-16'
