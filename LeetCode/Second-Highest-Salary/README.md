# 🥈 Second Highest Salary (LeetCode #176)

> 📋 [Click here to view the full Database Schema & Constraints](./problem.md)

## 🎯 Business Context & Analytics Value
In corporate reporting, extracting specific rank-based metrics (e.g., the second-highest earner, the runner-up sales region, or the second-most-purchased product) is essential for trend analysis and outlier detection. 

A frequent hazard in automated data reporting pipelines is an empty database state. If an executive dashboard requests a "runner-up" metric on a branch dataset that contains fewer than two data points, a standard database query will return a blank table (0 rows). This breaks downstream visualization tools like Tableau or Power BI. This project demonstrates two distinct methodologies to enforce strict data integrity by safely converting missing data states into native, structured `NULL` records.

---

## 🛠️ Comparative Analytics Breakdown

### Approach 1: Scalar Subquery with LIMIT & OFFSET
* **File Reference**: `solution_01_limit_offset.sql`
* **Analytical Logic**: Eliminates salary duplicates using `DISTINCT`, orders records from highest to lowest, and isolates the specific secondary position by skipping the absolute maximum row via `LIMIT 1 OFFSET 1`.
* **Data Integrity Control**: Running a standalone `LIMIT` operation on an inadequate dataset triggers an empty set output. To prevent dashboard reporting breaks, this lookup is wrapped inside an outer scalar `SELECT ( ... ) AS SecondHighestSalary`. This configuration forces the MySQL database engine to safely output a structured, single-row `NULL` state whenever the evaluation criteria are unfulfilled.

### Approach 2: Window Functions via CTE (`DENSE_RANK`) 🌟 [Recommended Portfolio Choice]
* **File Reference**: `solution_02_window_fn.sql`
* **Analytical Logic**: Utilizes a Common Table Expression (CTE) to create a clean virtual reporting layout. It dynamically assigns dense sequential rank values to rows via `DENSE_RANK() OVER (ORDER BY salary DESC)` without skipping numerical positions during wage ties. The final layer filters for rows where `rnk = 2`.
* **Data Integrity Control**: To handle instances where a rank of `2` does not exist, the outer reporting layer deploys the aggregate function `SELECT MAX(salary)`. By standard relational database logic, evaluating an aggregate function against an empty dataset forces the platform to safely generate a single row populated with a primitive `NULL`.
* **Business Scalability**: High. While Approach 1 requires a structural query change if the reporting scope changes, this window function design is built to scale. Shifting the business target from the "2nd highest" metrics to the "3rd, 5th, or N-th highest" tracking points simply requires modifying a single filtering argument (`WHERE rnk = N`).

---

## 📊 Analytics Environment & System Compatibility

| Evaluation Metric | Approach 1 (LIMIT/OFFSET) | Approach 2 (DENSE_RANK) |
| :--- | :--- | :--- |
| **Primary Use Case** | Quick ad-hoc data lookups | Enterprise business intelligence & reporting loops |
| **Tie Handling Capability** | Skips ties via manual `DISTINCT` clustering | Handles ties natively via partition index algorithms |
| **Reporting Scalability** | Low (Requires structural rewrite for Top-N metrics) | Exceptional (Adapts to any N-th rank via single variable modification) |
| **Engine Portability** | Universal (Compatible with legacy MySQL environments) | Enterprise (Requires Modern SQL Standards - MySQL 8.0+) |

* **Architectural Takeaway**: For traditional ad-hoc analysis, Approach 1 is highly efficient. However, for building production-ready automated reporting systems, **Approach 2** is the superior analytical choice due to its robust handling of dense ranking scenarios and its adaptability to changing business requirements.
