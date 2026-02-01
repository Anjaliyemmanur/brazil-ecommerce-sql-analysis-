**Purpose: Regional distribution & growth**

Tables used:
customers
orders
geolocation
  
Queries here:
Month-on-month orders per state
Customer distribution by state

1.Month-on-month orders per state
Select c.customer_state,
extract(month from o.order_purchase_timestamp) as month_dt ,
count(*) as total_orders
FROM `targetsql..orders` o
INNER JOIN `targetsql.customers` c
ON o.customer_id = c.customer_id
Group by c.customer_state, month_dt
Order by c.customer_state, month_dt ;

2.Customer distribution by state
Select c.customer_state,  
COUNT(DISTINCT c.customer_unique_id) AS total_customers FROM
`targetsql.customers` c GROUP BY c.customer_state                    
Order by total_customers desc

Insights-
1.Order volumes show clear monthly seasonality rather than a flat distribution.Mid-year months (May–August) experience higher order volumes, indicating peak demand periods.
A noticeable dip around September–October suggests seasonal slowdown in customer purchasing.End-of-year recovery hints at festive or promotional-driven demand.
  
2.One can identify the states with the highest number of customers like SP, and increase promotional activities in such similar states with high order volumes to
capitalize on existing demand and increase sales.
  
Recommendations-
1.The business should see whats working for those states, and try to implement tailored products or so with the states that have lesser customers. 
2.Use targeted promotions and discounts during low-demand months to smooth revenue.

