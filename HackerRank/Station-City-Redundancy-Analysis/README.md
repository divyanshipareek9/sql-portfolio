# 🏙️ Station City Redundancy Analysis (HackerRank)

> 📋 [Click here to view the full Database Schema & Constraints](./problem.md)

## 🎯 Business Context & Analytics Value
Quantifying data redundancy and calculating entry duplication density are foundational steps in Data Quality Assurance (DQA). In enterprise data warehouses, understanding the variance between total records and unique entities allows analysts to measure database inflation, identify data entry anomalies, and assess the cleanliness of customer or location registries before running downstream machine learning models.

---

## 🛠️ Analytics Breakdown

### Approach 1: Mathematical Aggregation Delta (`COUNT` - `COUNT DISTINCT`) 🌟 [Implemented]
* **File Reference**: `solution.sql`
* **Analytical Logic**: Combines total volume calculation via `COUNT(CITY)` with a deduplicated unique volume scan via `COUNT(DISTINCT CITY)`. Subtracting these two aggregate metrics isolates the exact number of redundant duplicate records.
* **Business Advantage**: Extremely lightweight and efficient. It uses native SQL summary metrics to perform data validation checkups in a single data scan, avoiding complex subquery tables.

---

## 📊 Analytics Environment & System Compatibility

| Evaluation Metric | Approach 1 (Aggregation Delta) |
| :--- | :--- |
| **Primary Use Case** | Data quality health checks and integrity auditing |
| **Volume Calculation** | Raw total count vs. strict unique hash summary |
| **Memory Efficiency** | High (Processes purely in-memory scalar numbers) |
| **Engine Portability** | Universal (Standard ANSI SQL core syntax compliant) |
