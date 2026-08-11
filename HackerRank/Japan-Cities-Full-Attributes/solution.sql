-- ===================================================================================
-- PLATFORM         : HackerRank (SQL - Basic Select)
-- PROBLEM          : Japanese Cities' Attributes
-- CORE MECHANICS   : Categorical Text Filtering (WHERE Column = String Literal)
-- -----------------------------------------------------------------------------------
-- TECHNICAL LOGIC:
-- 1. Employs the master wildcard character '*' to target all column layout properties.
-- 2. Scopes the database search space directly to the active 'CITY' data entity frame.
-- 3. Sets an exact text match row constraint via 'WHERE COUNTRYCODE = 'JPN''.
-- 4. Extracts complete profile metrics exclusively for regional Japanese nodes.
-- ===================================================================================

SELECT *
FROM CITY
WHERE COUNTRYCODE = 'JPN';
