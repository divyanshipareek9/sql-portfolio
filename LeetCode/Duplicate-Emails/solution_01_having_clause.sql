-- ======================================================================================
-- PLATFORM         : LeetCode #182 (Duplicate Emails)
-- CORE MECHANICS   : Group Filtering via HAVING Clause
-- --------------------------------------------------------------------------------------
-- TECHNICAL LOGIC:
-- 1. Natively buckets the dataset rows using 'GROUP BY email'.
-- 2. Directly evaluates the aggregated metrics in-place using 'HAVING COUNT(email) > 1'.
-- 3. Eliminates subquery memory allocation overhead, making it faster and cleaner.
-- ======================================================================================

SELECT email AS Email
FROM Person
GROUP BY email
HAVING COUNT(email) > 1;
