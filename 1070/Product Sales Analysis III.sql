-- Write a solution to select the product id, year, quantity, and price for the first year of every product sold.
-- Return the resulting table in any order.

SELECT 
    product_id, 
    year as first_year, 
    quantity,
    price
FROM 
    Sales
WHERE 
    (product_id,year) in (SELECT product_id,MIN(year) FROM Sales GROUP BY  product_id)
