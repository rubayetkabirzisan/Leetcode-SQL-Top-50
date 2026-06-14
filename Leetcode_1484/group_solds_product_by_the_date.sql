select self_date,
count(DISTINCT product)
as group_concat(distinct product order by product
separator ',') as products
from Activities
group by sell_date
order by sell_date;