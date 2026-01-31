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
Order by total_customers DESC


