-- Report for every three line segments whether they can form a triangle.
-- Return the result table in any order.

select x,y,z, case when x+y>z and y+z>x and z+x>y then 'Yes' else 'No' end as triangle from triangle;
