
select id ,count(id) as num from (select requester_id as id from RequestedAccepted
UNION ALL
select accepter_id  as id from RequestedAccepted
) temp 
group by id
order by num DESC
limit 1