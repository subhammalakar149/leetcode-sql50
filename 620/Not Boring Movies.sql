-- Write a solution to report the movies with an odd-numbered ID and a description that is not "boring".
-- Return the result table ordered by rating in descending order.

select id,
        movie,
        description,
        rating
from 
    cinema
where
    mod(id,2) <> 0 and
    description not like ('boring')
order by
    rating desc
