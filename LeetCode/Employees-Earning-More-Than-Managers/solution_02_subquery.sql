-- ====================================================================================
-- PLATFORM         : LeetCode #181 (Employees Earning More Than Their Managers)
-- CORE MECHANICS   : Correlated Subquery Layering
-- ------------------------------------------------------------------------------------
-- TECHNICAL LOGIC:
-- 1. Outer query loops through every individual employee record line by line.
-- 2. For each employee, the inner subquery scans the database to find their specific 
--    manager's salary where 'm.id = e.managerId'.
-- 3. Compares the two salary values row-by-row on the fly without a formal JOIN.
-- ====================================================================================

SELECT name AS Employee
FROM Employee e
WHERE salary > (
    SELECT salary 
    FROM Employee m 
    WHERE m.id = e.managerId
);
