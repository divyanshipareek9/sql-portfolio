# HackerRank: Select All

**Category:** Relational Databases / Full Dataset Extraction  
**Problem Link:** [HackerRank - Select All](https://hackerrank.com)

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

Query all columns (attributes) for every row in the **CITY** table.

---

## 📊 Evaluation Example

### Sample Input Data: `CITY` Table

| ID | NAME | COUNTRYCODE | DISTRICT | POPULATION |
| :--- | :--- | :--- | :--- | :--- |
| 6 | Rotterdam | NLD | Zuid-Holland | 593321 |
| 3878 | Scottsdale | USA | Arizona | 202705 |

### Expected Output Matrix:

| ID | NAME | COUNTRYCODE | DISTRICT | POPULATION |
| :--- | :--- | :--- | :--- | :--- |
| 6 | Rotterdam | NLD | Zuid-Holland | 593321 |
| 3878 | Scottsdale | USA | Arizona | 202705 |

**Explanation:**  
* The output mirrors the base input table structure exactly, capturing every available record row and vertical attribute field without exclusion filter constraints.
