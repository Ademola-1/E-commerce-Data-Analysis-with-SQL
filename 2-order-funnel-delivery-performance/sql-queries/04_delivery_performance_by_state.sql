-- Delivery Performance by Customer State
-- Business Question: Which regions have the best/worst delivery performance?

WITH state_delivery AS (
    SELECT 
        c.customer_state,
        COUNT(DISTINCT o.order_id) as total_orders,
        COUNT(DISTINCT CASE WHEN o.order_status = 'delivered' THEN o.order_id END) as delivered_orders,
        COUNT(DISTINCT CASE WHEN o.order_status IN ('canceled', 'unavailable') THEN o.order_id END) as failed_orders,
        ROUND(AVG(EXTRACT(EPOCH FROM (o.order_delivered_customer_date - o.order_purchase_timestamp)) / 86400), 1) as avg_delivery_days,
        ROUND(AVG(EXTRACT(EPOCH FROM (o.order_estimated_delivery_date - o.order_delivered_customer_date)) / 86400), 1) as avg_vs_estimate_days,
        SUM(p.payment_value) as total_revenue
    FROM olist.orders o
    JOIN olist.customers c ON o.customer_id = c.customer_id
    LEFT JOIN olist.order_payments p ON o.order_id = p.order_id
    WHERE o.order_status IN ('delivered', 'canceled', 'unavailable')
    GROUP BY c.customer_state
)

SELECT 
    customer_state,
    total_orders,
    delivered_orders,
    failed_orders,
    ROUND((delivered_orders::numeric / total_orders) * 100, 2) as delivery_success_rate,
    ROUND((failed_orders::numeric / total_orders) * 100, 2) as failure_rate,
    avg_delivery_days,
    CASE 
        WHEN avg_vs_estimate_days > 0 THEN 'Early'
        WHEN avg_vs_estimate_days < 0 THEN 'Late'
        ELSE 'On Time'
    END as delivery_timing,
    ROUND(total_revenue, 2) as total_revenue
FROM state_delivery
WHERE total_orders >= 100  -- Focus on states with significant volume
ORDER BY total_orders DESC;