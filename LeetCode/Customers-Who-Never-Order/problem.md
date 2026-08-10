# LeetCode 183: Customers Who Never Order

**Category:** Relational Databases / Table Joins & Filtering  
**Problem Link:** [LeetCode #183 - Customers Who Never Order](https://leetcode.com)

---

## 📋 Database Schema

### Table: `Customers`

| Column Name | Type | Description |
| :--- | :--- | :--- |
| `id` | int | Primary key (unique values) for this table. |
| `name` | varchar | Contains the name of the customer. |

### Table: `Orders`

| Column Name | Type | Description |
| :--- | :--- | :--- |
| `id` | int | Primary key (unique values) for this table. |
| `customerId` | int | Foreign key referencing the `id` from the `Customers` table. |

---

## 🎯 Problem Statement

Write a solution to find all customers who never order anything.

The result table can be returned in any order.

---

## 📊 Evaluation Example

### Input Data

#### `Customers` Table:

| id | name |
| :--- | :--- |
| 1 | Joe |
| 2 | Henry |
| 3 | Sam |
| 4 | Max |

#### `Orders` Table:

| id | customerId |
| :--- | :--- |
| 1 | 3 |
| 2 | 1 |

### Expected Output Matrix:

| Customers |
| :--- |
| Henry |
| Max |
