Purpose: Operations & supply chain efficiency

Tables used:
orders
order_items
customers
  
Queries here:
Delivery time vs estimated delivery (single query).
Fastest & slowest delivery states.

1.Delivery time vs estimated delivery(single query)
Select o.order_id, c.customer_state,Date_diff(o.order_delivered_customer_date, o.order_purchase_timestamp, DAY) as time_to_deliver,
Date diff(o.order_estimated_delivery_date, o.order_delivered_customer_date, DAY) AS diff_estimated_vs_actual from `targetsql.orders` o join `targetsql.customers` c 
on o.customer_id = c.customer_id
where o.order_delivered_customer_date is not null
and o.order_estimated_delivery_date is not null;

2.Fastest & slowest delivery states.
  With state_freight_value as
  (Select c.customer_state, Avg(oi.freight_value) AS average_freight_value FROM `targetsql.orders` o join  `targetsql.order_items` oi on o.order_id = oi.order_id
  join `targetsql.customers` c on o.customer_id = c.customer_id
  group by c.customer_state)
  Select a.customer_state AS state_highest,b.customer_state as state_lowest, from (Select customer_state, average_freight_value, 
  Row_Number()over(order by average_freight_value desc) as r
  from state_freight_value limit 5) a
  join  (Select customer_state, average_freight_value, ROW_NUMBER() OVER (order average_freight_value asc) as r
  from state_freight_value limit 5 ) b on a.r = b.r;

Insights and recommendations-
Delivery performance varies significantly across states:
SP shows both delays and early deliveries , indicating inconsistency.MG and RJ mostly have moderate delays or early deliveries.
Some orders are delivered much earlier or later than estimated, suggesting issues with estimation accuracy. States with frequent positive differences indicate
logistical bottlenecks or underestimation of delivery times.States with frequent negative differences may suggest overly delayed delivery estimates.
By seeing the data one can optimize shipping strategies. Negotiate lower shipping costs in higher freight valued states such as RR,PB, RO a
nd make operations smoother in lower freight valued states such as SP,PR, MG ones.



