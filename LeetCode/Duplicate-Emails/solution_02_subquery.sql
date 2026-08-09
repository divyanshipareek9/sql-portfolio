-- ===================================================================================
-- PLATFORM         : LeetCode #182 (Duplicate Emails)
-- CORE MECHANICS   : Inline Subquery Aggregation (GROUP BY + COUNT)
-- -----------------------------------------------------------------------------------
-- TECHNICAL LOGIC:
-- 1. Inner query group-clusters entries by email strings and logs their frequencies.
-- 2. External query dynamically queries that inner result dataset table layer.
-- 3. Filters out any unique records by matching rows where 'cnt > 1'.
-- ===================================================================================

SELECT email AS Email
FROM (
    SELECT email, COUNT(email) AS cnt
    FROM Person
    GROUP BY email
) AS EmailCounts
WHERE cnt > 1;
