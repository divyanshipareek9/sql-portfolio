# HackerRank: Select By ID

**Category:** Relational Databases / Primary Key Record Selection  
**Problem Link:** [HackerRank - Select By ID](https://hackerrank.com)

---

## 📋 Database Schema

### Table: `CITY`

| Column Name | Type | Description |
| :--- | :--- | :--- |
| `ID` | NUMBER | The unique identification number for each city record (Primary Key). |
| `NAME` | VARCHAR2(17) | The plain text name of the city. |
| `COUNTRYCODE` | VARCHAR2(3) | The 3-letter regional country code abbreviation (e.g., USA). |
| `DISTRICT` | VARCHAR2(20) | The specific state, district, or territory partition name. |
| `POPULATION` | NUMBER | The registered numerical count of residents living within the city. |

---

## 🎯 Problem Statement

Query all columns for a city in **CITY** with the ID `1661`.

---

## 📊 Evaluation Example

### Sample Input Data: `CITY` Table

| ID | NAME | COUNTRYCODE | DISTRICT | POPULATION |
| :--- | :--- | :--- | :--- | :--- |
| 1661 | Sayreville | USA | New Jersey | 37498 |
| 3878 | Scottsdale | USA | Arizona | 202705 |

### Expected Output Matrix:

| ID | NAME | COUNTRYCODE | DISTRICT | POPULATION |
| :--- | :--- | :--- | :--- | :--- |
| 1661 | Sayreville | USA | New Jersey | 37498 |

**Explanation:**  
* The query utilizes the unique primary identifier attribute to cleanly isolate and extract the single row element matching `ID = 1661`.
