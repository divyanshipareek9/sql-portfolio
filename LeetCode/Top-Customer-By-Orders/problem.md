# LeetCode 586: Customer Placing the Largest Number of Orders

**Category:** Relational Databases / Transactional Frequency Aggregation  
**Problem Link:** [LeetCode #586 - Customer Placing the Largest Number of Orders](https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/)

---

## 📋 Database Schema

### Table: `Orders`

| Column Name | Type | Description |
| :--- | :--- | :--- |
| `order_number` | int | Primary key representing the unique identification code for an order. |
| `customer_number` | int | Identifies the specific customer account placing the order. |

---

## 🎯 Problem Statement

Write a solution to find the `customer_number` for the customer who has placed the largest number of orders.

The test cases are generated so that exactly one customer will have placed more orders than any other customer.

---

## 📊 Evaluation Example

### Input Data: `Orders` Table

| order_number | customer_number |
| :--- | :--- |
| 1 | 1 |
| 2 | 2 |
| 3 | 3 |
| 4 | 3 |

### Expected Output Matrix:

| customer_number |
| :--- |
| 3 |
