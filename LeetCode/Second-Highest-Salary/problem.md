# LeetCode 176: Second Highest Salary
 
**Category:** Relational Databases / Data Retrieval
**Problem Link:** [LeetCode #176 - Second Highest Salary](https://leetcode.com/problems/second-highest-salary/)


---

## 📋 Database Schema

### Table: `Employee`

| Column Name | Type | Description |
| :--- | :--- | :--- |
| `id` | int | Primary key (unique values) for this table. |
| `salary` | int | Contains information about the salary of an employee. |

---

## 🎯 Problem Statement

Write a solution to find the second highest distinct salary from the `Employee` table. 

### ⚠️ Critical Business Constraint
If there is no second highest salary (e.g., the table only has 1 unique salary entry or is empty), the query **must return `null`**.

---

## 📊 Evaluation Examples

### Example 1

#### Input Data: `Employee` Table

| id | salary |
| :--- | :--- |
| 1 | 100 |
| 2 | 200 |
| 3 | 300 |

#### Expected Output Matrix:

| SecondHighestSalary |
| :--- |
| 200 |

### Example 2

#### Input Data: `Employee` Table

| id | salary |
| :--- | :--- |
| 1 | 100 |

#### Expected Output Matrix:

| SecondHighestSalary |
| :--- |
| null |
