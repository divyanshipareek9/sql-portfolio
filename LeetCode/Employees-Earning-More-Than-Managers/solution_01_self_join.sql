-- =====================================================================================
-- PLATFORM         : LeetCode #181 (Employees Earning More Than Their Managers)
-- CORE MECHANICS   : Explicit Inner Self-Join
-- -------------------------------------------------------------------------------------
-- TECHNICAL LOGIC:
-- 1. Opens two virtual copies of the same table: 'e' (staff) and 'm' (managers).
-- 2. Links employee rows directly to their manager rows via 'ON e.managerId = m.id'.
-- 3. Filters the combined dataset to isolate employees earning more than their manager.
-- 4. Analytics Note: This is highly optimized and scalable for large corp tables.
-- =====================================================================================

SELECT e.name AS Employee
FROM Employee e
INNER JOIN Employee m ON e.managerId = m.id
WHERE e.salary > m.salary;
