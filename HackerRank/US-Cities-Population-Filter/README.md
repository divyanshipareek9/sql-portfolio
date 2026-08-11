# 🏙️ US Cities Population Filter (HackerRank)

> 📋 [Click here to view the full Database Schema & Constraints](./problem.md)

## 🎯 Business Context & Analytics Value
Geographic dataset segmentation and threshold filtering are core tasks in demographic analytics, regional sales targeting, and expansion mapping. For data teams, isolating markets that fulfill multiple operational constraints simultaneously (such as locating major economic hubs with specific minimum population dense points within a designated country territory) allows organizations to deploy localized marketing capital efficiently and calculate accurate regional market sizing.

---

## 🛠️ Analytics Breakdown

### Approach 1: Multi-Condition Selection Profile (`WHERE ... AND`) 🌟 [Implemented]
* **File Reference**: `solution.sql`
* **Analytical Logic**: Leverages a structural baseline selection grid. It captures the entire attribute layout using the wildcard character `*` and chains a dual-layered horizontal constraint row filter using `WHERE COUNTRYCODE = 'USA' AND POPULATION > 100000`.
* **Business Advantage**: Highly descriptive, straightforward, and efficient. It filters rows out early in the engine execution pipeline, keeping data warehouse resource utilization extremely lean during bulk scanning runs.

---

## 📊 Analytics Environment & System Compatibility

| Evaluation Metric | Approach 1 (Multi-Condition Row Filter) |
| :--- | :--- |
| **Primary Use Case** | Market segmentation, data exploration, and regional business profiling |
| **Code Complexity** | Low (Clean, single-pass filtering architecture) |
| **Boolean Gate Logic** | Strict logical conjunction (Both country and population flags must match) |
| **Engine Portability** | Universal (Standard ANSI SQL core syntax compliant) |
