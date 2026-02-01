Purpose: Revenue & cost analysis

Tables used:
payments
order_items
orders
customers

Queries here:
% cost increase from 2017 → 2018
Total & average order price by state
Find out the top 5 states with the highest & lowest average freight value.

1.% cost increase from 2017 → 2018
  
Select extract( year from a.order_purchase_timestamp) as yr_dt, sum(b.payment_value) as cost
FROM `targetsql.orders` a
inner join `targetsql.payments` b
ON a.order_id = b.order_id where extract( year from a.order_purchase_timestamp) between 2017 and 2018
and extract(month from a.order_purchase_timestamp) between 1 and 8
group by yr_dt)
Select *,lead(cost,1) over(order by yr_dt) as next_year_sales, round(100* (lead(cost,1) over(order by yr_dt)- cost)/cost,2) as perc_cost
from final
order by yr_dt;

2.Total & average order price by state
Select c.customer_state, sum(price) as total_price, sum(price)/count(distinct o.order_id) as avg_price_per_order
from `targetsql.orders` o
inner join `targetsql.order_items` i
ON o.order_id= i.order_id
inner join `targetsql.customers` c
on o.customer_id=c.customer_id
group by c.customer_state

3.Find out the top 5 states with the highest & lowest average freight value.
 (Select c.customer_state,avg(freight_value) as avg_value, 'top' as status
from `targetsql.orders` o
inner join `targetsql.order_items` i
ON o.order_id= i.order_id
inner join `targetsql.customers` c
ON o.customer_id=c.customer_id
group by c.customer_state
order by avg_value desc
limit 5)
union all
(Select c.customer_state,
      avg(freight_value) as avg_value,
      'bottom' as status
FROM `targetsql.orders` o
INNER JOIN `targetsql.order_items` i
ON o.order_id= i.order_id
INNER JOIN `targetsql.customers` c
ON o.customer_id=c.customer_id
group by c.customer_state
order by avg_value
limit 5)

Insights- Order value grew by ~137% from 2017 to 2018 (Jan–Aug), driven by a sharp increase in order volume, showing rapid market expansion.
Revenue is geographically concentrated, with SP contributing the highest total order value, while some states show higher average order values despitelower volumes.
Significant regional variation in customer purchasing behavior suggests differences in demand intensity and spending capacity across states.

Recommendations-Improve logistics and delivery capacity so the system can handle growing order volumes without delays.
Use different strategies for different states.Use past sales and regional trends to plan inventory better, forecast demand accurately, and set smarter prices.



  




