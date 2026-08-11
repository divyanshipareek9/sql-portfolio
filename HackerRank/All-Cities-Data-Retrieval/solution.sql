-- ===================================================================================
-- PLATFORM         : HackerRank (SQL - Basic Select)
-- PROBLEM          : Select All
-- CORE MECHANICS   : Unbounded Wildcard Row & Column Extraction (SELECT *)
-- -----------------------------------------------------------------------------------
-- TECHNICAL LOGIC:
-- 1. Utilizes the database wildcard operator '*' to request all horizontal fields.
-- 2. Sets the reference scope to pull directly from the active 'CITY' table.
-- 3. Avoids any 'WHERE' clause filters to ensure absolute historical completeness.
-- ===================================================================================

SELECT *
FROM CITY;
