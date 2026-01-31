**Purpose: Customer payment behavior**

Tables used:
payments
orders

Queries here:
Month-on-month orders by payment type
Orders by installment count

1.Month-on-month orders by payment type
Select extract(year from o.order_purchase_timestamp) as year,
extract(month from o.order_purchase_timestamp) as month,
p.payment_type, count(distinct o.order_id) as number_orders
from targetsql.orders o 
join targetsql.payments p on o.order_id = p.order_id
group by year, month, p.payment_type
order by year, month, p.payment_type;

2.Select payment_installments AS installments,
count(order_id) as num_orders,
from `targetsql.payments`
where payment_installments >= 1
group by payment_installments
order by num_orders DESC


