# Product-Level Analysis: Identifying Winners & Losers

## 📊 Business Problem
Olist manages 32,000+ products across 70+ categories. With limited marketing budget and warehouse space, the merchandising team needs to know:
- Which products drive the most revenue and profit?
- Which categories are growing vs. declining?
- What products should be bundled together?
- Which products are dead stock that should be discontinued?

## 🎯 Key Findings

### 1. Top Revenue Drivers
**Health & Beauty** leads with 9.33% of total revenue (₹1.23M), but shipping costs are eating 14.51% of revenue - a margin concern.

**Watches & Gifts** is the hidden champion:
- Average price: ₹199 (vs ₹93 for Bed/Bath/Table)
- Lowest shipping cost: 8.42% of revenue
- High margin winner

### 2. Explosive Growth Categories (2017 vs 2018)
| Category | 2017 Revenue | 2018 Revenue | Growth % |
|----------|-------------|--------------|----------|
| Small Appliances (Ovens/Coffee) | ₹735 | ₹45,855 | **+6,140%** |
| Diapers & Hygiene | ₹76 | ₹1,290 | **+1,597%** |
| Construction Tools (Lights) | ₹4,054 | ₹35,904 | **+786%** |

**Why this matters:** These categories went from low performers to top sellers. Early investment in rising categories yields exponential returns.

### 3. Cross-Sell Opportunities
Products frequently bought together:
- **Computer Accessories**: 81 unique product combinations (8 pairs)
- **Garden Tools**: 46 combinations (6 pairs)
- **Auto Parts**: 28 combinations (3 pairs)

**Recommendation:** Implement "Frequently Bought Together" feature for these categories to increase Average Order Value by estimated 15-20%.

### 4. Dead Stock Crisis
| Category | Total Products | Dead Stock % | Action Needed |
|----------|---------------|--------------|---------------|
| Security & Services | 2 | 100% | **DELIST** |
| Fashion (Male Clothing) | 95 | 87% | **Clearance Sale** |
| DVDs/Blu-ray | 48 | 81% | **Phase Out** |
| Fashion (Shoes) | 173 | 77% | **Review Pricing** |

**Impact:** 80+ products with zero or single sales are tying up warehouse space and capital.

## 💡 Business Recommendations

### Immediate Actions (0-30 days):
1. **Delist Security & Services** - 100% failure rate
2. **Launch 50% clearance sale** for Fashion (Male) and DVDs
3. **Negotiate shipping rates** with carriers for Health & Beauty (reduce 14.51% cost)

### Short-term (1-3 months):
4. **Increase marketing budget** for Small Appliances and Construction Tools (+786% growth trend)
5. **Create product bundles** for Computer Accessories and Garden Tools
6. **Implement cross-sell recommendations** on product pages

### Long-term Strategy (3-6 months):
7. **Expand Watches & Gifts** inventory (high margin, low shipping cost)
8. **Review Fashion merchandising** - 173 shoe products with 77% dead stock suggests wrong product mix or pricing
9. **Automate dead stock alerts** - flag products with <2 sales in 90 days

## 📈 Expected Impact
- **Revenue increase**: 12-15% from cross-sell optimization
- **Margin improvement**: 8-10% from shipping cost negotiation
- **Warehouse efficiency**: 20% space freed by removing dead stock
- **ROI on marketing**: 3-5x by focusing on high-growth categories

## 🛠️ Technical Approach
- **Tools**: PostgreSQL, SQL
- **Dataset**: Olist Brazilian E-Commerce (100K+ orders, 2016-2018)
- **Methods**: 
  - Revenue contribution analysis
  - Year-over-year growth trending
  - Market basket analysis (cross-sell)
  - Inventory velocity calculations

## 📁 SQL Queries
All analysis queries are available in the `/sql_queries` folder:
1. `01_product_performance_overview.sql` - Revenue and margin analysis
2. `02_product_cross_sell.sql` - Products bought together
3. `03_product_trends.sql` - YoY growth trends
4. `04_slow_moving_products.sql` - Dead stock identification

---

**Analyst:** Mubarak Lawal | [LinkedIn](#) | [Portfolio](https://mubaraklawal.com)
