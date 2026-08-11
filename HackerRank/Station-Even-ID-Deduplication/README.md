# 🏙️ Station Even ID Deduplication (HackerRank)

> 📋 [Click here to view the full Database Schema & Constraints](./problem.md)

## 🎯 Business Context & Analytics Value
Data sanitation, index-based sampling, and row deduplication are standard procedures in data engineering pipelines. In enterprise analytics environments, databases frequently collect redundant event strings or logs from identical locations. Isolating unique spatial attributes (`DISTINCT CITY`) while using mathematical partitioning (like even identifier filtering) provides an optimized method to run fractional database profiling, A/B testing splits, or randomized dataset audits.

---

## 🛠️ Analytics Breakdown

### Approach 1: Mathematical Modulo Filter with Deduplication (`DISTINCT` + `% 2 = 0`) 🌟 [Implemented]
* **File Reference**: `solution.sql`
* **Analytical Logic**: Leverages the modulo operator `ID % 2 = 0` to mathematically isolate records sitting on even-numbered rows. Simultaneously, it applies the vertical constraint `DISTINCT` to discard redundant duplicate string entries from the output stream.
* **Business Advantage**: Extremely efficient. It purges dirty data duplicates and filters specific record subsets directly during the table scan, ensuring lightweight memory allocation.

---

## 📊 Analytics Environment & System Compatibility

| Evaluation Metric | Approach 1 (Modulo Filter + Deduplication) |
| :--- | :--- |
| **Primary Use Case** | Dataset profiling, system data sanitation, and algorithmic row sampling |
| **Math Parity Method** | Numeric modulo validation loop (`ID % 2 = 0`) |
| **Deduplication Engine** | Hard hash-bucket unique grouping (`DISTINCT`) |
| **Engine Portability** | Universal (Standard ANSI SQL modulo and keyword syntax compliant) |
