(select u.name
as results
from users u 
left JOIN
MovieRating
mr
on u.user_id=mr.user_id
group by u.user_id
order by count(mr.user_id) DESC
, u.name limit 1)


UNION all

(select u.title
as results
from movies m 
left JOIN
MovieRating
mr
on m.movie_id=mr.movie_id
where extract(year_month , mr.created_at) = 202002
group by m.movie_id
order by avg(mr.rating) DESC
, m.title limit 1)
