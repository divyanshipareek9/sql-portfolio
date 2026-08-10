# 👔 Employees Earning More Than Their Managers (LeetCode #181)

> 📋 [Click here to view the full Database Schema & Constraints](./problem.md)

## 🎯 Business Context & Analytics Value
Analyzing organizational charts, internal corporate compensation data, and reporting hierarchies is a frequent requirement in HR and Workforce Analytics. In transactional enterprise systems, company reporting trees are typically flat-mapped into a single table where rows reference other rows within the exact same dataset (via an employee-to-manager link). Mapping these vertical relationships allows teams to run variance analyses, audit compensation bands, and monitor corporate operational structures.

---

## 🛠️ Comparative Analytics Breakdown

### Approach 1: Explicit Inner Self-Join Configuration 🌟 [Recommended Portfolio Choice]
* **File Reference**: `solution_01_self_join.sql`
* **Analytical Logic**: Treats the single `Employee` table as two distinct entities by assigning two separate aliases: `e` (for individual employees) and `m` (for their respective managers). It matches rows by linking `e.managerId = m.id` and applies a structural filter where `e.salary > m.salary`.
* **Business Advantage**: Highly declarative, clean, and highly optimized for enterprise relational query engines. It uses standard relational join logic to merge cross-row variables into a unified reporting layout, making it easy for database engines to parse efficiently.

### Approach 2: Correlated Subquery Filter
* **File Reference**: `solution_02_subquery.sql`
* **Analytical Logic**: Evaluates manager data fields row-by-row on the fly without using an explicit join statement. For every individual employee row scanned in the outer query, the inner subquery searches and pulls their specific manager's salary record where `m.id = e.managerId`.
* **Use Case Context**: While less efficient than a join for massive production tables due to the row-by-row checking cycle, this method is highly useful for quick ad-hoc data isolation when you want to filter a primary list without changing the query's base table layout.

---

## 📊 Analytics Environment & System Compatibility

| Evaluation Metric | Approach 1 (Inner Self-Join Matrix) | Approach 2 (Correlated Subquery) |
| :--- | :--- | :--- |
| **Primary Use Case** | Corporate organizational audits and workforce tracking | Quick ad-hoc dataset filtering |
| **Code Readability** | High (Clean alias separation between staff and management) | Moderate (Requires nested structure parsing) |
| **Execution Path** | Direct index matching over a self-referencing primary key layer | Multi-stage row-by-row lookups |
| **Engine Portability** | Universal (Standard ANSI SQL compliant) | Universal (Standard ANSI SQL compliant) |
