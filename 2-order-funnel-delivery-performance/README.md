# Order Funnel & Delivery Performance Analysis

## Business Problem
E-commerce success depends on fulfilling orders efficiently. Getting an order is just the beginning - delivering it successfully determines customer satisfaction and repeat business. Olist needs to understand:
- Where are orders failing in the fulfillment process?
- How fast are we delivering compared to estimates?
- Which regions have delivery challenges?
- What's the financial impact of order cancellations?

## Key Findings

### 1. Strong Fulfillment Performance: 97% Success Rate

**Order Status Breakdown:**

| Status | Orders | % of Total | Avg Order Value | Total Value | Category |
|--------|--------|------------|-----------------|-------------|----------|
| Delivered | 100,756 | 96.99% | ₹153.07 | ₹15,422,462 | Success |
| Shipped (In Transit) | 1,166 | 1.12% | ₹151.98 | ₹177,214 | In Transit |
| Canceled | 664 | 0.64% | ₹215.75 | ₹143,256 | Lost Revenue |
| Unavailable | 649 | 0.62% | ₹194.88 | ₹126,480 | Lost Revenue |
| Processing/Other | 651 | 0.63% | ₹214.21 | ₹139,461 | Processing |

**Key Insight:** Olist maintains a 97% delivery success rate, which is excellent for e-commerce. However, the 1.24% cancellation rate represents ₹269,735 in lost revenue annually.

---

### 2. Delivery Time Breakdown: 12.6 Days Average

**Fulfillment Timeline:**

| Stage | Average Time | % of Total Time |
|-------|-------------|-----------------|
| Order Approval | 0.4 days | 3.2% |
| Handoff to Carrier | 2.8 days | 22.2% |
| In Transit | 9.3 days | 73.8% |
| **Total Delivery Time** | **12.6 days** | **100%** |

**Performance Metrics:**
- Total Delivered Orders: 96,470
- Average Delivery Time: 12.6 days
- Delivery timing: Majority delivered early vs. estimate

**Critical Finding:** 73.8% of delivery time is spent in transit. This is the primary bottleneck and represents the biggest opportunity for improvement.

---

### 3. Cancellation Analysis: ₹270K Lost Revenue

**Cancellation Impact:**

| Metric | Value |
|--------|-------|
| Total Canceled Orders | 1,234 |
| Total Orders | 99,441 |
| Cancellation Rate | 1.24% |
| Lost Revenue | ₹269,735 |
| Avg Canceled Order Value | ₹218.59 |
| Avg Delivered Order Value | ₹153.07 |

**Critical Insight:** Canceled orders have **43% higher average value** (₹218.59 vs ₹153.07) than successful orders. Olist is losing its most valuable transactions.

**Why This Matters:** The customers willing to spend more are the ones experiencing failures. This suggests:
- Higher-value orders may contain unavailable items
- Premium products have inventory/logistics issues
- High-spending customers have higher expectations that aren't being met

---

### 4. Geographic Performance: São Paulo Drives Volume AND Problems

**Top 5 States by Order Volume:**

| State | Total Orders | Delivered | Failed | Success Rate | Avg Delivery Days |
|-------|-------------|-----------|--------|--------------|-------------------|
| SP (São Paulo) | 41,120 | 40,501 | 619 | 98.49% | 8.8 days |
| RJ (Rio de Janeiro) | 12,504 | 12,350 | 154 | 98.77% | 15.4 days |
| MG (Minas Gerais) | 11,493 | 11,354 | 139 | 98.79% | 12.0 days |
| RS (Rio Grande do Sul) | 5,394 | 5,345 | 49 | 99.09% | 15.3 days |
| PR (Paraná) | 4,985 | 4,923 | 62 | 98.76% | 12.0 days |

**Cancellation Concentration:**

| State | Canceled Orders | % of All Cancellations | Lost Revenue |
|-------|----------------|------------------------|--------------|
| SP | 619 | 50.16% | ₹119,291 |
| RJ | 154 | 12.48% | ₹28,385 |
| MG | 139 | 11.26% | ₹28,797 |
| PR | 62 | 5.02% | ₹16,503 |
| RS | 49 | 3.97% | ₹13,095 |

**Key Findings:**
- **SP is both the best and worst performer:** Fastest delivery (8.8 days) BUT 50% of all cancellations
- **SP represents ₹119K in lost revenue** - nearly half of all cancellation losses
- **Regional delivery disparity:** SP delivers 75% faster than RJ (8.8 vs 15.4 days)

---

## Business Recommendations

### IMMEDIATE ACTIONS (Week 1-2)

**1. Investigate São Paulo Cancellations**
- **Why:** SP has 619 cancellations (50% of total) costing ₹119K
- **Action:** Deep-dive analysis into SP cancellation reasons (inventory, logistics, customer behavior)
- **Expected Impact:** Reducing SP cancellations by 20% = ₹24K recovered revenue

**2. Implement Cancellation Prevention System**
- **Trigger:** Alert when high-value orders (>₹200) enter "processing" state for >24 hours
- **Action:** Proactive customer communication + expedited fulfillment
- **Expected Impact:** Save 10-15% of at-risk high-value orders = ₹27K-₹40K annually

**3. Optimize Carrier Selection by Region**
- **Why:** 9.3 days in transit (74% of total time) is the bottleneck
- **Action:** Test alternative carriers in slow regions (RJ, RS - both 15+ days)
- **Expected Impact:** Reduce delivery time by 2-3 days in slower regions

---

### SHORT-TERM IMPROVEMENTS (1-3 Months)

**4. Inventory Management for High-Value Products**
- **Why:** Canceled orders worth 43% more suggests stock issues on premium items
- **Action:** Implement safety stock for products with AOV >₹200
- **Expected Impact:** Reduce "unavailable" status from 649 to <400 orders

**5. Regional Fulfillment Centers**
- **Opportunity:** RJ and RS both average 15+ days (vs SP's 8.8 days)
- **Action:** Open satellite warehouses in RJ (serves 12,504 orders) and RS (5,394 orders)
- **Expected Impact:** 
  - Reduce delivery time by 40-50% in these regions
  - Improve customer satisfaction scores
  - Reduce regional cancellations

**6. Automated Delivery Updates**
- **Action:** SMS/Email updates at each stage (approved → shipped → out for delivery)
- **Why:** Reduces "where's my order?" anxiety that leads to cancellations
- **Expected Impact:** 5-10% reduction in cancellations = ₹13K-₹27K saved

---

### LONG-TERM STRATEGIC INITIATIVES (3-6 Months)

**7. Predictive Cancellation Model**
- **Build ML model** to predict cancellation risk based on:
  - Order value (>₹200 = higher risk)
  - Customer location
  - Product category
  - Time in "processing" state
- **Intervention:** Auto-escalate at-risk orders for priority handling
- **Expected Impact:** 20-30% reduction in cancellations = ₹54K-₹81K saved

**8. Carrier Performance Scorecard**
- **Track:** On-time delivery rate, average transit time, damage rate by carrier
- **Action:** Negotiate SLAs with carriers, switch underperformers
- **Expected Impact:** Improve average delivery time from 12.6 to 10 days

**9. Premium Fulfillment Tier**
- **Target:** High-value orders (>₹200) that currently fail at higher rates
- **Offer:** Guaranteed 7-day delivery, priority inventory allocation
- **Expected Impact:** Reduce high-value cancellations by 50% = ₹67K saved

---

## Expected Business Impact

| Initiative | Target Metric | Impact | Timeline | Status Priority |
|-----------|---------------|---------|----------|-----------------|
| SP cancellation investigation | Cancellation rate | -20% in SP = ₹24K | Week 1-2 | 🔴 Critical |
| High-value order alerts | At-risk orders | ₹27-40K saved | Week 1-2 | 🔴 Critical |
| Alternative carriers (RJ/RS) | Delivery time | -2 to 3 days | Month 1-2 | 🟡 High |
| Inventory safety stock | Unavailability | -38% unavailable status | Month 1-3 | 🟡 High |
| Regional fulfillment centers | Regional delivery speed | -40-50% delivery time | Month 3-6 | 🟠 Medium |
| Predictive cancellation model | Overall cancellation rate | ₹54-81K saved | Month 3-6 | 🟠 Medium |

**Conservative Total Impact:** ₹150K - ₹220K additional annual revenue from reduced cancellations

**Strategic Impact:**
- Reduce cancellation rate from 1.24% to <0.8% (35% improvement)
- Decrease average delivery time from 12.6 to 10 days (20% faster)
- Improve customer satisfaction and repeat purchase rates
- Build competitive advantage through fulfillment excellence

---

## Technical Approach

**Tools Used:** PostgreSQL, SQL  
**Dataset:** Olist Brazilian E-Commerce (99K+ orders, 2016-2018)

**Analysis Methods:**
- Order status funnel analysis
- Delivery time decomposition (approval → carrier → transit → delivery)
- Geographic performance benchmarking
- Cancellation root cause analysis
- Revenue impact quantification

---

## SQL Queries

All analysis queries are available in the `/sql_queries` folder:

1. **01_order_status_funnel.sql** - Order status distribution and success rates
2. **02_delivery_time_analysis.sql** - Delivery timeline breakdown and performance metrics
3. **03_cancellation_analysis.sql** - Cancellation rates, financial impact, and geographic patterns
4. **04_delivery_performance_by_state.sql** - Regional delivery performance comparison

Each query includes detailed comments explaining the business logic and analytical approach.

---

## Key Takeaway

**Olist's 97% delivery success rate is excellent**, but there's a hidden ₹270K revenue opportunity in the details. The cancellation pattern reveals a counterintuitive insight: **higher-value orders fail at disproportionate rates**. By targeting São Paulo's 619 cancellations (50% of failures) and implementing proactive systems for high-value orders, Olist can recover ₹150K-₹220K annually while improving customer experience.

The 9.3-day transit time represents 74% of total delivery time - this is where operational excellence will be won or lost.

---

## About the Analyst

**Mubarak Lawal** - Data Analyst specializing in business analytics and data-driven decision making

Experience analyzing customer behavior, product performance, and revenue optimization across e-commerce and retail sectors. While this portfolio uses e-commerce data, the analytical frameworks apply to any business with customers and transactions.

**Core Skills:** SQL, Python, Power BI, Google Analytics, Statistical Analysis

[Email](mailto:lawalademola71@gmail.com) | [LinkedIn](https://linkedin.com/in/mubarak-lawal) | [Portfolio](https://mubaraklawal.com)

---

[← Back to Main Project](../README.md)
