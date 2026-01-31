**Purpose: Time-based order behavior**
  
Tables used:
orders
customers
  
Queries here:
Year-wise order trend
Monthly seasonality
Orders by time of day (CASE on hour)

1.Is there a growing trend in the no. of orders placed over the past years? 
Select year, count(order_id) as no_of_orders from (Select extract(Year from order_purchase_timestamp) as year, 
order_id from `targetsql.orders`)
group by year
order by year asc

2.Monthly seasonality
Can we see some kind of monthly seasonality in terms of the no. of orders being placed?
Select extract(month from order_purchase_timestamp) month,count(*) as no_of_orders from `targetsql.orders`
group by month
order by month asc

3.Orders by time of day (CASE on hour)
Select case when extract(hour from order_purchase_timestamp) between 0 and 6 then 'Dawn'
when extract(hour from order_purchase_timestamp) between 7 and 12 then 'Mornings'
when extract(hour from order_purchase_timestamp) between 13 and 18 then 'Afternoon'
when extract(hour from order_purchase_timestamp) between 19 and 23 then 'Night' 
end 
as order_time, count(order_id) as number_of_orders
from `targetsql.orders`
group by order_time
order by number_of_orders desc 


