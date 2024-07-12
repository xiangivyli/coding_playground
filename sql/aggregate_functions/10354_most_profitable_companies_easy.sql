select company, sum(profits) as profit
from forbes_global_2010_2014
group by company
order by profit desc
limit 3;
