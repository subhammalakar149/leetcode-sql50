-- Write a solution to find all the authors that viewed at least one of their own articles.
-- Return the result table sorted by id in ascending order.

select author_id id
from views
where author_id = viewer_id
group by author_id
order by author_id asc
