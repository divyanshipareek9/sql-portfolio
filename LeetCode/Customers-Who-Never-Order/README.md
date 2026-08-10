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

### Approach 2: Subquery Filtering via `NOT IN`
* **File Reference**: `solution_02_not_in.sql`
* **Analytical Logic**: Compiles a unique list of purchasing customer IDs from the `Orders` ledger layer, and then uses a `NOT IN` filter on the outer customer query to find entries absent from that collection.
* **Risk Note**: While logically straightforward, `NOT IN` predicates can fail or return zero rows if the subquery contains a single unintended `NULL` value. It is vital to handle or guarantee non-null parameters when using this architecture.

---

## 📊 Analytics Environment & System Compatibility

| Evaluation Metric | Approach 1 (LEFT JOIN Exclusion) | Approach 2 (NOT IN Subquery) |
| :--- | :--- | :--- |
| **Primary Use Case** | Large-scale database user segmentation | Quick ad-hoc data lookups |
| **Null-Value Handling** | Natively robust and completely safe | Vulnerable if subquery results yield unhandled NULLs |
| **Query Engine Path** | Single scan using index matching layouts | Multi-stage lookups over subquery result tables |
| **Engine Portability** | Universal (Standard ANSI SQL compliant) | Universal (Standard ANSI SQL compliant) |
