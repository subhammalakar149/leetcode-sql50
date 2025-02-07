-- Write a solution to find the people who have the most friends and the most friends number.
-- The test cases are generated so that only one person has the most friends.

select id , count(*) as 'num' from (select requester_id as 'id' from RequestAccepted union all
                                    select accepter_id as 'id' from RequestAccepted) as x
group by 1
order by 2 desc limit 1
