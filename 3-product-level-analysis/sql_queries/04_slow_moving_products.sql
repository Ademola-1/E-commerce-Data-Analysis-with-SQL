-- Slow-Moving & Dead Stock Analysis
-- Business Question: Which products should be discounted or removed?

WITH product_velocity AS (
    SELECT 
        p.product_id,
        p.product_category_name,
        t.product_category_name_english as category,
        COUNT(DISTINCT oi.order_id) as total_orders,
        ROUND(SUM(oi.price)::numeric, 2) as total_revenue,
        MIN(o.order_purchase_timestamp) as first_sale_date,
        MAX(o.order_purchase_timestamp) as last_sale_date,
        ROUND(EXTRACT(EPOCH FROM (MAX(o.order_purchase_timestamp) - MIN(o.order_purchase_timestamp))) / 86400, 0) as days_active,
        ROUND(
            COUNT(DISTINCT oi.order_id)::numeric / 
            NULLIF(EXTRACT(EPOCH FROM (MAX(o.order_purchase_timestamp) - MIN(o.order_purchase_timestamp))) / 86400, 0),
        2) as sales_per_day
    FROM olist.products p
    LEFT JOIN olist.order_items oi ON p.product_id = oi.product_id
    LEFT JOIN olist.orders o ON oi.order_id = o.order_id AND o.order_status = 'delivered'
    LEFT JOIN olist.product_category_translation t ON p.product_category_name = t.product_category_name
    GROUP BY p.product_id, p.product_category_name, t.product_category_name_english
)

SELECT 
    category,
    COUNT(*) as total_products,
    COUNT(CASE WHEN total_orders = 0 THEN 1 END) as never_sold,
    COUNT(CASE WHEN total_orders = 1 THEN 1 END) as single_sale_only,
    COUNT(CASE WHEN sales_per_day < 0.1 AND total_orders > 0 THEN 1 END) as slow_movers,
    ROUND(AVG(sales_per_day), 4) as avg_sales_velocity,
    ROUND(
        (COUNT(CASE WHEN total_orders <= 1 THEN 1 END)::numeric / COUNT(*)) * 100,
    2) as dead_stock_pct
FROM product_velocity
GROUP BY category
ORDER BY dead_stock_pct DESC;