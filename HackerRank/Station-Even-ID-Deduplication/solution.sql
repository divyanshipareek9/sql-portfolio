-- =====================================================================================
-- PLATFORM         : HackerRank 
-- PROBLEM          : Station Even ID Deduplication (Weather Observation Station 3)
-- CORE MECHANICS   : Mathematical Modulo Filtering with Unique Deduplication (DISTINCT)
-- -------------------------------------------------------------------------------------
-- TECHNICAL LOGIC:
-- 1. Employs the 'DISTINCT' operator to remove redundant city rows from output logs.
-- 2. Restricts horizontal selection strictly to target the 'CITY' vertical column.
-- 3. Filters rows via 'WHERE ID % 2 = 0' to isolate even primary key records.
-- =====================================================================================

SELECT DISTINCT CITY
FROM STATION
WHERE ID % 2 = 0;
