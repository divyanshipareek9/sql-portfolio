-- ===================================================================================
-- PLATFORM         : LeetCode #183 (Customer Placing the Largest Number of Orders)
-- CORE MECHANICS   : DENSE_RANK() via CTE to Seamlessly Resolve Volume Ties
-- -----------------------------------------------------------------------------------
-- TECHNICAL LOGIC:
-- 1. Summarizes row transaction frequencies per client profile inside a CTE layer.
-- 2. Asserts a 'DENSE_RANK()' index sequence sorted by volume outputs descending.
-- 3. Outer query isolates 'WHERE rnk = 1' to cleanly capture the leading customer.
-- 4. Analytics Note: This approach handles business tie constraints perfectly,
--    returning all customer IDs if multiple users share the maximum order count.
-- ===================================================================================

WITH CustomerOrderCounts AS (
    SELECT customer_number,
           COUNT(order_number) AS order_volume,
           DENSE_RANK() OVER (ORDER BY COUNT(order_number) DESC) AS rnk
    FROM Orders
    GROUP BY customer_number
)
SELECT customer_number
FROM CustomerOrderCounts
WHERE rnk = 1;
