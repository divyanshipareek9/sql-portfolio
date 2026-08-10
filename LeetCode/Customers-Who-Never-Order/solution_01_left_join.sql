-- ===================================================================================
-- PLATFORM         : LeetCode #183 (Customers Who Never Order)
-- CORE MECHANICS   : LEFT JOIN with IS NULL Exclusion
-- -----------------------------------------------------------------------------------
-- TECHNICAL LOGIC:
-- 1. Merges the full 'Customers' matrix with the 'Orders' transactional ledger.
-- 2. Evaluates the resulting dataset where the right-side column is completely empty.
-- 3. The 'WHERE o.customerId IS NULL' filter isolates inactive user cohorts safely,
--    making it highly scalable and optimized for large production databases.
-- ===================================================================================

SELECT c.name AS Customers
FROM Customers c
LEFT JOIN Orders o ON c.id = o.customerId
WHERE o.customerId IS NULL;
