-- Customer Segmentation Overview
-- Business Question: What's the distribution of customer types and their value?

WITH customer_metrics AS (
    SELECT 
        c.customer_unique_id,
        COUNT(DISTINCT o.order_id) as total_orders,
        ROUND(SUM(p.payment_value)::numeric, 2) as total_spent,
        ROUND(AVG(p.payment_value)::numeric, 2) as avg_order_value,
        MIN(o.order_purchase_timestamp) as first_order_date,
        MAX(o.order_purchase_timestamp) as last_order_date,
        ROUND(EXTRACT(EPOCH FROM (MAX(o.order_purchase_timestamp) - MIN(o.order_purchase_timestamp))) / 86400, 0) as customer_lifespan_days
    FROM olist.customers c
    JOIN olist.orders o ON c.customer_id = o.customer_id
    JOIN olist.order_payments p ON o.order_id = p.order_id
    WHERE o.order_status = 'delivered'
    GROUP BY c.customer_unique_id
),
customer_segments AS (
    SELECT 
        customer_unique_id,
        total_orders,
        total_spent,
        avg_order_value,
        customer_lifespan_days,
        CASE 
            WHEN total_orders = 1 THEN 'One-time Buyer'
            WHEN total_orders = 2 THEN 'Repeat Buyer'
            WHEN total_orders >= 3 THEN 'Loyal Customer'
        END as customer_type,
        CASE 
            WHEN total_spent >= 1000 THEN 'High Value'
            WHEN total_spent >= 500 THEN 'Medium Value'
            ELSE 'Low Value'
        END as value_segment
    FROM customer_metrics
)

SELECT 
    customer_type,
    value_segment,
    COUNT(*) as customer_count,
    ROUND(AVG(total_spent), 2) as avg_lifetime_value,
    ROUND(AVG(avg_order_value), 2) as avg_order_value,
    ROUND(AVG(customer_lifespan_days), 0) as avg_lifespan_days,
    ROUND((COUNT(*)::numeric / SUM(COUNT(*)) OVER ()) * 100, 2) as pct_of_customers
FROM customer_segments
GROUP BY customer_type, value_segment
ORDER BY 
    CASE customer_type 
        WHEN 'Loyal Customer' THEN 1 
        WHEN 'Repeat Buyer' THEN 2 
        ELSE 3 
    END,
    CASE value_segment 
        WHEN 'High Value' THEN 1 
        WHEN 'Medium Value' THEN 2 
        ELSE 3 
    END;