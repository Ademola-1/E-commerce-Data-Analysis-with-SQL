-- =============================================================================
-- Order Cancellation Analysis
-- Business Question: Why are orders being canceled and what's the impact?
-- =============================================================================

-- -----------------------------------------------------------------------------
-- PART A: Overall Cancellation Metrics
-- -----------------------------------------------------------------------------

WITH canceled_orders AS (
    SELECT 
        o.order_id,
        SUM(p.payment_value) as order_value
    FROM olist.orders o
    LEFT JOIN olist.order_payments p ON o.order_id = p.order_id
    WHERE o.order_status IN ('canceled', 'unavailable')
    GROUP BY o.order_id
),
all_orders AS (
    SELECT 
        o.order_id,
        SUM(p.payment_value) as order_value
    FROM olist.orders o
    LEFT JOIN olist.order_payments p ON o.order_id = p.order_id
    GROUP BY o.order_id
)

SELECT 
    'Total Canceled Orders' as metric,
    COUNT(*)::text as value
FROM canceled_orders

UNION ALL

SELECT 
    'Total All Orders' as metric,
    COUNT(*)::text as value
FROM all_orders

UNION ALL

SELECT 
    'Lost Revenue from Cancellations' as metric,
    '₹' || ROUND(SUM(order_value), 2)::text as value
FROM canceled_orders

UNION ALL

SELECT 
    'Avg Canceled Order Value' as metric,
    '₹' || ROUND(AVG(order_value), 2)::text as value
FROM canceled_orders

UNION ALL

SELECT 
    'Cancellation Rate (%)' as metric,
    ROUND(((SELECT COUNT(*) FROM canceled_orders)::numeric / 
           (SELECT COUNT(*) FROM all_orders)) * 100, 2)::text as value

UNION ALL

SELECT 
    'Revenue Loss Rate (%)' as metric,
    ROUND(((SELECT SUM(order_value) FROM canceled_orders) / 
           (SELECT SUM(order_value) FROM all_orders)) * 100, 2)::text as value;


-- -----------------------------------------------------------------------------
-- PART B: Cancellations by State
-- -----------------------------------------------------------------------------

WITH canceled_orders AS (
    SELECT 
        o.order_id,
        c.customer_state,
        SUM(p.payment_value) as order_value
    FROM olist.orders o
    LEFT JOIN olist.customers c ON o.customer_id = c.customer_id
    LEFT JOIN olist.order_payments p ON o.order_id = p.order_id
    WHERE o.order_status IN ('canceled', 'unavailable')
    GROUP BY o.order_id, c.customer_state
)

SELECT 
    customer_state,
    COUNT(*) as canceled_orders,
    ROUND(AVG(order_value), 2) as avg_order_value,
    ROUND(SUM(order_value), 2) as total_lost_revenue,
    ROUND((COUNT(*)::numeric / (SELECT COUNT(*) FROM canceled_orders)) * 100, 2) as pct_of_cancellations
FROM canceled_orders
WHERE customer_state IS NOT NULL
GROUP BY customer_state
ORDER BY canceled_orders DESC
LIMIT 10;