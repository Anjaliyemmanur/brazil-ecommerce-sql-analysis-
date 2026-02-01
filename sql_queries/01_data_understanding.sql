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
on c.customer_id=o.customer_id 

Insights:
Customer IDs are stored as text rather than numbers, as they are used only to uniquely identify customers.
The zip code field is numeric in format but represents a geographic label.
City and state are stored as text fields, which may introduce minor inconsistencies in naming locations.
The data set spans around 2.1 years of orders. This can give some historial insights into customer behavior, repeated purchases etc, buying trends and seasonality.

💡 Recommendations
Use customer_unique_id when doing customer-level analysis to avoid double counting.
Treat zip codes as categories for grouping or mapping, not as numeric values.
Perform customer cohort analysis to understand customer behavior across different segments and evaluate recency, frequency, and purchasing patterns.
Customer base is geographically diverse.
Orders are from diverse locations, which means there is wide market reach.
Indicates potential presence of regional demand patterns.









