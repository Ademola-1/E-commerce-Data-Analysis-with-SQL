-- Order Status Funnel Analysis
-- Business Question: Where are we losing orders in the fulfillment process?

WITH order_status_summary AS (
    SELECT 
        order_status,
        COUNT(*) as order_count,
        ROUND(AVG(payment_value)::numeric, 2) as avg_order_value,
        ROUND(SUM(payment_value)::numeric, 2) as total_value
    FROM olist.orders o
    JOIN olist.order_payments p ON o.order_id = p.order_id
    GROUP BY order_status
),
total_orders AS (
    SELECT 
        COUNT(*) as total,
        SUM(payment_value) as total_revenue
    FROM olist.orders o
    JOIN olist.order_payments p ON o.order_id = p.order_id
)

SELECT 
    oss.order_status,
    oss.order_count,
    oss.avg_order_value,
    oss.total_value,
    ROUND((oss.order_count::numeric / t.total) * 100, 2) as pct_of_orders,
    ROUND((oss.total_value / t.total_revenue) * 100, 2) as pct_of_revenue,
    CASE 
        WHEN oss.order_status = 'delivered' THEN 'Success'
        WHEN oss.order_status IN ('canceled', 'unavailable') THEN 'Lost Revenue'
        WHEN oss.order_status = 'shipped' THEN 'In Transit'
        ELSE 'Processing'
    END as status_category
FROM order_status_summary oss
CROSS JOIN total_orders t
ORDER BY oss.order_count DESC;