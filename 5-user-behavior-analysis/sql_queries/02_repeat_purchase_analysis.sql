-- Repeat Purchase Analysis
-- Business Question: What's our customer retention and repeat purchase behavior?

WITH customer_order_dates AS (
    SELECT 
        c.customer_unique_id,
        o.order_id,
        o.order_purchase_timestamp,
        LEAD(o.order_purchase_timestamp) OVER (
            PARTITION BY c.customer_unique_id 
            ORDER BY o.order_purchase_timestamp
        ) as next_order_date
    FROM olist.customers c
    JOIN olist.orders o ON c.customer_id = o.customer_id
    WHERE o.order_status = 'delivered'
),
customer_orders AS (
    SELECT 
        customer_unique_id,
        COUNT(DISTINCT order_id) as total_orders,
        MIN(order_purchase_timestamp) as first_order,
        MAX(order_purchase_timestamp) as last_order,
        AVG(EXTRACT(EPOCH FROM (next_order_date - order_purchase_timestamp)) / 86400) as avg_days_between_orders
    FROM customer_order_dates
    GROUP BY customer_unique_id
)

SELECT 
    'Total Customers' as metric,
    COUNT(DISTINCT customer_unique_id)::text as value
FROM customer_orders

UNION ALL

SELECT 
    'One-time Buyers' as metric,
    COUNT(*)::text as value
FROM customer_orders
WHERE total_orders = 1

UNION ALL

SELECT 
    'Repeat Customers' as metric,
    COUNT(*)::text as value
FROM customer_orders
WHERE total_orders > 1

UNION ALL

SELECT 
    'Repeat Purchase Rate (%)' as metric,
    ROUND((COUNT(CASE WHEN total_orders > 1 THEN 1 END)::numeric / COUNT(*)) * 100, 2)::text as value
FROM customer_orders

UNION ALL

SELECT 
    'Avg Days Between Orders' as metric,
    ROUND(AVG(avg_days_between_orders), 1)::text as value
FROM customer_orders
WHERE total_orders > 1 AND avg_days_between_orders IS NOT NULL;