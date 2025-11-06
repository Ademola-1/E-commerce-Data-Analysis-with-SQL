-- Delivery Time Performance Analysis
-- Business Question: How fast are we delivering and meeting customer expectations?

WITH delivery_metrics AS (
    SELECT 
        order_id,
        order_status,
        order_purchase_timestamp,
        order_approved_at,
        order_delivered_carrier_date,
        order_delivered_customer_date,
        order_estimated_delivery_date,
        ROUND(EXTRACT(EPOCH FROM (order_approved_at - order_purchase_timestamp)) / 86400, 1) as approval_time_days,
        ROUND(EXTRACT(EPOCH FROM (order_delivered_carrier_date - order_approved_at)) / 86400, 1) as to_carrier_days,
        ROUND(EXTRACT(EPOCH FROM (order_delivered_customer_date - order_delivered_carrier_date)) / 86400, 1) as in_transit_days,
        ROUND(EXTRACT(EPOCH FROM (order_delivered_customer_date - order_purchase_timestamp)) / 86400, 1) as total_delivery_days,
        ROUND(EXTRACT(EPOCH FROM (order_estimated_delivery_date - order_delivered_customer_date)) / 86400, 1) as vs_estimate_days
    FROM olist.orders
    WHERE order_status = 'delivered'
        AND order_delivered_customer_date IS NOT NULL
)

SELECT 
    'Total Delivered Orders' as metric,
    COUNT(*)::text as value
FROM delivery_metrics

UNION ALL

SELECT 
    'Avg Approval Time (days)' as metric,
    ROUND(AVG(approval_time_days), 1)::text as value
FROM delivery_metrics

UNION ALL

SELECT 
    'Avg Time to Carrier (days)' as metric,
    ROUND(AVG(to_carrier_days), 1)::text as value
FROM delivery_metrics

UNION ALL

SELECT 
    'Avg In-Transit Time (days)' as metric,
    ROUND(AVG(in_transit_days), 1)::text as value
FROM delivery_metrics

UNION ALL

SELECT 
    'Avg Total Delivery Time (days)' as metric,
    ROUND(AVG(total_delivery_days), 1)::text as value
FROM delivery_metrics

UNION ALL

SELECT 
    'Orders Delivered Early' as metric,
    COUNT(CASE WHEN vs_estimate_days > 0 THEN 1 END)::text as value
FROM delivery_metrics

UNION ALL

SELECT 
    'Orders Delivered Late' as metric,
    COUNT(CASE WHEN vs_estimate_days < 0 THEN 1 END)::text as value
FROM delivery_metrics

UNION ALL

SELECT 
    'On-Time Delivery Rate (%)' as metric,
    ROUND((COUNT(CASE WHEN vs_estimate_days >= 0 THEN 1 END)::numeric / COUNT(*)) * 100, 2)::text as value
FROM delivery_metrics;