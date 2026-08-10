# LeetCode 182: Duplicate Emails

**Category:** Relational Databases / Data Aggregation
**Problem Link:** [LeetCode #182 - Duplicate Emails](https://leetcode.com/problems/duplicate-emails/)


---

## 📋 Database Schema

### Table: `Person`

| Column Name | Type | Description |
| :--- | :--- | :--- |
| `id` | int | Primary key (unique values) for this table. |
| `email` | varchar | Contains unique or repeating user email addresses. Rows do not contain uppercase letters. |

---

## 🎯 Problem Statement

Write a solution to report all the duplicate emails. Note that it is guaranteed that the email field is not `NULL`.

The result table can be returned in any order.

---

## 📊 Evaluation Example

### Input Data: `Person` Table

| id | email |
| :--- | :--- |
| 1 | a@b.com |
| 2 | c@d.com |
| 3 | a@b.com |

### Expected Output Matrix:

| Email |
| :--- |
| a@b.com |
