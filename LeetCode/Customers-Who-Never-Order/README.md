# 🛒 Customers Who Never Order (LeetCode #183)

> 📋 [Click here to view the full Database Schema & Constraints](./problem.md)

## 🎯 Business Context & Analytics Value
Understanding user engagement and purchasing cycles is fundamental for marketing analytics, customer retention strategies, and calculating Customer Lifetime Value (CLV). In a corporate data ecosystem, identifying the inactive user cohort—customers who created accounts but never completed a transaction—allows growth teams to trigger targeted re-engagement campaigns and isolate drop-off friction in the user onboarding funnel.

---

## 🛠️ Comparative Analytics Breakdown

### Approach 1: Left Exclusion Join (`LEFT JOIN` + `IS NULL`) 🌟 [Recommended Portfolio Choice]
* **File Reference**: `solution_01_left_join.sql`
* **Analytical Logic**: Combines the full `Customers` matrix with the `Orders` transactional ledger. By filtering for records where the right-side join attribute (`o.customerId`) is natively `NULL`, it cleanly isolates customers without purchase records.
* **Business Advantage**: Highly scalable and highly optimized for enterprise relational query engines. It avoids heavy nested scans, making it the industry standard for production reporting pipelines.

### Approach 2: Deduplicated Subquery Filtering via `NOT IN`
* **File Reference**: `solution_02_not_in.sql`
* **Analytical Logic**: Compiles an active collection of customer IDs from the transactional table. It leverages `DISTINCT` to shrink execution overhead on massive corporate ledgers, while applying an explicit `WHERE customerId IS NOT NULL` validation rule to shield the evaluation array.
* **Data Integrity Control**: This combination optimizes reporting runtimes. Adding the non-null criteria directly protects the data pipeline, ensuring the core `NOT IN` logic does not break or collapse into an empty dataset if messy row lines slip in.

---

## 📊 Analytics Environment & System Compatibility

| Evaluation Metric | Approach 1 (LEFT JOIN Exclusion) | Approach 2 (NOT IN Subquery) |
| :--- | :--- | :--- |
| **Primary Use Case** | Large-scale database user segmentation | Quick ad-hoc data lookups |
| **Null-Value Handling** | Natively robust and completely safe | Vulnerable if subquery results yield unhandled NULLs |
| **Query Engine Path** | Single scan using index matching layouts | Multi-stage lookups over subquery result tables |
| **Engine Portability** | Universal (Standard ANSI SQL compliant) | Universal (Standard ANSI SQL compliant) |
