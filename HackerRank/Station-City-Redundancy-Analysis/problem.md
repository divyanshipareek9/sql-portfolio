# HackerRank: Station City Redundancy Analysis

**Problem Name:** Weather Observation Station 4  
**Category:** Relational Databases / Aggregation & Data Quality Profiling  
**Problem Link:** [HackerRank - Weather Observation Station 4](https://hackerrank.com)

---

## 📋 Database Schema

### Table: `STATION`

| Column Name | Type | Description |
| :--- | :--- | :--- |
| `ID` | NUMBER | The unique identification number for each station record (Primary Key). |
| `CITY` | VARCHAR2(21) | The plain text name of the city where the station is located. |
| `STATE` | VARCHAR2(2) | The 2-letter regional state or territory abbreviation code. |
| `LAT_N` | NUMBER | The registered northern latitude coordinate metric. |
| `LONG_W` | NUMBER | The registered western longitude coordinate metric. |

---

## 🎯 Problem Statement

Find the difference between the total number of `CITY` entries in the table and the number of distinct `CITY` entries in the table.

---

## 📊 Evaluation Example

### Sample Input Data: `STATION` Table

| ID | CITY | STATE | LAT_N | LONG_W |
| :--- | :--- | :--- | :--- | :--- |
| 1 | New York | NY | 40.71 | 74.00 |
| 2 | Boston | MA | 42.36 | 71.05 |
| 3 | New York | NY | 40.71 | 74.00 |

### Expected Output Matrix:

| DIFFERENCE |
| :--- |
| 1 |

**Explanation:**  
* Total count of cities is `3`.
* Distinct count of unique cities is `2` ("New York", "Boston").
* The mathematical difference is `3 - 2 = 1`, proving there is 1 redundant duplicate entry.
