# HackerRank: Station Regional Projection

**Problem Name:** Weather Observation Station 1  
**Category:** Relational Databases / Column-Specific Attribute Projection  
**Problem Link:** [HackerRank - Weather Observation Station 1](https://hackerrank.com)

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

Query a list of `CITY` and `STATE` from the **STATION** table.

---

## 📊 Evaluation Example

### Sample Input Data: `STATION` Table

| ID | CITY | STATE | LAT_N | LONG_W |
| :--- | :--- | :--- | :--- | :--- |
| 794 | Kissee Mills | MO | 30.01 | 120.45 |
| 824 | Loma Mar | CA | 35.12 | 115.67 |

### Expected Output Matrix:

| CITY | STATE |
| :--- | :--- |
| Kissee Mills | MO |
| Loma Mar | CA |

**Explanation:**  
* The query isolates and projects exactly two operational tracking dimensions (`CITY` and `STATE`), dropping the infrastructural metadata columns (`ID`, `LAT_N`, `LONG_W`) entirely from the output grid.
