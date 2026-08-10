# LeetCode 181: Employees Earning More Than Their Managers

**Difficulty:** Easy  
**Category:** Relational Databases / Self-Joins & Hierarchical Data  
**Problem Link:** [LeetCode #181 - Employees Earning More Than Their Managers](https://leetcode.com)

---

## 📋 Database Schema

### Table: `Employee`

| Column Name | Type | Description |
| :--- | :--- | :--- |
| `id` | int | Primary key (unique values) for this table. |
| `name` | varchar | Contains the name of the employee. |
| `salary` | int | Contains information about the salary of an employee. |
| `managerId` | int | Foreign key referencing the `id` of their direct manager. Can be NULL. |

---

## 🎯 Problem Statement

Write a solution to find the employees who earn more than their managers.

The result table can be returned in any order.

---

## 📊 Evaluation Example

### Input Data: `Employee` Table

| id | name | salary | managerId |
| :--- | :--- | :--- | :--- |
| 1 | Joe | 70000 | 3 |
| 2 | Henry | 80000 | 4 |
| 3 | Sam | 60000 | null |
| 4 | Max | 90000 | null |

### Expected Output Matrix:

| Employee |
| :--- |
| Joe |
