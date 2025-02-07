-- Find all numbers that appear at least three times consecutively.
-- Return the result table in any order.

SELECT 
    DISTINCT A.NUM AS ConsecutiveNums
FROM 
    LOGS A
JOIN LOGS B ON A.ID = B.ID+1 AND A.NUM = B.NUM
JOIN LOGS C ON A.ID = C.ID+2 AND A.NUM = C.NUM
