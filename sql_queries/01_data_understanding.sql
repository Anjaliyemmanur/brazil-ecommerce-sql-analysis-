**Purpose: To Understand data structure & coverage**
  
Tables used:
customers
orders
geolocation

1.Data type of all columns in the “customers” table.    
Select column_name,data_type from
targetsql.INFORMATION_SCHEMA.COLUMNS 
where table_name='customers'

2.Get the time range between which the orders were placed.
 SELECT MIN(order_purchase_timestamp) as Min_order_time,
        MAX(order_purchase_timestamp) as Max_order_time,
        FROM `targetsql.orders`

3.Count the Cities & States of customers who ordered during the given period.
Select count(distinct c.customer_city) as count_of_cities, 
count(distinct c.customer_state) as count_of_states 
from `targetsql.customers` c 
inner join `targetsql.orders` o 
on c.customer_id=o.customer_id ;







