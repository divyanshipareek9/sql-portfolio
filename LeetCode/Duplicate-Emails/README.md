# 📨 Duplicate Emails (LeetCode #182)

> 📋 [Click here to view full Database Schema & Constraints](./problem.md)

## 🎯 Business Context & Analytics Value
Data cleanliness and user deduplication are foundational tasks in CRM management and operational growth analytics. In enterprise data pipelines, undetected duplicate email identifiers can severely distort customer metrics, inflate marketing outreach budgets, and skew active user performance logs. Isolating duplicates is the vital first step of any rigorous data sanitation framework.

---

## 🛠️ Comparative Analytics Breakdown

### Approach 1: Direct Group Aggregation with HAVING 🌟 [Recommended Portfolio Choice]
* **File Reference**: `solution_01_having_clause.sql`
* **Analytical Logic**: Segments records directly by email categories and instantly prunes grouped rows in place using `HAVING COUNT(email) > 1`.
* **Business Advantage**: Highly declarative and clean. It cuts down query length and removes the memory overhead of spawning inner virtual views, making it the preferred pattern for rapid database profiling tasks.

### Approach 2: Virtual Inline Aggregation via Subquery
* **File Reference**: `solution_02_subquery.sql`
* **Analytical Logic**: Constructs an internal temporary grid view using a subquery to aggregate row groups via `GROUP BY email` and counts occurrences using `COUNT(email) AS cnt`. The outer reporting layer dynamically isolates accounts meeting the duplicate criteria via `WHERE cnt > 1`.
* **Use Case Advantage**: While slightly more verbose than standard filtering clauses, capturing aggregation summary metrics (`cnt`) cleanly inside an autonomous subquery layer is highly effective when you need to pass transactional frequencies onward to complex downstream multi-table joins.

---

## 📊 Analytics Environment & System Compatibility

| Evaluation Metric | Approach 1 (Subquery View) | Approach 2 (HAVING Clause) |
| :--- | :--- | :--- |
| **Primary Use Case** | Multi-tiered data cleaning pipelines | Quick ad-hoc dataset deduplication |
| **Code Readability** | Moderate (Requires subquery structural parsing) | High (Short, declarative syntax) |
| **Execution Path** | Subquery layer pass before outer extraction | Direct, single-pass filtering over grouped buckets |
| **Engine Portability** | Universal (Standard ANSI SQL compliant) | Universal (Standard ANSI SQL compliant) |
