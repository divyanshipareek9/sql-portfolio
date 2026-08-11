# 🏙️ Japan Cities Name Projection (HackerRank)

> 📋 [Click here to view the full Database Schema & Constraints](./problem.md)

## 🎯 Business Context & Analytics Value
Isolating specific string attributes based on geographic partitions is a foundational task in market catalog mapping, localized marketing outreach, and directory generation. In enterprise corporate environments, selecting just the identity strings (like names) without pulling heavy structural metrics minimizes dataset payload transmission size, optimizes memory allocation, and feeds clean text matrices directly into client-facing application views.

---

## 🛠️ Analytics Breakdown

### Approach 1: Target Vertical Attribute Projection (`SELECT NAME ... WHERE COUNTRYCODE = 'JPN'`) 🌟 [Implemented]
* **File Reference**: `solution.sql`
* **Analytical Logic**: Restricts vertical attributes by explicitly declaring `SELECT NAME` instead of utilizing a general wildcard operator. It pairs this with a horizontal string equality filter (`WHERE COUNTRYCODE = 'JPN'`).
* **Business Advantage**: Highly optimized. By selecting only the columns needed for the business requirement, it reduces network data transfer and ensures lean execution paths during large data warehouse lookups.

---

## 📊 Analytics Environment & System Compatibility

| Evaluation Metric | Approach 1 (Target Column Projection with Filtering) |
| :--- | :--- |
| **Primary Use Case** | Content localization, text category extraction, and directory lookups |
| **Execution Complexity** | Low (Single-pass lookup filtering loop over country tags) |
| **Attribute Pruning** | High (Excludes all infrastructure metadata fields except for city name) |
| **Engine Portability** | Universal (Standard ANSI SQL core syntax compliant) |
