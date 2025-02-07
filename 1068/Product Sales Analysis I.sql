-- Write a solution to report the product_name, year, and price for each sale_id in the Sales table.
-- Return the resulting table in any order.

select b.product_name, 
        a.year, 
        a.price
from
    sales a,
    product b
where a.product_id = b.product_id
order by b.product_name
