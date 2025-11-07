# Payment Method & Installment Analysis

## Business Problem
Payment flexibility is critical in Brazilian e-commerce. The country has unique payment behaviors:
- **Credit card installments (parcelas)** - split purchases into 2-24 monthly payments
- **Boleto bancário** - bank slip requiring payment within 7 days
- **Debit cards** - instant payment
- **Vouchers** - promotional credits

Understanding payment preferences helps Olist optimize checkout, increase conversion, and maximize revenue. Key questions:
- Which payment methods drive the most revenue?
- How do installment plans affect order value?
- Do payment methods predict customer loyalty?
- Where are the conversion opportunities?

## Key Findings

### 1. Credit Cards Dominate: 78% of Revenue

**Payment Method Distribution:**

| Payment Method | Orders | Success Rate | Avg Order Value | Total Revenue | Revenue Share | Avg Installments |
|---------------|--------|--------------|-----------------|---------------|---------------|------------------|
| **Credit Card** | 76,505 | 97.12% | ₹163.32 | **₹12,542,084** | **78.34%** | 3.5x |
| Boleto | 19,784 | 97.00% | ₹145.03 | ₹2,869,361 | 17.92% | 1.0x |
| Voucher | 3,866 | 95.16% | ₹65.70 | ₹379,437 | 2.37% | 1.0x |
| Debit Card | 1,528 | 97.19% | ₹142.57 | ₹217,990 | 1.36% | 1.0x |

**Key Insights:**
- 🔴 **Credit cards = 4.4x more revenue than all other methods combined**
- ✅ **97%+ success rates** across all payment types - payment processing works well
- 💰 **Credit cards have highest AOV** (₹163 vs ₹145 boleto, ₹142 debit)
- 📊 **Installments matter** - credit cards average 3.5 installments per order

**Why Credit Cards Win:**
- Flexibility through installments
- Instant approval (vs 7-day boleto window)
- Better fraud protection
- Rewards/cashback incentives

---

### 2. Installments Unlock 3-5x Higher Spending

**Installment Plan Performance (Credit Cards Only):**

| Installments | Orders | % of Orders | Avg Order Value | Insight |
|-------------|--------|-------------|-----------------|---------|
| **1x (No installments)** | 25,407 | **33.14%** | ₹95.87 | Most popular |
| 2x | 12,389 | 16.16% | ₹127.23 | +33% AOV |
| 3x | 10,443 | 13.62% | ₹142.54 | +49% AOV |
| 4x | 7,088 | 9.25% | ₹163.98 | +71% AOV |
| 5x | 5,234 | 6.83% | ₹183.47 | +91% AOV |
| 6x | 3,916 | 5.11% | ₹209.85 | +119% AOV |
| 8x | 4,253 | 5.55% | ₹307.74 | +221% AOV |
| **10x** | **5,315** | **6.93%** | **₹415.09** | **+333% AOV** |
| 15x-24x | 211 | 0.28% | ₹445-₹610 | +364-536% AOV |

**Critical Finding:** The more installments offered, the higher the order value.
- **1x payment**: ₹95.87 average
- **10x installments**: ₹415.09 average (+333%)
- **24x installments**: ₹610.05 average (+536%)

**Why This Matters:**
Installments convert "I can't afford ₹400 today" into "I can afford 10x ₹40 per month." This psychological shift unlocks purchasing power for higher-ticket items.

---

### 3. High-Value Orders Require Installments

**Payment Method Preference by Order Value:**

| Order Value Segment | Credit Card % | Boleto % | Avg Installments (CC) |
|---------------------|--------------|----------|----------------------|
| Low (<₹50) | 69.90% | 21.28% | 1.7x |
| Low-Medium (₹50-100) | 73.31% | 20.90% | 2.7x |
| Medium (₹100-200) | 77.20% | 18.70% | 3.8x |
| High (₹200-500) | 80.44% | 16.73% | 5.2x |
| **Premium (₹500+)** | **81.79%** | **15.89%** | **7.2x** |

**Clear Pattern:**
1. **As order value increases, credit card dominance increases** (70% → 82%)
2. **Boleto share decreases** for high-value orders (21% → 16%)
3. **More installments needed** for higher purchases (1.7x → 7.2x)

**Strategic Insight:** Premium purchases (₹500+) are almost impossible without installments. Without offering 6-10x payment plans, Olist would lose 80%+ of high-value orders.

**Boleto Limitation:** Bank slips don't support installments - explains why boleto share drops for expensive items.

---

### 4. Credit Card Users = Most Valuable Customers

**Customer Behavior by Payment Method:**

| Payment Method | Total Customers | Avg Orders | Avg LTV | Repeat Rate | Avg Installments |
|---------------|----------------|------------|---------|-------------|------------------|
| **Credit Card** | 70,473 | 1.03 | **₹171.00** | **2.89%** | 3.5x |
| Boleto | 18,585 | 1.03 | ₹148.29 | 2.27% | 1.0x |
| Voucher | 2,857 | 1.03 | ₹105.02 | 2.38% | 1.0x |
| **Debit Card** | 1,442 | 1.01 | ₹142.80 | **1.04%** | 1.0x |

**Critical Findings:**
-  **Credit card users have 2.8x higher repeat rate** than debit card users (2.89% vs 1.04%)
-  **Credit card users spend 15% more** over their lifetime (₹171 vs ₹148 boleto)
-  **Debit card users = worst customers** - 1.04% repeat rate (essentially one-time buyers)
-  **Voucher users = medium quality** - 2.38% repeat rate, ₹105 LTV

**Why Credit Card Users Are More Valuable:**
1. **Convenience** - stored payment info = easier repeat purchases
2. **Installment flexibility** - can afford bigger baskets
3. **Financial profile** - credit card holders likely have higher income/spending power
4. **Commitment** - installment plans create ongoing relationship with Olist

**Debit Card Problem:** Only 1.04% return for second purchase - essentially disposable customers.

---

## Business Recommendations

### IMMEDIATE PRIORITY: Maximize Installment Adoption

**Problem:** 33% of credit card orders use 1x payment (₹95 AOV) when installments could unlock ₹200-400+ orders

**Solutions:**

**1. Default to Installment Options at Checkout (Week 1)**
- **Current:** 1x payment is default, customers must click to see installments
- **Recommended:** Show "3x of ₹50" prominently instead of "₹150 total"
- **Psychology:** Monthly amount feels smaller than total price

**Example:**
-  Bad: "Total: ₹300" with small "or pay in installments" link
-  Good: "3x ₹100/month" in large text, with "or ₹300 one-time" below

**Expected Impact:** 
- Shift 10-15% of 1x payments to 3-6x installments
- Increase AOV by 20-30% = ₹750K-₹1.1M additional annual revenue

---

**2. Installment Recommendations Based on Cart Value (Week 2)**
Smart checkout logic:

| Cart Value | Recommended Plan | Display |
|-----------|------------------|---------|
| ₹50-100 | 2x | "2x ₹50/month - No interest!" |
| ₹100-200 | 3x | "3x ₹66/month - No interest!" |
| ₹200-500 | 5-6x | "6x ₹83/month - No interest!" |
| ₹500+ | 10x | "10x ₹100/month - No interest!" |

**Psychology:** Pre-select optimal installment plan to reduce decision fatigue

**Expected Impact:** Reduce cart abandonment by 8-12% = ₹620K-₹930K recovered revenue

---

**3. "Unlock Higher Installments" Campaign (Month 1)**
- Target customers who've used 1-3x installments
- Email: "You're approved for 10x payments! Upgrade your purchase."
- Show premium products they couldn't afford with 3x but CAN with 10x

**Expected Impact:** Convert 5% of low-installment users to higher tiers = ₹400K incremental

---

### HIGH PRIORITY: Optimize Checkout Flow

**4. Reduce Boleto Friction for Small Orders (Month 1-2)**
- **Problem:** Boleto requires 7-day payment window - delays gratification
- **Opportunity:** For orders <₹100, boleto makes sense (cash-based customers)
- **Action:** Simplify boleto checkout, add "pay in 5 minutes at any bank" messaging

**Expected Impact:** Maintain boleto share at 18-20% (don't lose cash-based customers)

---

**5. Phase Out Debit Card Promotion (Month 1)**
- **Problem:** Debit card users have 1.04% repeat rate (worst customers)
- **Action:** Remove debit card from prominent checkout position
- **Why:** Don't optimize for low-LTV payment methods

**Expected Impact:** Shift 30-40% of debit users to credit cards = ₹65K-₹87K LTV improvement

---

**6. Credit Card Incentive Program (Month 2-3)**
- **Offer:** "First purchase with credit card = ₹20 voucher for next order"
- **Target:** Boleto and debit card users
- **Goal:** Convert to higher-value payment method

**Conversion Targets:**
- 10% of boleto users → credit card = 1,858 customers
- Impact: 1,858 × (₹171 LTV - ₹148 LTV) = ₹42.7K additional LTV

---

### STRATEGIC INITIATIVES (Months 3-6)

**7. Premium Installment Tier (6-12 months)**
- **Opportunity:** Only 0.28% of orders use 15-24x installments, but AOV is ₹445-₹610
- **Action:** Partner with credit card issuers for extended plans on electronics, furniture
- **Marketing:** "Buy now, pay over 12 months - No interest!"

**Target Categories:**
- Computers (avg ₹888 - needs 8-12x)
- Home Appliances (avg ₹239 - needs 6-10x)
- Watches & Gifts (avg ₹199 - needs 6x)

**Expected Impact:** 
- Unlock ₹500-₹1,000 purchase category
- Add ₹1.5M-₹2M in premium revenue annually

---

**8. "Installment Calculator" at Product Page (Month 4)**
- Show "from 3x ₹50/month" on every product >₹100
- Reduces checkout surprise, increases add-to-cart rate

**Expected Impact:** 5-8% increase in conversions = ₹775K-₹1.24M

---

**9. Subscription Model with Auto-Installments (Month 6)**
- For consumable categories (Health & Beauty, Pet Supplies)
- "Auto-deliver every month, auto-pay ₹50/month"
- Combines subscription + installment psychology

**Expected Impact:** 
- Lock in recurring revenue
- Increase customer LTV by 2-3x for subscribers

---

## Expected Business Impact

| Initiative | Target Metric | Impact | Timeline | Priority |
|-----------|---------------|---------|----------|----------|
| Default installment display | 1x payment rate | -10-15% shift to 3-6x | Week 1-2 | 🔴 Critical |
| Smart installment recommendations | Cart abandonment | -8-12% reduction | Week 2-3 | 🔴 Critical |
| Unlock higher installments campaign | AOV | +₹400K incremental | Month 1 | 🟡 High |
| Credit card incentive program | Payment method mix | +10% CC adoption | Month 2-3 | 🟡 High |
| Premium installment tier (12x+) | High-value revenue | +₹1.5-₹2M annually | Month 3-6 | 🟠 Medium |
| Product page calculator | Conversion rate | +5-8% = ₹775K-₹1.24M | Month 4 | 🟠 Medium |

**Conservative Total Impact:** ₹3M - ₹4.5M additional annual revenue

**Strategic Impact:**
- **Higher AOV** - installments unlock 3-5x higher spending
- **Better customer quality** - credit card users have 2.8x better repeat rate
- **Competitive advantage** - flexible payments = lower price sensitivity
- **Premium category access** - enables ₹500+ purchases currently out of reach

---

## Key Insights Summary

### The Installment Paradox
**Most customers choose 1x payment (33%), but it limits their spending to ₹95 average. Customers using 10x installments spend ₹415 average (+333%).**

The business challenge isn't "should we offer installments?" but "how do we guide customers to use them?"

### Payment Method Hierarchy
1. **Credit Card with Installments** = Best customers (₹171 LTV, 2.89% repeat rate)
2. **Boleto** = Solid for low-value, cash-based customers (₹148 LTV, 2.27% repeat)
3. **Vouchers** = Promotional tool (₹105 LTV, 2.38% repeat)
4. **Debit Card** = Avoid - worst retention (₹142 LTV, 1.04% repeat)

### The ₹500+ Problem
**82% of premium orders (₹500+) require credit cards with 7.2x installments.** Without flexible payment terms, Olist cannot compete in high-value categories like electronics and appliances.

---

## Technical Approach

**Tools Used:** PostgreSQL, SQL  
**Dataset:** Olist Brazilian E-Commerce (101,686 payment transactions across 4 payment types)

**Analysis Methods:**
- Payment method performance analysis
- Installment plan impact on AOV
- Customer segmentation by payment preference
- Repeat purchase behavior by payment type
- Order value correlation with installment adoption

---

## SQL Queries

All analysis queries are available in the `/sql_queries` folder:

1. **01_payment_method_overview.sql** - Payment type distribution, success rates, and revenue share
2. **02_installment_analysis.sql** - Installment plan adoption and impact on order value
3. **03_payment_by_order_value.sql** - Payment method preferences across order value segments
4. **04_payment_customer_behavior.sql** - Customer lifetime value and loyalty by payment method

Each query includes detailed comments explaining the business logic and analytical approach.

---

## Key Takeaway

**Installments are Olist's secret weapon for growth.** Customers using 10x payments spend 333% more than those paying in full. Yet 33% still choose 1x payment - a massive optimization opportunity.

By making installments the default, recommending optimal payment plans, and expanding into 12-24 month terms for premium categories, Olist can unlock ₹3M-₹4.5M in additional revenue while improving customer quality (credit card users have 2.8x better retention than debit users).

**The game isn't won by offering installments - it's won by making them impossible to ignore.**

---

## About the Analyst

**Mubarak Lawal** - Data Analyst specializing in business analytics and data-driven decision making

Experience analyzing customer behavior, product performance, and revenue optimization across e-commerce and retail sectors. While this portfolio uses e-commerce data, the analytical frameworks apply to any business with customers and transactions.

**Core Skills:** SQL, Python, Power BI, Google Analytics, Statistical Analysis

[Email](mailto:lawalademola71@gmail.com) | [LinkedIn](https://linkedin.com/in/mubarak-lawal) | [Portfolio](https://mubaraklawal.com)

---

[← Back to Main Project](../README.md)
