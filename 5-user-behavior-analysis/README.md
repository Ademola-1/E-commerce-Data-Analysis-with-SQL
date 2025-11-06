# User Behavior & Segmentation Analysis

## Business Problem
Customer acquisition is expensive. Retention is where profit lives. Olist needs to understand:
- What percentage of customers return for a second purchase?
- Who are the high-value customers worth retaining?
- Which customer segments need immediate attention to prevent churn?
- How can we increase Customer Lifetime Value (CLV)?

## Key Findings

### 1. Critical Retention Problem: 97% One-Time Buyers

**The Numbers:**
- Total Customers: 93,358
- One-time Buyers: 90,557 (97%)
- Repeat Customers: 2,801 (3%)
- **Repeat Purchase Rate: 3%** (Industry standard: 20-30%)

**What This Means:**
For every 100 customers Olist acquires, 97 never return. This is unsustainable - the company is essentially running a "first purchase only" business model when e-commerce profitability depends on repeat purchases.

**Average Time Between Orders:** 81 days (2.7 months) for the rare customers who do return.

---

### 2. Customer Value Distribution

| Customer Type | Value Segment | Count | Avg Lifetime Value | % of Customers |
|--------------|---------------|-------|-------------------|----------------|
| Loyal Customer (3+ orders) | High Value | 21 | ₹1,574.81 | 0.02% |
| Loyal Customer | Medium Value | 66 | ₹677.71 | 0.07% |
| Loyal Customer | Low Value | 141 | ₹267.72 | 0.15% |
| Repeat Buyer (2 orders) | High Value | 63 | ₹1,541.67 | 0.07% |
| Repeat Buyer | Medium Value | 218 | ₹667.22 | 0.23% |

**Critical Insight:** Only 21 customers (0.02%) are both loyal AND high-value. The company has almost zero customer equity built up.

---

### 3. RFM Segmentation: ₹5.3M Revenue at Risk

| Segment | Customers | % of Base | Total Revenue | % of Revenue | Status |
|---------|-----------|-----------|---------------|--------------|--------|
| **At Risk** | 21,912 | 23.47% | **₹5,306,733** | **34.41%** | 🔴 Critical |
| Loyal Customers | 19,397 | 20.78% | ₹4,452,529 | 28.87% | 🟢 Protect |
| Champions | 14,419 | 15.45% | ₹3,563,448 | 23.11% | 🟡 Nurture |
| Hibernating | 15,259 | 16.34% | ₹847,719 | 5.50% | 🟠 Reactivate |
| Promising | 14,383 | 15.41% | ₹795,016 | 5.15% | 🔵 Develop |

**The Crisis:** 
The "At Risk" segment represents **₹5.3M in annual revenue** (34% of total) from customers who previously spent well but haven't ordered recently. Without intervention, this revenue disappears.

**RFM Methodology:**
- **Recency:** Days since last order (recent = better)
- **Frequency:** Number of orders (more = better)
- **Monetary:** Total amount spent (higher = better)

Customers scored 1-5 on each dimension and segmented based on their profile.

---

## Business Recommendations

### IMMEDIATE PRIORITY: Stop the Revenue Bleed

**1. Launch "At Risk" Win-Back Campaign (Week 1)**
- Target: 21,912 customers representing ₹5.3M revenue
- Tactic: Personalized email with 15% discount code valid for 14 days
- Subject: "We miss you! Here's 15% off your next order"
- Expected win-back rate: 5-10% = ₹265K - ₹530K recovered revenue

**2. Implement Post-Purchase Email Sequence (Week 2)**
- Day 3: Product tips and usage guide
- Day 14: "How are you enjoying [product]?" with cross-sell recommendations
- Day 30: Loyalty discount for second purchase (10% off)
- Goal: Move repeat rate from 3% to 10% (7% improvement = 6,535 additional repeat customers)

**3. Create VIP Program for Champions (Week 3)**
- Target: 14,419 Champions (₹3.56M revenue)
- Benefits: Free shipping, early access to sales, dedicated support
- Goal: Increase purchase frequency from 1.1 to 1.5 orders/period (+36% revenue from best customers)

---

### SHORT-TERM: Build Retention Infrastructure (1-3 Months)

**4. Reactivation Campaign for Hibernating Customers**
- Target: 15,259 customers who spent ₹848K but went dormant
- Tactic: "Come back" campaign with free shipping threshold
- Potential revenue recovery: ₹170K - ₹254K (20-30% reactivation)

**5. Segment-Specific Marketing**
- **Promising customers:** Nurture with educational content, build trust
- **Loyal customers:** Reward programs, exclusive perks
- **Champions:** Referral incentives (turn advocates into acquisition channel)

**6. Optimize Onboarding for First-Time Buyers**
- Currently 97% don't return - this suggests poor first experience
- Implement: Welcome series, product recommendations, satisfaction survey
- Goal: Reduce one-time buyer rate from 97% to 80%

---

### LONG-TERM: Structural Changes (3-6 Months)

**7. Subscription/Auto-Replenishment for Consumables**
- Categories like Health & Beauty, Pet Supplies are natural fits
- Subscriptions increase LTV by 3-5x vs. one-time purchases

**8. Loyalty Points Program**
- Award points on every purchase, redeemable for discounts
- Creates switching cost and encourages repeat purchases

**9. Predictive Churn Model**
- Use machine learning to identify "At Risk" customers BEFORE they churn
- Trigger automated win-back campaigns based on behavior signals

---

## Expected Business Impact

| Initiative | Target Segment | Revenue Impact | Timeline |
|-----------|---------------|----------------|----------|
| Win-back campaign | At Risk (21,912) | +₹265K - ₹530K | Month 1 |
| Post-purchase sequence | All new customers | +₹1.2M annually | Month 2-12 |
| VIP program | Champions (14,419) | +₹1.28M | Month 3-12 |
| Hibernating reactivation | Hibernating (15,259) | +₹170K - ₹254K | Month 2-3 |

**Conservative Total Impact:** ₹2.9M - ₹3.3M additional annual revenue

**Strategic Impact:**
- Increase repeat purchase rate from 3% to 10-15% (3-5x improvement)
- Reduce customer acquisition cost dependency by 40%
- Build sustainable customer equity (loyal customer base)
- Improve unit economics and path to profitability

---

## Technical Approach

**Tools Used:** PostgreSQL, SQL  
**Dataset:** Olist Brazilian E-Commerce (93K+ unique customers, 2016-2018)

**Analysis Methods:**
- Customer Lifetime Value (CLV) calculation
- RFM segmentation (Recency, Frequency, Monetary)
- Cohort retention analysis
- Repeat purchase rate modeling
- Customer value distribution analysis

---

## SQL Queries

All analysis queries are available in the `/sql_queries` folder:

1. **01_customer_segmentation_overview.sql** - Customer type and value distribution
2. **02_repeat_purchase_analysis.sql** - Repeat rate and purchase intervals
3. **03_rfm_segmentation.sql** - RFM scoring and segment assignment
4. **04_cohort_retention_analysis.sql** - Time-based retention tracking

Each query includes detailed comments explaining the business logic and analytical approach.

---

## Key Takeaway

**Olist's biggest problem isn't acquiring customers - it's keeping them.** With a 3% repeat purchase rate and ₹5.3M in "At Risk" revenue, the priority must shift from acquisition to retention. Even a modest improvement in repeat rate (3% → 10%) would add millions in profitable revenue without spending a dollar on new customer acquisition.

---

## About the Analyst

**Mubarak Lawal** - Data Analyst specializing in business analytics and data-driven decision making

Experience analyzing customer behavior, product performance, and revenue optimization across e-commerce and retail sectors. While this portfolio uses e-commerce data, the analytical frameworks apply to any business with customers and transactions.

**Core Skills:** SQL, Python, Power BI, Google Analytics, Statistical Analysis

[Email](mailto:lawalademola71@gmail.com) | [LinkedIn](https://linkedin.com/in/mubarak-lawal) | [Portfolio](https://mubaraklawal.com)

---

[← Back to Main Project](../README.md)
