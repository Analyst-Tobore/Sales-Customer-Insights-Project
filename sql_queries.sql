
-- Total sales per product
SELECT product_name, SUM(quantity_sold * unit_price) AS total_sales
FROM sales_data
GROUP BY product_name
ORDER BY total_sales DESC;

-- Top 5 customers by revenue
SELECT customer_id, SUM(quantity_sold * unit_price) AS revenue
FROM sales_data
GROUP BY customer_id
ORDER BY revenue DESC
LIMIT 5;

-- Monthly sales trends
SELECT DATE_TRUNC('month', sale_date) AS month, SUM(quantity_sold * unit_price) AS monthly_sales
FROM sales_data
GROUP BY month
ORDER BY month;
