# 🏙️ All Cities Data Retrieval (HackerRank)

> 📋 [Click here to view the full Database Schema & Constraints](./problem.md)

## 🎯 Business Context & Analytics Value
Full dataset extraction (or horizontal ingestion) is the foundational stage of any Extract, Transform, Load (ETL) data engineering pipeline. Before performing complex cleaning layers, statistical clustering, or training predictive machine learning models, analysts must be capable of extracting a complete historical record snapshot from an operational source system database to seed downstream data lake tables.

---

## 🛠️ Analytics Breakdown

### Approach 1: Unbounded Wildcard Record Extraction (`SELECT *`) 🌟 [Implemented]
* **File Reference**: `solution.sql`
* **Analytical Logic**: Employs the master relational wildcard indicator `*` immediately following the select directive. This tells the database execution parser to dynamically pull all registered schema attributes across every horizontal row element stored inside the `CITY` dataset frame without pruning barriers.
* **Business Advantage**: Extremely straightforward and adaptive. It ensures absolute data completeness during early-stage ad-hoc explorations and initial dataset audits.

---

## 📊 Analytics Environment & System Compatibility

| Evaluation Metric | Approach 1 (Unbounded Selection) |
| :--- | :--- |
| **Primary Use Case** | Raw data ingestion staging, backup snapshots, and initial schema discovery |
| **Execution Path** | Full horizontal database page scan without filtering overhead |
| **Attribute Pruning** | None (100% column preservation across the active structure) |
| **Engine Portability** | Universal (Standard ANSI SQL core syntax compliant) |
