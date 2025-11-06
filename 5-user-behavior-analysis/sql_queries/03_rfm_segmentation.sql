-- RFM (Recency, Frequency, Monetary) Segmentation
-- Business Question: Which customers should we prioritize for retention campaigns?

WITH rfm_calc AS (
    SELECT 
        c.customer_unique_id,
        MAX(o.order_purchase_timestamp) as last_order_date,
        COUNT(DISTINCT o.order_id) as frequency,
        ROUND(SUM(p.payment_value)::numeric, 2) as monetary_value,
        -- Calculate recency (days since last order from max date in dataset)
        EXTRACT(EPOCH FROM (
            (SELECT MAX(order_purchase_timestamp) FROM olist.orders) - 
            MAX(o.order_purchase_timestamp)
        )) / 86400 as recency_days
    FROM olist.customers c
    JOIN olist.orders o ON c.customer_id = o.customer_id
    JOIN olist.order_payments p ON o.order_id = p.order_id
    WHERE o.order_status = 'delivered'
    GROUP BY c.customer_unique_id
),
rfm_scores AS (
    SELECT 
        customer_unique_id,
        recency_days,
        frequency,
        monetary_value,
        -- RFM Scoring (1-5, where 5 is best)
        NTILE(5) OVER (ORDER BY recency_days DESC) as recency_score,  -- Lower days = better = higher score
        NTILE(5) OVER (ORDER BY frequency) as frequency_score,
        NTILE(5) OVER (ORDER BY monetary_value) as monetary_score
    FROM rfm_calc
),
rfm_segments AS (
    SELECT 
        *,
        recency_score + frequency_score + monetary_score as rfm_total,
        CASE 
            WHEN recency_score >= 4 AND frequency_score >= 4 AND monetary_score >= 4 THEN 'Champions'
            WHEN recency_score >= 3 AND frequency_score >= 3 AND monetary_score >= 3 THEN 'Loyal Customers'
            WHEN recency_score >= 4 AND frequency_score <= 2 THEN 'Promising'
            WHEN recency_score >= 3 AND frequency_score <= 2 THEN 'Potential Loyalists'
            WHEN recency_score <= 2 AND frequency_score >= 3 THEN 'At Risk'
            WHEN recency_score <= 2 AND frequency_score <= 2 AND monetary_score >= 3 THEN 'Cant Lose Them'
            WHEN recency_score <= 2 THEN 'Hibernating'
            ELSE 'Need Attention'
        END as customer_segment
    FROM rfm_scores
)

SELECT 
    customer_segment,
    COUNT(*) as customer_count,
    ROUND(AVG(recency_days), 0) as avg_recency_days,
    ROUND(AVG(frequency), 1) as avg_frequency,
    ROUND(AVG(monetary_value), 2) as avg_monetary_value,
    ROUND(SUM(monetary_value), 2) as total_revenue,
    ROUND((COUNT(*)::numeric / SUM(COUNT(*)) OVER ()) * 100, 2) as pct_of_customers,
    ROUND((SUM(monetary_value) / SUM(SUM(monetary_value)) OVER ()) * 100, 2) as pct_of_revenue
FROM rfm_segments
GROUP BY customer_segment
ORDER BY total_revenue DESC;