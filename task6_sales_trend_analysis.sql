-- Sales Trend Analysis Using DATE_TRUNC

SELECT 
    DATE_TRUNC('month', order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM 
    online_sales
GROUP BY 
    DATE_TRUNC('month', order_date)
ORDER BY 
    month;
