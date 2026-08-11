-- ======================================================================================
-- PLATFORM         : LeetCode #197 (Rising Temperature)
-- CORE MECHANICS   : Analytical Window Functions (LAG) via CTE
-- --------------------------------------------------------------------------------------
-- TECHNICAL LOGIC:
-- 1. Employs a CTE to look backward chronologically using 'LAG()' over 'recordDate'.
-- 2. Pulls the previous row's temperature ('prev_temp') and calendar date ('prev_date').
-- 3. Filters results where 'temperature > prev_temp' and validates timeline continuity
--    by confirming 'DATEDIFF(recordDate, prev_date) = 1' to avoid gaps.
-- ======================================================================================

WITH ChronologicalWeather AS (
    SELECT id, recordDate, temperature,
           LAG(temperature) OVER(ORDER BY recordDate) AS prev_temp,
           LAG(recordDate) OVER(ORDER BY recordDate) AS prev_date
    FROM Weather
)
SELECT id
FROM ChronologicalWeather
WHERE temperature > prev_temp 
  AND DATEDIFF(recordDate, prev_date) = 1;
