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
- **37% revenue concentration** in São Paulo - dangerous single-market dependency
- **The São Paulo Paradox:** Highest volume (40,500 orders) but worst customer quality (₹147 LTV vs ₹273 in small states)
- **19 "Growth Markets" identified** with 98-99% delivery success and untapped potential
- Small states deliver **67-86% higher customer lifetime value** than São Paulo

**Impact:** ₹2M-₹2.5M incremental revenue through geographic diversification + 30% reduction in concentration risk

[ View Full Analysis →](./1-geographic-market-performance/)

---

### [2. Order Funnel & Delivery Performance](./2-order-funnel-delivery-performance/) 
**Business Question:** Where are we losing customers in the order process?

**Key Insights:**
- **97% delivery success rate** - industry-leading performance
- **₹270K lost revenue** from 1.24% cancellation rate
- **High-value orders fail more** - canceled orders worth 43% more (₹218 vs ₹153)
- **73.8% of time spent in transit** (9.3 days) - biggest bottleneck for improvement
- **São Paulo paradox continues** - fastest delivery (8.8 days) but 50% of all cancellations

**Impact:** ₹150K-₹220K recoverable revenue through cancellation reduction and operational optimization

[ View Full Analysis →](./2-order-funnel-delivery-performance/)

---

### [3. Product-Level Analysis](./3-product-level-analysis/) 
**Business Question:** Which products are winners vs. losers? What should we promote?

**Key Insights:**
- **Watches & Gifts** identified as high-margin winner (lowest shipping cost at 8.42%)
- **Small Appliances** grew **6,140% year-over-year** - rising star category
- **80+ dead stock products** (87-100% never sold) recommended for clearance/delisting
- Cross-sell opportunities in Computer Accessories (81 product combinations)

**Impact:** 12-15% revenue increase through cross-sell optimization and inventory reallocation

[ View Full Analysis →](./3-product-level-analysis/)

---

### [4. Payment Method & Installment Analysis](./4-payment-installment-analysis/) 
**Business Question:** How do payment methods impact conversion and revenue?

**Key Insights:**
- **Credit cards = 78% of revenue** (₹12.5M) - installments unlock purchasing power
- **Installment sweet spot:** 10x payments generate ₹415 AOV (vs ₹95 for 1x payment - **+333%**)
- **Premium orders (₹500+) require 7.2x installments** - 82% use credit cards
- **Credit card users = best customers:** 2.89% repeat rate vs 1.04% for debit card users (**2.8x higher**)

**Impact:** ₹3M-₹4.5M additional revenue by optimizing installment adoption and payment method mix

[ View Full Analysis →](./4-payment-installment-analysis/)

---

### [5. User Behavior & Segmentation Analysis](./5-user-behavior-analysis/) 
**Business Question:** Who are our best customers and how do we retain them?

**Key Insights:**
- **97% one-time buyers** - critical retention crisis (3% repeat rate vs 20-30% industry standard)
- **₹5.3M revenue at risk** from 21,912 "At Risk" customers (34% of total revenue)
- Only **21 customers (0.02%)** are both loyal AND high-value
- Average **81 days between repeat purchases** for the rare customers who return

**Impact:** ₹2.9M-₹3.3M additional annual revenue through targeted retention initiatives

[ View Full Analysis →](./5-user-behavior-analysis/)

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

**Data Volume:**
- 99,441 orders
- 93,358 unique customers
- 32,951 products
- 27 states, 4,000+ cities
- ₹15.4M in transaction value

---

## Business Impact Summary

| Metric | Expected Improvement | Analysis Source | Timeline |
|--------|---------------------|-----------------|----------|
| Revenue Growth | +₹11M - ₹14M annually | All 5 case studies combined | 12 months |
| Geographic Diversification | -30% concentration risk | Geographic Analysis | 12 months |
| Order Cancellation Rate | -35% (1.24% → 0.8%) | Order Funnel Analysis | 6 months |
| Product Margin | +8-10% | Product Analysis | 3-6 months |
| Payment AOV | +20-30% | Payment Analysis | 1-3 months |
| Customer Retention | +3-5x repeat rate | User Behavior Analysis | 6-12 months |
| Warehouse Efficiency | +20% space freed | Product + Geographic | 3 months |

**Conservative Annual Revenue Impact:** ₹11M - ₹14M additional revenue + significant risk reduction

**Key Insights Across All Analyses:**
1. **São Paulo Paradox** - Highest volume, worst customer quality (appears in 3 case studies)
2. **Retention Crisis** - 97% one-time buyers across all segments
3. **Installment Opportunity** - Unlock 3-5x higher spending through payment flexibility
4. **Small Markets, Big Value** - Lower volume regions deliver superior unit economics
5. **Operational Excellence** - 97%+ success rates prove infrastructure works, need customer acquisition

---

## Skills Demonstrated

**SQL Proficiency:**
- Complex joins across 9 tables
- Common Table Expressions (CTEs) and subqueries
- Window functions (NTILE, ROW_NUMBER, LEAD, LAG)
- Aggregate functions with CASE statements
- Date/time manipulation and cohort analysis
- Performance optimization for large datasets

**Business Analytics:**
- Revenue and profitability analysis
- Customer segmentation (RFM analysis)
- Cohort retention analysis
- Market basket analysis (cross-sell)
- Funnel optimization
- Geographic market analysis
- Payment method optimization

**Data Storytelling:**
- Translating complex data into clear business recommendations
- Quantifying business impact (₹11M-₹14M opportunity identified)
- Identifying counterintuitive insights (São Paulo Paradox)
- Prioritizing actions by ROI

**Problem Solving:**
- Root cause analysis (why 97% don't return?)
- Opportunity identification (installments unlock 3-5x spending)
- Risk assessment (37% concentration in one state)
- Strategic planning (geographic diversification roadmap)

---

## Project Highlights

**What makes this portfolio stand out:**

1. **Real Business Impact** - Every analysis ends with ₹-quantified recommendations, not just "interesting insights"

2. **Interconnected Insights** - The São Paulo Paradox appears across multiple case studies, showing deep analytical thinking

3. **Counterintuitive Findings** - "Biggest market has worst customers" challenges conventional wisdom

4. **Comprehensive Coverage** - Product, customer, operations, payments, geography - full business view

5. **Action-Oriented** - Each case study includes immediate (Week 1), short-term (Months 1-3), and long-term (Months 3-6) recommendations

---

## Repository Structure
```
E-commerce-Data-Analysis-with-SQL/
├── 1-geographic-market-performance/
│   ├── README.md
│   └── sql_queries/
│       ├── 01_revenue_by_geography.sql
│       ├── 02_market_concentration.sql
│       ├── 03_customer_value_by_region.sql
│       └── 04_expansion_opportunities.sql
├── 2-order-funnel-delivery-performance/
│   ├── README.md
│   └── sql_queries/
│       ├── 01_order_status_funnel.sql
│       ├── 02_delivery_time_analysis.sql
│       ├── 03_cancellation_analysis.sql
│       └── 04_delivery_performance_by_state.sql
├── 3-product-level-analysis/
│   ├── README.md
│   └── sql_queries/
│       ├── 01_product_performance_overview.sql
│       ├── 02_product_cross_sell.sql
│       ├── 03_product_trends.sql
│       └── 04_slow_moving_products.sql
├── 4-payment-installment-analysis/
│   ├── README.md
│   └── sql_queries/
│       ├── 01_payment_method_overview.sql
│       ├── 02_installment_analysis.sql
│       ├── 03_payment_by_order_value.sql
│       └── 04_payment_customer_behavior.sql
├── 5-user-behavior-analysis/
│   ├── README.md
│   └── sql_queries/
│       ├── 01_customer_segmentation_overview.sql
│       ├── 02_repeat_purchase_analysis.sql
│       ├── 03_rfm_segmentation.sql
│       └── 04_cohort_retention_analysis.sql
└── README.md
```

---

## About Me

**Mubarak Lawal** - Data Analyst specializing in business analytics and data-driven decision making

Experience analyzing customer behavior, product performance, and revenue optimization across e-commerce and retail sectors. While this portfolio uses e-commerce data, the analytical frameworks apply to any business with customers and transactions.

**Core Skills:** SQL, Python, Power BI, Google Analytics, Statistical Analysis

**Certifications:** Certified Data Analyst (DataCamp), 3MTT Data Analysis and Visualization

[Email](mailto:lawalademola71@gmail.com) | [LinkedIn](https://linkedin.com/in/mubarak-lawal) | [Portfolio](https://mubaraklawal.com)

Looking for a data analyst who can drive business growth through insights? Let's connect.

---

## How to Use This Repository

**For Recruiters:**
- Start with any case study README for full business context
- SQL queries are heavily commented for technical review
- Each analysis includes quantified business impact

**For Fellow Analysts:**
- All SQL queries are production-ready and well-documented
- Analytical frameworks are reusable across industries
- Feel free to fork and adapt for your own projects

**To Reproduce:**
1. Download [Olist dataset from Kaggle](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)
2. Set up PostgreSQL database using schema in `/setup`
3. Run queries in numbered order within each case study folder

---

## License
This project uses publicly available data from Olist. Analysis and insights are original work.

**Last Updated:** November 2025

---

**⭐ Star this repo if you found it helpful!**
