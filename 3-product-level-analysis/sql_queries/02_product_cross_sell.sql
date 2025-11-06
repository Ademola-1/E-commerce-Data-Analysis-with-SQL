-- Product Cross-Sell Analysis
-- Business Question: Which products are frequently bought together?

WITH product_pairs AS (
    SELECT 
        oi1.product_id as product_a,
        oi2.product_id as product_b,
        p1.product_category_name as category_a,
        p2.product_category_name as category_b,
        COUNT(DISTINCT oi1.order_id) as times_bought_together
    FROM olist.order_items oi1
    JOIN olist.order_items oi2 
        ON oi1.order_id = oi2.order_id 
        AND oi1.product_id < oi2.product_id  -- Avoid duplicates
    JOIN olist.products p1 ON oi1.product_id = p1.product_id
    JOIN olist.products p2 ON oi2.product_id = p2.product_id
    JOIN olist.orders o ON oi1.order_id = o.order_id
    WHERE o.order_status = 'delivered'
    GROUP BY oi1.product_id, oi2.product_id, 
             p1.product_category_name, p2.product_category_name
    HAVING COUNT(DISTINCT oi1.order_id) >= 5  -- Bought together at least 5 times
)

SELECT 
    t1.product_category_name_english as category_a,
    t2.product_category_name_english as category_b,
    SUM(times_bought_together) as total_combinations,
    COUNT(DISTINCT product_a || product_b) as unique_pairs
FROM product_pairs pp
LEFT JOIN olist.product_category_translation t1 ON pp.category_a = t1.product_category_name
LEFT JOIN olist.product_category_translation t2 ON pp.category_b = t2.product_category_name
GROUP BY t1.product_category_name_english, t2.product_category_name_english
ORDER BY total_combinations DESC
LIMIT 20;