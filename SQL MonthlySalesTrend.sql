SELECT
    DATE_FORMAT(o.order_date, '%M') AS month_name,
    COUNT(DISTINCT o.order_id) AS total_orders,
    SUM(oi.subtotal) AS monthly_revenue,
    SUM(SUM(oi.subtotal)) OVER (ORDER BY MONTH(o.order_date)) AS cumulative_revenue
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
WHERE YEAR(o.order_date) = 2024
GROUP BY MONTH(o.order_date)
ORDER BY MONTH(o.order_date);