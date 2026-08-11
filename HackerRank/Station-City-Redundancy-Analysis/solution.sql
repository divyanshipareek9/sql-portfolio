-- ===================================================================================
-- PLATFORM         : HackerRank
-- PROBLEM          : Station City Redundancy Analysis (Weather Observation Station 4)
-- CORE MECHANICS   : Scalar Aggregation Subtraction (COUNT - COUNT DISTINCT)
-- -----------------------------------------------------------------------------------
-- TECHNICAL LOGIC:
-- 1. Evaluates total transaction count entries using 'COUNT(CITY)'.
-- 2. Evaluates unique, deduplicated entity rows via 'COUNT(DISTINCT CITY)'.
-- 3. Subtracts the values to find duplicate metrics and aliases as 'DIFFERENCE'.
-- ===================================================================================

SELECT COUNT(CITY) - COUNT(DISTINCT CITY) AS DIFFERENCE
FROM STATION;
