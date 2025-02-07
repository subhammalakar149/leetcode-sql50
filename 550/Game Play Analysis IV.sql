/*
Write a solution to report the fraction of players that logged in again on the day after the day they first logged in, rounded to 2 decimal places. 
In other words, you need to count the number of players that logged in for at least two consecutive days starting from their first login date, then divide that number by the total number of players.
*/

select nvl(round(count(distinct b.player_id)/count(distinct a.player_id),2),0) as fraction
from Activity a
left join (select player_id, min(event_date) as event_date from Activity
group by player_id) b
on a.player_id=b.player_id and a.event_date=b.event_date+1;
