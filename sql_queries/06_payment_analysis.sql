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
order by num_orders desc

Insights:
1.Credit cards dominate across all months, consistently accounting for the highest number of orders, making them the preferred payment method.
2. UPI and debit card usage grows over time, indicating increasing customer comfort with digital and alternative payment methods.
  Most customers prefer low installment counts (1–3 installments), while very high installment options are used far less frequently.

Recommendations:
1.Prioritize credit card and popular digital payment flows to ensure a smooth and reliable checkout experience.
2.Promote UPI and low-installment options with simple offers or visibility boosts to improve conversion rates.
3.Limit or optimize high installment plans, focusing instead on flexible but short-term payment options that match customer preference.




