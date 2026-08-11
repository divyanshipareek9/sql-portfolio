-- =====================================================================================
-- PLATFORM         : LeetCode #586 (Customer Placing the Largest Number of Orders)
-- CORE MECHANICS   : GROUP BY Aggregation with ORDER BY + LIMIT 1 Exclusion
-- -------------------------------------------------------------------------------------
-- TECHNICAL LOGIC:
-- 1. Clusters transactional records into customer buckets using 'GROUP BY'.
-- 2. Evaluates the count of individual transactions via 'COUNT(order_number)'.
-- 3. Arranges rows in descending order to place the maximum frequency at the very top.
-- 4. Extracts the first row index via 'LIMIT 1' to isolate the single volume winner.
-- =====================================================================================

SELECT customer_number
FROM Orders
GROUP BY customer_number
ORDER BY COUNT(order_number) DESC
LIMIT 1;
