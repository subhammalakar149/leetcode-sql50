-- Write a solution to find the ids of products that are both low fat and recyclable.
-- Return the result table in any order.

select product_id from products where low_fats = 'Y' and recyclable = 'Y';
