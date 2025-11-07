# Geographic Market Performance Analysis

## Business Problem
Brazil is the world's 5th largest country (8.5M km²) with 27 states and 200+ million people. For Olist to scale efficiently, the company must understand:
- Which geographic markets drive the most revenue?
- Is the business too concentrated in specific regions (concentration risk)?
- Which regions have high-value customers worth targeting?
- Where are the expansion opportunities?

## Key Findings

### 1. Extreme Market Concentration: 50% of Revenue from 2 States

**State-Level Revenue Distribution:**

| State | Revenue | % of Total | Orders | Cumulative % | Tier |
|-------|---------|------------|--------|--------------|------|
| **SP (São Paulo)** | **₹5,770,266** | **37.41%** | 40,500 | 37.41% | Top 50% |
| **RJ (Rio de Janeiro)** | **₹2,055,690** | **13.33%** | 12,350 | 50.74% | Next 30% |
| MG (Minas Gerais) | ₹1,819,278 | 11.80% | 11,354 | 62.54% | Next 30% |
| RS (Rio Grande do Sul) | ₹861,802 | 5.59% | 5,345 | 68.13% | Next 30% |
| PR (Paraná) | ₹781,920 | 5.07% | 4,923 | 73.20% | Next 30% |
| SC (Santa Catarina) | ₹595,208 | 3.86% | 3,546 | 77.06% | Next 30% |

**Critical Findings:**
- 🔴 **SP alone = 37.41% of total revenue** - dangerous single-market dependency
- 🔴 **Top 2 states = 50.74%** - half the business concentrated in 2 states
- ⚠️ **Top 6 states = 77%** - classic Pareto principle (80/20 rule)
-  **21 states in "Long Tail"** (<1% each) - massive untapped potential

**Business Risk:** Over-reliance on São Paulo creates vulnerability. Any disruption (regulatory, logistics, competition) in SP threatens the entire business.

---

### 2. The São Paulo Paradox: High Volume, Low Quality

**São Paulo Performance:**

| Metric | SP Value | National Rank | Insight |
|--------|----------|---------------|---------|
| Total Revenue | ₹5.77M | #1 | Dominates volume |
| Total Orders | 40,500 | #1 | 41% of all orders |
| Customer LTV | ₹147.22 | **#27 (Last)** | Worst customer quality |
| Repeat Rate | 3.00% | #27 (Last) | Customers don't return |
| Avg Orders/Customer | 1.03 | #27 (Last) | Almost all one-time buyers |

**Small States Outperform on Quality:**

| State | Customer LTV | Repeat Rate | Comparison to SP |
|-------|-------------|-------------|------------------|
| Paraíba (PB) | ₹273.48 | 1.98% | **+86% LTV** vs SP |
| Acre (AC) | ₹257.71 | 5.26% | +75% LTV, +75% repeat rate |
| Rondônia (RO) | ₹246.65 | 3.90% | +67% LTV, +30% repeat rate |
| Amapá (AP) | ₹244.57 | 1.52% | +66% LTV |

**The Paradox Explained:**
- **SP = transactional market** - high competition, price-sensitive customers, one-time purchases
- **Small states = relationship market** - less competition, loyal customers, higher willingness to pay
- **SP customers shop around**, small state customers stick with Olist

**Strategic Implication:** Don't just chase volume. Small states deliver better unit economics.

---

### 3. Urban Concentration: Top 3 Cities = 23% of Revenue

**Top 10 Cities:**

| City | State | Revenue | % of Total | Orders |
|------|-------|---------|------------|--------|
| São Paulo | SP | ₹2,108,162 | 13.67% | 15,045 |
| Rio de Janeiro | RJ | ₹1,111,872 | 7.21% | 6,601 |
| Belo Horizonte | MG | ₹406,051 | 2.63% | 2,697 |
| Brasília | DF | ₹345,222 | 2.24% | 2,071 |
| Curitiba | PR | ₹238,582 | 1.55% | 1,489 |
| Porto Alegre | RS | ₹214,862 | 1.39% | 1,342 |
| Campinas | SP | ₹209,029 | 1.36% | 1,406 |
| Salvador | BA | ₹207,791 | 1.35% | 1,188 |
| Guarulhos | SP | ₹157,750 | 1.02% | 1,144 |
| Niterói | RJ | ₹135,458 | 0.88% | 825 |

**Key Findings:**
- **São Paulo city alone = 13.67%** of total revenue (₹2.1M)
- **Top 3 cities = 23.51%** of revenue - extreme urban concentration
- **5 of top 10 cities are in SP state** - confirms SP dominance
- **Major metros dominate** - capital cities punch above their weight

---

### 4. Expansion Opportunity Matrix

**All 27 States Classified by Growth Potential:**

**🟢 Growth Markets (14 states - Score 12-14):**
High delivery success + decent volume + proven infrastructure

| State | Revenue | Orders | Success Rate | Expansion Score | Why Target? |
|-------|---------|--------|--------------|-----------------|-------------|
| **RS** | ₹890,899 | 5,466 | 99.09% | 14 | #4 revenue, proven market |
| **PA** | ₹218,296 | 975 | 99.29% | 14 | Northern region expansion |
| **AL** | ₹96,962 | 413 | 99.52% | 14 | Underserved Northeast |
| **MT** | ₹187,029 | 907 | 99.45% | 14 | Central-West gateway |
| **ES** | ₹325,968 | 2,033 | 99.23% | 13 | Near SP, spillover potential |

**🟠 Emerging Markets (6 states - Score 8-10):**
Lower volume but functional infrastructure

| State | Revenue | Success Rate | Opportunity |
|-------|---------|--------------|-------------|
| MA, PI, TO | ₹152K - ₹108K | 98-99% | Northeast expansion |
| SE, MS | ₹75K - ₹137K | 98-99% | Mid-tier cities |
| RO, AM | ₹61K - ₹28K | 97-99% | Northern frontier |

**🔵 Untapped Market (1 state - Score 7):**
- **RR (Roraima):** ₹10K revenue, 46 orders - extremely small but viable

**Strategic Insight:** 98-99% delivery success rates across ALL states means Olist's logistics work everywhere. The opportunity isn't "can we deliver?" but "how do we acquire customers cost-effectively?"

---

## Business Recommendations

### CRITICAL PRIORITY: Reduce SP Dependency

**Problem:** 37% revenue from one state = existential risk

**Actions:**
1. **Set SP revenue cap at 30%** - as other markets grow, SP share must shrink proportionally
2. **Double marketing spend in Top 10 Growth Markets** (RS, PA, AL, MT, ES, RJ, MG, PE, DF, AP)
3. **Launch "Regional Champions" program** - replicate SP tactics in 5 target states

**Expected Impact:** Reduce SP concentration from 37% to 30% within 12 months

---

### HIGH PRIORITY: Crack the SP Customer Quality Problem

**Problem:** SP customers have 86% LOWER LTV than smaller states

**Root Cause Analysis:**
- High competition in SP (more e-commerce options)
- Price-sensitive market (race to bottom)
- Poor post-purchase experience (3% repeat rate)

**Solutions:**
1. **Launch SP-specific loyalty program** - Target: increase repeat rate from 3% to 8%
2. **Test premium fulfillment in SP** - 2-day delivery for SP orders (currently 8.8 days)
3. **Implement win-back campaigns** - Re-engage SP one-time buyers with targeted offers

**Expected Impact:** 
- Increase SP LTV from ₹147 to ₹175 (+19%)
- Add ₹1.1M annual revenue (40,500 customers × ₹28 LTV increase)

---

### EXPANSION STRATEGY: "Small State, Big Value" Initiative

**Thesis:** Small states deliver 67-86% higher LTV. Invest where customers are most valuable.

**Phase 1: Quick Wins (Months 1-3)**
Target states with proven quality + manageable scale:
- **Acre (AC):** ₹257 LTV, 5.26% repeat rate, only 81 orders - huge upside
- **Rondônia (RO):** ₹246 LTV, 3.90% repeat rate, 253 orders
- **Paraíba (PB):** ₹273 LTV, 536 orders - northeastern foothold

**Tactics:**
- Regional influencer partnerships (lower CAC than SP)
- Free shipping promotions (offset for small order volumes)
- Local payment method support (boleto, regional banks)

**Expected Impact:** 3x order volume in target states = ₹200K-₹300K incremental revenue

---

**Phase 2: Growth Markets Scale (Months 4-12)**
Focus on states with Score 13-14:
- **Rio Grande do Sul (RS):** Already ₹891K revenue, score 14 - double down
- **Pará (PA):** Northern expansion, score 14, 99.29% delivery success
- **Mato Grosso (MT):** Central-West hub, score 14

**Investment:**
- Regional warehouses in Porto Alegre (RS), Belém (PA), Cuiabá (MT)
- State-specific marketing campaigns
- Local merchant recruitment

**Expected Impact:** 
- Reduce delivery times by 30-40% in target regions
- Increase order volume by 50% in each state = ₹660K incremental revenue

---

**Phase 3: Long Tail Activation (Year 2)**
- Systematic rollout to all 27 states
- Marketplace model (reduce inventory risk)
- Partnerships with local retailers

---

### RISK MITIGATION: Urban Diversification

**Problem:** São Paulo city = 13.67% of revenue (single city risk)

**Strategy:**
1. **Identify "Tier 2" cities with >500 orders** (Campinas, Guarulhos, Santos, etc.)
2. **Launch city-specific campaigns** - "Discover Olist in [City]"
3. **Geo-targeted ads** on Instagram/Facebook for non-SP major metros

**Target:** No single city >10% of revenue within 18 months

---

## Expected Business Impact

| Initiative | Target Metric | Impact | Timeline |
|-----------|---------------|---------|----------|
| Reduce SP concentration | SP revenue share | 37% → 30% | 12 months |
| SP customer quality | SP LTV | ₹147 → ₹175 (+19%) | 6-12 months |
| Small state expansion | AC/RO/PB order volume | 3x growth | 3-6 months |
| Growth market scale | RS/PA/MT revenue | +₹660K | 6-12 months |
| Urban diversification | SP city share | 13.67% → <10% | 12-18 months |

**Conservative Total Impact:** ₹2M - ₹2.5M incremental annual revenue + 30% reduction in concentration risk

**Strategic Impact:**
- **Geographic resilience** - diversified revenue reduces single-market dependency
- **Better unit economics** - focus on high-LTV states improves profitability
- **Sustainable growth** - 98-99% delivery success everywhere enables national scale
- **Competitive moat** - penetrating small states before competitors arrive

---

## Technical Approach

**Tools Used:** PostgreSQL, SQL  
**Dataset:** Olist Brazilian E-Commerce (93K+ customers across 27 states, 5,000+ cities)

**Analysis Methods:**
- Geographic revenue aggregation and market share analysis
- Cumulative distribution for concentration risk assessment
- Customer Lifetime Value (CLV) calculation by region
- Multi-factor expansion scoring (volume, AOV, revenue, reliability)
- Market segmentation using NTILE percentile ranking

---

## SQL Queries

All analysis queries are available in the `/sql_queries` folder:

1. **01_revenue_by_geography.sql** - State and city revenue distribution
2. **02_market_concentration.sql** - Cumulative revenue analysis and Pareto principle
3. **03_customer_value_by_region.sql** - CLV, repeat rates, and customer quality by state
4. **04_expansion_opportunities.sql** - Multi-factor scoring for market prioritization

Each query includes detailed comments explaining the business logic and analytical approach.

---

## Key Takeaway

**Olist has a paradox:** Its biggest market (São Paulo - 37% of revenue) has its worst customers (₹147 LTV, 3% repeat rate), while tiny states like Acre deliver 86% higher LTV. The company is trapped optimizing for volume in a transactional market when smaller states offer better unit economics.

**The solution:** Systematic geographic diversification. Reduce SP dependency from 37% to 30%, double down on high-LTV small states, and scale Growth Markets with proven infrastructure. With 98-99% delivery success everywhere, the constraint isn't "can we operate there?" but "how fast can we capture market share before competitors do?"

---

## About the Analyst

**Mubarak Lawal** - Data Analyst specializing in business analytics and data-driven decision making

Experience analyzing customer behavior, product performance, and revenue optimization across e-commerce and retail sectors. While this portfolio uses e-commerce data, the analytical frameworks apply to any business with customers and transactions.

**Core Skills:** SQL, Python, Power BI, Google Analytics, Statistical Analysis

[Email](mailto:lawalademola71@gmail.com) | [LinkedIn](https://linkedin.com/in/mubarak-lawal) | [Portfolio](https://mubaraklawal.com)

---

[← Back to Main Project](../README.md)
