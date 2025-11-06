-- Cohort Retention Analysis
-- Business Question: How well do we retain customers over time by their first purchase month?

WITH customer_cohorts AS (
    SELECT 
        c.customer_unique_id,
        DATE_TRUNC('month', MIN(o.order_purchase_timestamp)) as cohort_month,
        o.order_id,
        DATE_TRUNC('month', o.order_purchase_timestamp) as order_month
    FROM olist.customers c
    JOIN olist.orders o ON c.customer_id = o.customer_id
    WHERE o.order_status = 'delivered'
        AND o.order_purchase_timestamp >= '2017-01-01'  -- Focus on complete data
    GROUP BY c.customer_unique_id, o.order_id, o.order_purchase_timestamp
),
cohort_data AS (
    SELECT 
        cohort_month,
        order_month,
        EXTRACT(YEAR FROM AGE(order_month, cohort_month)) * 12 + 
        EXTRACT(MONTH FROM AGE(order_month, cohort_month)) as months_since_first_order,
        COUNT(DISTINCT customer_unique_id) as customers
    FROM customer_cohorts
    GROUP BY cohort_month, order_month
),
cohort_size AS (
    SELECT 
        cohort_month,
        COUNT(DISTINCT customer_unique_id) as cohort_size
    FROM customer_cohorts
    GROUP BY cohort_month
)

SELECT 
    TO_CHAR(cd.cohort_month, 'YYYY-MM') as cohort,
    cs.cohort_size as cohort_size,
    cd.months_since_first_order as month_number,
    cd.customers as retained_customers,
    ROUND((cd.customers::numeric / cs.cohort_size) * 100, 2) as retention_rate
FROM cohort_data cd
JOIN cohort_size cs ON cd.cohort_month = cs.cohort_month
WHERE cd.months_since_first_order <= 6  -- First 6 months
ORDER BY cd.cohort_month, cd.months_since_first_order;