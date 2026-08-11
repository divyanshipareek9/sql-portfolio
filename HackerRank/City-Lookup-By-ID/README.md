# 🏙️ City Lookup By ID (HackerRank)

> 📋 [Click here to view the full Database Schema & Constraints](./problem.md)

## 🎯 Business Context & Analytics Value
Isolating an individual record using a unique identifier is a core transactional operation in database administration, customer support ticketing, and application logging. In enterprise environments, tracking down a specific row via its primary key value allows analysts to perform exact audit reviews, investigate unique anomaly flags, or fetch isolated profile rows instantly without processing unneeded bulk data.

---

## 🛠️ Analytics Breakdown

### Approach 1: Primary Identifier Row Extraction (`WHERE ID = 1661`) 🌟 [Implemented]
* **File Reference**: `solution.sql`
* **Analytical Logic**: Combines full column extraction (`SELECT *`) with an exact primary index equality filter (`WHERE ID = 1661`). This commands the engine to look up the exact primary key location directly.
* **Business Advantage**: Extremely highly optimized. Because primary keys are natively indexed by relational database engines, this lookup runs in constant time, bypassing slow table scans and minimizing execution overhead.

---

## 📊 Analytics Environment & System Compatibility

| Evaluation Metric | Approach 1 (Primary Key Index Filter) |
| :--- | :--- |
| **Primary Use Case** | Transactional audits, targeted profile lookups, and single-row entity fetching |
| **Execution Complexity** | Extremely Low (Direct index seek path instead of full horizontal scans) |
| **Row Multiplicity** | Strict Singleton (Guaranteed to return exactly 1 row or 0 rows due to primary key constraints) |
| **Engine Portability** | Universal (Standard ANSI SQL core syntax compliant) |
