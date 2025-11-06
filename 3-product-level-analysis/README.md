# Product-Level Analysis: Identifying Winners & Losers

## Business Problem
Olist manages 32,000+ products across 70+ categories. With limited marketing budget and warehouse space, the merchandising team needs to know:
- Which products drive the most revenue and profit?
- Which categories are growing vs. declining?
- What products should be bundled together?
- Which products are dead stock that should be discontinued?

## Key Findings

### 1. Top Revenue Drivers
**Health & Beauty** leads with 9.33% of total revenue (₹1.23M), but shipping costs are eating 14.51% of revenue - a margin concern.

**Watches & Gifts** is the hidden champion:
- Average price: ₹199 (vs ₹93 for Bed/Bath/Table)
- Lowest shipping cost: 8.42% of revenue
- High margin winner

**Top 5 Categories by Revenue:**

| Category | Orders | Revenue | Avg Price | Shipping Cost % |
|----------|--------|---------|-----------|-----------------|
| Health & Beauty | 8,647 | ₹1,233,132 | ₹130.28 | 14.51% |
| Watches & Gifts | 5,495 | ₹1,166,177 | ₹199.04 | 8.42% |
| Bed Bath Table | 9,272 | ₹1,023,435 | ₹93.44 | 19.72% |
| Sports Leisure | 7,530 | ₹954,853 | ₹113.25 | 17.11% |
| Computers Accessories | 6,530 | ₹888,725 | ₹116.26 | 16.20% |

### 2. Explosive Growth Categories (2017 vs 2018)

| Category | 2017 Revenue | 2018 Revenue | Growth % | Status |
|----------|-------------|--------------|----------|--------|
| Small Appliances (Ovens/Coffee) | ₹735 | ₹45,855 | +6,140% | High Growth |
| Diapers & Hygiene | ₹76 | ₹1,290 | +1,597% | High Growth |
| Arts & Craftmanship | ₹152 | ₹1,662 | +994% | High Growth |
| Construction Tools (Lights) | ₹4,054 | ₹35,904 | +786% | High Growth |
| Construction Tools (Construction) | ₹19,222 | ₹122,887 | +539% | High Growth |

**Why this matters:** These categories went from low performers to top sellers. Early investment in rising categories yields exponential returns.

### 3. Cross-Sell Opportunities
Products frequently bought together:

| Category Pair | Times Bought Together | Unique Product Pairs |
|---------------|----------------------|---------------------|
| Computer Accessories | 81 | 8 |
| Garden Tools | 46 | 6 |
| Auto Parts | 28 | 3 |

**Recommendation:** Implement "Frequently Bought Together" feature for these categories to increase Average Order Value by estimated 15-20%.

### 4. Dead Stock Crisis

| Category | Total Products | Never Sold | Dead Stock % | Action Needed |
|----------|---------------|------------|--------------|---------------|
| Security & Services | 2 | 0 | 100% | **DELIST** |
| Arts & Craftmanship | 19 | 0 | 89% | **Clearance Sale** |
| Fashion (Male Clothing) | 95 | 0 | 87% | **Clearance Sale** |
| DVDs/Blu-ray | 48 | 0 | 81% | **Phase Out** |
| Fashion (Shoes) | 173 | 0 | 77% | **Review Pricing** |

**Impact:** 80+ products with zero or single sales are tying up warehouse space and capital.

## Business Recommendations

### Immediate Actions (0-30 days):
1. **Delist Security & Services** - 100% failure rate, zero sales
2. **Launch 50% clearance sale** for Fashion (Male) and DVDs to clear inventory
3. **Negotiate shipping rates** with carriers for Health & Beauty (reduce 14.51% cost to 10% target)

### Short-term (1-3 months):
4. **Increase marketing budget by 30%** for Small Appliances and Construction Tools (proven high-growth categories)
5. **Create product bundles** for Computer Accessories and Garden Tools based on cross-sell data
6. **Implement cross-sell recommendations** on product pages to boost Average Order Value

### Long-term Strategy (3-6 months):
7. **Expand Watches & Gifts** inventory by 25% (high margin, low shipping cost, premium positioning)
8. **Review Fashion merchandising strategy** - 173 shoe products with 77% dead stock suggests wrong product mix or pricing
9. **Automate dead stock alerts** - flag products with fewer than 2 sales in 90 days for immediate action

## Expected Impact

| Metric | Expected Improvement | Timeline |
|--------|---------------------|----------|
| Revenue increase | +12-15% | 3-6 months |
| Gross margin improvement | +8-10% | 1-3 months |
| Warehouse space freed | +20% | 1-2 months |
| ROI on marketing spend | 3-5x | 3-6 months |
| Average Order Value | +15-20% | 2-4 months |

**Conservative estimate:** ₹2-3M additional annual revenue through better inventory allocation and cross-sell optimization.

## Technical Approach

**Tools Used:** PostgreSQL, SQL  
**Dataset:** Olist Brazilian E-Commerce (100K+ orders, 32K+ products, 2016-2018)

**Analysis Methods:**
- Revenue contribution and margin analysis
- Year-over-year growth trending
- Market basket analysis for cross-sell opportunities
- Inventory velocity calculations
- Cohort analysis for category performance

## SQL Queries

All analysis queries are available in the `/sql_queries` folder:

1. **01_product_performance_overview.sql** - Revenue and margin analysis by category
2. **02_product_cross_sell.sql** - Market basket analysis for products bought together
3. **03_product_trends.sql** - Year-over-year growth trends and category lifecycle
4. **04_slow_moving_products.sql** - Dead stock identification and inventory velocity

Each query includes detailed comments explaining the business logic and analytical approach.

---

## About the Analyst

**Mubarak Lawal** - Data Analyst specializing in business analytics and data-driven decision making

Experience analyzing customer behavior, product performance, and revenue optimization. While this portfolio uses e-commerce data, the analytical frameworks apply to any business with customers and transactions.

**Core Skills:** SQL, Python, Power BI, Google Analytics, Statistical Analysis

[Email](mailto:lawalademola71@gmail.com) | [LinkedIn](https://linkedin.com/in/mubarak-lawal) | [Portfolio](https://mubaraklawal.com)

---

[← Back to Main Project](../README.md)
