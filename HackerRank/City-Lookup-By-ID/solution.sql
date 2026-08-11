-- ===================================================================================
-- PLATFORM         : HackerRank (SQL - Basic Select)
-- PROBLEM          : Select By ID
-- CORE MECHANICS   : Primary Key Equality Filtering (WHERE ID = Constant)
-- -----------------------------------------------------------------------------------
-- TECHNICAL LOGIC:
-- 1. Employs the master wildcard character '*' to target all column layout properties.
-- 2. Scopes the data extraction path to pull rows from the 'CITY' directory.
-- 3. Sets an exact row criteria constraint via 'WHERE ID = 1661'.
-- 4. Leverages primary key indexing to perform an instant, high-speed database seek.
-- ===================================================================================

SELECT *
FROM CITY
WHERE ID = 1661;
