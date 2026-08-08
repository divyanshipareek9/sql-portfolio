-- Solution for Global Invoice Metrics Analysis
-- Technical Strategy: Multi-table JOIN with dynamic filtering via aggregate subquery

SELECT 
    co.country_name, 
    COUNT(i.id) AS total_invoices, 
    ROUND(AVG(i.total_price), 6) AS average_amount
FROM country co
JOIN city ci ON co.id = ci.country_id
JOIN customer cu ON ci.id = cu.city_id
JOIN invoice i ON cu.id = i.customer_id
GROUP BY co.id, co.country_name
HAVING AVG(i.total_price) > (SELECT AVG(total_price) FROM invoice);
