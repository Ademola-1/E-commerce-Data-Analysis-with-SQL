-- Product Performance Overview
-- Business Question: Which product categories drive the most revenue and have best margins?

WITH product_sales AS (
    SELECT 
        p.product_category_name,
        t.product_category_name_english,
        COUNT(DISTINCT oi.order_id) as total_orders,
        COUNT(DISTINCT oi.product_id) as unique_products,
        ROUND(SUM(oi.price)::numeric, 2) as total_revenue,
        ROUND(AVG(oi.price)::numeric, 2) as avg_product_price,
        ROUND(SUM(oi.freight_value)::numeric, 2) as total_shipping_cost,
        ROUND(SUM(oi.price + oi.freight_value)::numeric, 2) as total_gmv
    FROM olist.order_items oi
    JOIN olist.products p ON oi.product_id = p.product_id
    LEFT JOIN olist.product_category_translation t 
        ON p.product_category_name = t.product_category_name
    JOIN olist.orders o ON oi.order_id = o.order_id
    WHERE o.order_status = 'delivered'  -- Only completed orders
    GROUP BY p.product_category_name, t.product_category_name_english
)

SELECT 
    product_category_name_english as category,
    total_orders,
    unique_products,
    total_revenue,
    avg_product_price,
    total_shipping_cost,
    total_gmv,
    ROUND((total_revenue / SUM(total_revenue) OVER ()) * 100, 2) as revenue_share_pct,
    ROUND((total_shipping_cost / total_revenue) * 100, 2) as shipping_cost_pct
FROM product_sales
ORDER BY total_revenue DESC
LIMIT 20;