-- Write a solution to find the percentage of the users registered in each contest rounded to two decimals.
-- Return the result table ordered by percentage in descending order. In case of a tie, order it by contest_id in ascending order.

 select b.contest_id, 
 round(count(b.user_id)/(select count(rowid) from users) *100,2) percentage
 from users a, register b
 where a.user_id = b.user_id
 group by b.contest_id
 order by percentage desc, b.contest_id asc
