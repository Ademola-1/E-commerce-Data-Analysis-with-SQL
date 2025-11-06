-- Product Category Trends Over Time
-- Business Question: Which categories are growing vs declining?

WITH monthly_sales AS (
    SELECT 
        DATE_TRUNC('month', o.order_purchase_timestamp) as month,
        t.product_category_name_english as category,
        COUNT(DISTINCT oi.order_id) as orders,
        ROUND(SUM(oi.price)::numeric, 2) as revenue
    FROM olist.order_items oi
    JOIN olist.products p ON oi.product_id = p.product_id
    LEFT JOIN olist.product_category_translation t 
        ON p.product_category_name = t.product_category_name
    JOIN olist.orders o ON oi.order_id = o.order_id
    WHERE o.order_status = 'delivered'
        AND o.order_purchase_timestamp >= '2017-01-01'  -- Focus on complete years
        AND t.product_category_name_english IS NOT NULL
    GROUP BY DATE_TRUNC('month', o.order_purchase_timestamp), 
             t.product_category_name_english
),
category_growth AS (
    SELECT 
        category,
        MIN(month) as first_month,
        MAX(month) as last_month,
        SUM(CASE WHEN month >= '2018-01-01' THEN revenue ELSE 0 END) as revenue_2018,
        SUM(CASE WHEN month < '2018-01-01' THEN revenue ELSE 0 END) as revenue_2017,
        AVG(revenue) as avg_monthly_revenue
    FROM monthly_sales
    GROUP BY category
)

SELECT 
    category,
    ROUND(revenue_2017, 2) as revenue_2017,
    ROUND(revenue_2018, 2) as revenue_2018,
    ROUND(avg_monthly_revenue, 2) as avg_monthly_revenue,
    ROUND(((revenue_2018 - revenue_2017) / NULLIF(revenue_2017, 0)) * 100, 2) as yoy_growth_pct,
    CASE 
        WHEN ((revenue_2018 - revenue_2017) / NULLIF(revenue_2017, 0)) * 100 > 20 THEN 'High Growth'
        WHEN ((revenue_2018 - revenue_2017) / NULLIF(revenue_2017, 0)) * 100 > 0 THEN 'Growing'
        WHEN ((revenue_2018 - revenue_2017) / NULLIF(revenue_2017, 0)) * 100 > -10 THEN 'Stable'
        ELSE 'Declining'
    END as trend_status
FROM category_growth
WHERE revenue_2017 > 0  -- Only categories that existed in 2017
ORDER BY yoy_growth_pct DESC;