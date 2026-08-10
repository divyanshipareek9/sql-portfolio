# LeetCode 197: Rising Temperature

**Category:** Relational Databases / Time-Series & Date Manipulation  
**Problem Link:** [LeetCode #197 - Rising Temperature](https://leetcode.com)

---

## 📋 Database Schema

### Table: `Weather`

| Column Name | Type | Description |
| :--- | :--- | :--- |
| `id` | int | Primary key (column with unique values) for this table. |
| `recordDate` | date | Contains the specific calendar calendar day details. |
| `temperature` | int | Represents the recorded temperature value for that date. |

---

## 🎯 Problem Statement

Write a solution to find all dates' `id` with higher temperatures compared to its previous dates (yesterday).

The result table can be returned in any order.

---

## 📊 Evaluation Example

### Input Data: `Weather` Table

| id | recordDate | temperature |
| :--- | :--- | :--- |
| 1 | 2015-01-01 | 10 |
| 2 | 2015-01-02 | 25 |
| 3 | 2015-01-03 | 20 |
| 4 | 2015-01-04 | 30 |

### Expected Output Matrix:

| id |
| :--- |
| 2 |
| 4 |

**Explanation:**  
* On 2015-01-02, the temperature was higher than the previous day (25 > 10).
* On 2015-01-04, the temperature was higher than the previous day (30 > 20).
