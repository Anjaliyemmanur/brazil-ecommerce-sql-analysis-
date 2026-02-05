# brazil-ecommerce-sql-analysis-

## 📌 Project Overview
Target is a globally renowned retail brand headquartered in the United States, known for delivering outstanding value, 
innovation, and an exceptional customer experience. As part of its international operations, Target expanded
its e-commerce presence in Brazil to serve a rapidly growing online customer base.
This project focuses on analyzing Target’s e-commerce operations in Brazil using transactional data covering
**~100,000 orders placed between 2016 and 2018**.
The analysis aims to uncover trends, operational insights, and opportunities for improving customer experience, logistics, and revenue performance.

## 🎯 Business Objective
Assuming the role of a **Data Analyst at Target**, the goal of this analysis is to:
- Extract meaningful insights from historical e-commerce data.
- Identify patterns in customer behavior, sales trends, logistics, and payments.
- Provide **data-driven, actionable recommendations** to improve business performance in Brazil.

## 📂 Dataset Description
The dataset provides a comprehensive view of Target’s Brazilian e-commerce ecosystem and includes information across multiple dimensions:
- **customers** – Customer identifiers and location details (city, state, zip code)
- **geolocation** – Mapping of zip codes to geographical coordinates, cities, and states
- **orders** – Order-level information including purchase timestamps, order status, delivery dates, and estimated delivery dates
- **order_items** – Item-level details such as product price and freight value for each order
- **payments** – Payment method, payment installments, and total payment value per order
- **products** – Product attributes and category information
- **sellers** – Seller identifiers and seller location details
- **order_reviews** – Customer review scores and feedback related to completed orders

**Dataset**: https://drive.google.com/drive/folders/1TGEc66YKbD443nslRi1bWgVd238gJCnb

## 🔍 Key Areas of Analysis
The project is structured into six major analytical modules:

### 1️⃣ Data Understanding & Exploratory Analysis
- Data types and structure of tables
- Order time range analysis
- Customer distribution across cities and states

### 2️⃣ Order Trends & Seasonality
- Year-wise growth trend in number of orders
- Monthly seasonality patterns
- Order distribution by time of day (Dawn, Morning, Afternoon, Night)

### 3️⃣ Geographical Analysis
- Month-on-month order growth across Brazilian states
- Customer concentration and regional distribution

### 4️⃣ Economic Impact Analysis
- Year-over-year growth in order costs (2017 vs 2018)
- Total and average order value per state
- Total and average freight value per state

### 5️⃣ Delivery & Logistics Performance
- Delivery time analysis vs estimated delivery dates
- States with fastest and slowest deliveries.

### 6️⃣ Payment Behavior Analysis
- Month-on-month order trends by payment type
- Analysis of payment installments usage

## 🛠️ Tools & Technologies
- **SQL**, (Joins, CTEs, Window Functions, Aggregations, Date Functions)
-  **Bigquery**- For doing the project
- **GitHub** for version control and project documentation

## Business Interpretation and Insights
- The business shows strong growth over time, with clear seasonality where mid-year months experience higher order volumes.
- Customer demand and revenue are geographically concentrated, with certain states (especially SP) contributing a large share of orders and revenue.
- Purchasing behavior varies by time and region, with afternoons being peak ordering hours and noticeable differences in average order value across states.
- Customers strongly prefer digital and convenient payment methods, especially credit cards and low-installment options.

## Business Actions
- Use historical trends and seasonality to improve inventory planning and demand forecasting, especially for peak months.
- Optimize logistics and delivery capacity in high-demand states while exploring targeted growth strategies in underperforming regions.
- Align marketing campaigns and system operations with peak ordering times to maximize conversions and minimize disruptions.
- Prioritize and enhance popular payment methods and low-installment options to improve checkout experience and customer satisfaction.


