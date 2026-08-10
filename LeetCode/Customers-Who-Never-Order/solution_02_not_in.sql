-- ====================================================================================
-- PLATFORM         : LeetCode #183 (Customers Who Never Order)
-- CORE MECHANICS   : Deduplicated Subquery Exclusion with Defensive NULL Filtering
-- ------------------------------------------------------------------------------------
-- TECHNICAL LOGIC:
-- 1. Inner query isolates active customer IDs, using 'DISTINCT' to reduce execution
--    overhead on massive tables, and 'IS NOT NULL' to safeguard the evaluation array.
-- 2. Outer query filters the main ledger to pull profiles missing from that clean list.
-- 3. Analytics Note: This combination optimizes query processing speeds. Adding 
--    'WHERE customerId IS NOT NULL' protects the data pipeline, ensuring the NOT IN 
--    logic does not break if messy transactional rows slip in.
-- ====================================================================================

SELECT name AS Customers
FROM Customers 
WHERE id NOT IN (
    SELECT DISTINCT customerId 
    FROM Orders 
    WHERE customerId IS NOT NULL
);
