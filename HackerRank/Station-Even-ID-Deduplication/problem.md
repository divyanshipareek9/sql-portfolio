# HackerRank: Station Even ID Deduplication

**Problem Name:** Weather Observation Station 3  
**Category:** Relational Databases / Mathematical Parity Filtering & Deduplication  
**Problem Link:** [HackerRank - Weather Observation Station 3](https://hackerrank.com)

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

Query a list of `CITY` names from **STATION** for cities that have an **even** `ID` number. Print the results in any order, but exclude duplicates from the answer.

---

## 📊 Evaluation Example

### Sample Input Data: `STATION` Table

| ID | CITY | STATE | LAT_N | LONG_W |
| :--- | :--- | :--- | :--- | :--- |
| 22 | New York | NY | 40.71 | 74.00 |
| 23 | Boston | MA | 42.36 | 71.05 |
| 24 | New York | NY | 40.71 | 74.00 |

### Expected Output Matrix:

| CITY |
| :--- |
| New York |

**Explanation:**  
* ID `23` is skipped because it is an odd number.
* IDs `22` and `24` are even numbers, but both map to "New York". The `DISTINCT` operation deduplicates the matrix, leaving exactly one unique record row.
