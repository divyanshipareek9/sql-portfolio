-- ===================================================================================
-- PLATFORM         : LeetCode #176 (Second Highest Salary)
-- CORE MECHANICS   : DENSE_RANK() via CTE with Outer MAX() Aggregation
-- ===================================================================================
-- TECHNICAL LOGIC:
-- 1. Generates sequential signatures via DENSE_RANK() to handle duplicate wage ties.
-- 2. Isolates the specific target position using a modular CTE layout ('WHERE rnk = 2').
-- 3. Deploys an outer 'MAX()' aggregation. This handles small or empty datasets by
--    safely forcing an empty row set to evaluate as a single-row NULL value,
--    ensuring business intelligence dashboard stability (Tableau/Power BI).
-- ===================================================================================

WITH RankedSalaries AS (
    SELECT salary, 
           DENSE_RANK() OVER (ORDER BY salary DESC) AS rnk
    FROM Employee
)
SELECT MAX(salary) AS SecondHighestSalary
FROM RankedSalaries
WHERE rnk = 2;
