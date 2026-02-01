**Purpose: Time-based order behavior**
  
Tables used:
orders
customers
  
Queries here:
Year-wise order trend
Monthly seasonality
Orders by time of day (case on hour)

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

3.Orders by time of day (case on hour)
Select case when extract(hour from order_purchase_timestamp) between 0 and 6 then 'Dawn'
when extract(hour from order_purchase_timestamp) between 7 and 12 then 'Mornings'
when extract(hour from order_purchase_timestamp) between 13 and 18 then 'Afternoon'
when extract(hour from order_purchase_timestamp) between 19 and 23 then 'Night' 
end 
as order_time, count(order_id) as number_of_orders
from `targetsql.orders`
group by order_time
order by number_of_orders desc 

**Insights**
1.There is a strong year-on-year growth on orders. There is strong, steep in order increase in the year 2017, and it likely sustained in 2018 as well. 
2.Yes we could see a trend see a seasonal trend in the way the orders are placed, we could see that more orders have been placed in the Peak months of May- Summer, 
  and in rainy seasons- July and August from this place. This pattern can inform inventory management to meet high-demand periods.
3.Afternoon sees the highest order volume, indicating peak customer purchasing activity. Night and morning periods also show strong demand, suggesting customers 
  shop beyond traditional business hours.Dawn has the lowest order count, reflecting minimal customer activity during early hours.


**Recommendations**:
1.Analyze why was there there a sudden spike in orders in 2017.Plan inventory for growth for this pattern of growth.
2.The month - on -month pattern can inform inventory management to meet high-demand periods.
3.Schedule system maintenance and batch jobs during dawn hours to minimize business impact.Align marketing campaigns and flash sales during afternoon and evening peak periods.
  Optimize customer support and logistics staffing during high-order time windows to handle demand efficiently.


