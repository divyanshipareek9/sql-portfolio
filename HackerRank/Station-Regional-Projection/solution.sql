-- ===================================================================================
-- PLATFORM         : HackerRank (SQL - Basic Select)
-- PROBLEM          : Station Regional Projection (Weather Observation Station 1)
-- CORE MECHANICS   : Multi-Attribute Projection (SELECT Column1, Column2)
-- -----------------------------------------------------------------------------------
-- TECHNICAL LOGIC:
-- 1. Explicitly isolates and pulls 'CITY' and 'STATE' to filter out metadata fields.
-- 2. Scopes the data extraction path to pull rows directly from the 'STATION' ledger.
-- 3. Avoids unneeded wildcard scans to ensure minimal dataset memory allocation.
-- ===================================================================================

SELECT CITY, STATE
FROM STATION;
