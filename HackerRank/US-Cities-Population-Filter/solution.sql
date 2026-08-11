-- ============================================================================================
-- PLATFORM         : HackerRank (SQL - Basic Select)
-- PROBLEM          : Revising the Select Query I
-- CORE MECHANICS   : Multi-Condition Logical Filtering (WHERE ... AND)
-- --------------------------------------------------------------------------------------------
-- TECHNICAL LOGIC:
-- 1. Utilizes the wildcard operator '*' to extract the entire horizontal attribute structure.
-- 2. Sets the structural scope explicitly to target the 'CITY' data entity frame.
-- 3. Filters categories via 'WHERE COUNTRYCODE = 'USA'' to isolate American locales.
-- 4. Chains a metric constraint via 'AND POPULATION > 100000' to extract size outliers.
-- ============================================================================================

SELECT *
FROM CITY
WHERE COUNTRYCODE = 'USA'
  AND POPULATION > 100000;
