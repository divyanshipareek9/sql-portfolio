-- =========================================================================================
-- PLATFORM         : LeetCode #197 (Rising Temperature)
-- CORE MECHANICS   : Self-Join with Explicit Date Manipulation (DATEDIFF)
-- -----------------------------------------------------------------------------------------
-- TECHNICAL LOGIC:
-- 1. Self-joins the 'Weather' table into 'w1' (today) and 'w2' (yesterday).
-- 2. Aligns rows chronologically using 'DATEDIFF(w1.recordDate, w2.recordDate) = 1'.
-- 3. Filters out instances where today's temperature is strictly greater than yesterday's.
-- 4. Analytics Note: Safe against missing calendar dates by ignoring non-consecutive jumps.
-- =========================================================================================

SELECT w1.id
FROM Weather w1
INNER JOIN Weather w2 
    ON DATEDIFF(w1.recordDate, w2.recordDate) = 1
WHERE w1.temperature > w2.temperature;
