-- ====================================================================================
-- PLATFORM         : HackerRank (SQL - Basic Select)
-- PROBLEM          : Japan Cities Name Projection
-- CORE MECHANICS   : Specific Attribute Projection with String Literal Filtering
-- ------------------------------------------------------------------------------------
-- TECHNICAL LOGIC:
-- 1. Explicitly pulls only the 'NAME' column field to eliminate redundant data fields.
-- 2. Scopes the database search space directly to the active 'CITY' data table.
-- 3. Sets an exact categorical row restriction via 'WHERE COUNTRYCODE = 'JPN''.
-- ====================================================================================

SELECT NAME
FROM CITY
WHERE COUNTRYCODE = 'JPN';
