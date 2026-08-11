# 🌡️ Rising Temperature (LeetCode #197)

> 📋 [Click here to view the full Database Schema & Constraints](./problem.md)

## 🎯 Business Context & Analytics Value
Tracking daily, monthly, or rolling performance shifts over consecutive time windows is fundamental for operational metrics. Whether analyzing temperature variances, computing month-over-month revenue velocity, or auditing daily website traffic spikes, data analysts must know how to align chronological intervals. This project showcases how to execute self-referential date comparisons and track sequential day-over-day changes.

---

## 🛠️ Comparative Analytics Breakdown

### Approach 1: Self-Join with Temporal Calculation (`DATEDIFF`) 🌟 [Recommended Production Standard]
* **File Reference**: `solution_01_datediff.sql`
* **Analytical Logic**: Self-joins the `Weather` table onto itself (`w1` as today, `w2` as yesterday). It establishes strict chronological alignment by verifying that the difference between dates is exactly one day using `DATEDIFF(w1.recordDate, w2.recordDate) = 1`, and then filters out rows where `w1.temperature > w2.temperature`.
* **Business Advantage**: Highly defensive and accurate. Using specialized system functions like `DATEDIFF()` prevents pipeline reporting bugs that happen if consecutive dates have missing records or jump across year/month boundaries.

### Approach 2: Analytical Window Functions (`LAG`)
* **File Reference**: `solution_02_window_lag.sql`
* **Analytical Logic**: Utilizes a Common Table Expression (CTE) to view the dataset sequentially. It leverages `LAG() OVER (ORDER BY recordDate)` to peek at the immediately preceding row, pulling yesterday's temperature and yesterday's date onto the current reporting row on the fly.
* **Modern Data Stack Context**: This is the preferred analytics pattern inside modern cloud data warehouses (Snowflake, BigQuery, Redshift) because it avoids expensive cross-table join processing loops. To handle missing dates safely, an outer filter verifies `DATEDIFF(recordDate, prev_date) = 1`.

---

## 📊 Analytics Environment & System Compatibility

| Evaluation Metric | Approach 1 (Self-Join + DATEDIFF) | Approach 2 (Window LAG Layer) |
| :--- | :--- | :--- |
| **Primary Use Case** | Traditional OLTP transactional databases | Modern cloud-based BI data pipelines |
| **Date Alignment Method** | Explicit temporal calculation matrix | Sequential row shifting analytics |
| **Missing-Date Safety** | Built-in (Ignores non-consecutive jumps) | Enforced via defensive `DATEDIFF` filtering |
| **Engine Portability** | MySQL Native syntax standard | Highly compatible with ANSI SQL/Modern Warehouses |
