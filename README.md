# E-Commerce Data Analysis with SQL
A comprehensive portfolio showcasing advanced SQL analytics on a real-world Brazilian e-commerce dataset (100K+ orders)

## Project Overview
This project demonstrates end-to-end data analysis capabilities using SQL to solve critical business problems for Olist, a Brazilian e-commerce platform. Through 5 in-depth case studies, I extract actionable insights that drive revenue growth, optimize operations, and improve customer retention.

**Dataset:** [Olist Brazilian E-Commerce Public Dataset](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce) (2016-2018)  
**Tools:** PostgreSQL, SQL  
**Key Skills:** Business Analytics, Data-Driven Decision Making, SQL Query Optimization

---

## Case Studies

### [1. Geographic Market Performance](./1-geographic-market-performance/)
**Business Question:** Which regions drive the most revenue? Where should we expand next?

**Key Insights:**
- Identifies top-performing states and cities by revenue and order volume
- Analyzes delivery performance by geography
- Recommends strategic market expansion opportunities

**Impact:** Optimize warehouse locations and regional marketing spend

---

### [2. Order Funnel & Delivery Performance](./2-order-funnel-delivery-performance/)
**Business Question:** Where are we losing customers in the order process?

**Key Insights:**
- Maps the complete order lifecycle (placed → approved → shipped → delivered)
- Calculates drop-off rates and delivery time analysis
- Identifies operational bottlenecks causing cancellations

**Impact:** Reduce order cancellation rate by 15-20%

---

### [3. Product-Level Analysis](./3-product-level-analysis/) **[COMPLETE]**
**Business Question:** Which products are winners vs. losers? What should we promote?

**Key Insights:**
- Watches & Gifts identified as high-margin winner (lowest shipping cost at 8.42%)
- Small Appliances grew 6,140% year-over-year (rising star category)
- 80+ dead stock products recommended for clearance/delisting

**Impact:** 12-15% revenue increase through cross-sell optimization and inventory reallocation

[View Full Analysis →](./3-product-level-analysis/)

---

### [4. Payment Method & Installment Analysis](./4-payment-installment-analysis/)
**Business Question:** How do payment methods impact conversion and revenue?

**Key Insights:**
- Analyzes credit card vs. boleto (local payment method) performance
- Studies installment plans and their effect on Average Order Value
- Identifies payment friction points causing cart abandonment

**Impact:** Increase conversion rate by optimizing payment options

---

### [5. User Behavior & Segmentation Analysis](./5-user-behavior-analysis/)
**Business Question:** Who are our best customers and how do we retain them?

**Key Insights:**
- Customer Lifetime Value (CLV) calculation
- RFM segmentation (Recency, Frequency, Monetary)
- Repeat purchase rate and retention cohort analysis

**Impact:** 25% increase in customer retention through targeted campaigns

[View Full Analysis →](./5-user-behavior-analysis/)

---

## Technical Setup

### Database Setup
```sql
-- Create database and schema
CREATE DATABASE ecommerce_analysis;
CREATE SCHEMA olist;
```

### Dataset Structure
9 interconnected tables with 100K+ orders:
- `orders` - Order lifecycle data
- `order_items` - Product details per order
- `order_payments` - Payment methods and values
- `order_reviews` - Customer satisfaction scores
- `customers` - Customer demographics
- `products` - Product catalog
- `sellers` - Seller information
- `geolocation` - Geographic coordinates

---

## Business Impact Summary

| Metric | Expected Improvement | Analysis Source |
|--------|---------------------|-----------------|
| Revenue Growth | +12-15% | Cross-sell optimization |
| Gross Margin | +8-10% | Shipping cost negotiation |
| Conversion Rate | +15-20% | Payment method optimization |
| Customer Retention | +25% | RFM segmentation & targeting |
| Warehouse Efficiency | +20% space | Dead stock removal |

---

## Skills Demonstrated
- **SQL Proficiency:** Complex joins, CTEs, window functions, subqueries
- **Business Analytics:** Revenue analysis, cohort analysis, funnel optimization
- **Data Storytelling:** Translating data into actionable recommendations
- **Problem Solving:** Identifying root causes and proposing data-driven solutions

---

## About Me
**Mubarak Lawal** - Data Analyst specializing in business analytics and data-driven decision making

Experience analyzing customer behavior, product performance, and revenue optimization. While this portfolio uses e-commerce data, the analytical frameworks apply to any business with customers and transactions.

**Core Skills:** SQL, Python, Power BI, Excel, Google Analytics, Statistical Analysis

[Email](mailto:your-email@example.com) | [LinkedIn](https://linkedin.com/in/yourprofile) | [Portfolio](https://mubaraklawal.com)

---

## License
This project uses publicly available data from Olist. Analysis and insights are original work.

**Last Updated:** November 2025
