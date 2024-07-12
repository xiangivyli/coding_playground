select product_id, sum(cost_in_dollars * units_sold) as revenue
from online_orders
where date < '2022-07-01'
group by product_id
order by revenue desc
limit 5;

