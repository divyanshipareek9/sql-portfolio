# HackerRank: Japan Cities Name Projection

**Category:** Relational Databases / Column-Specific Attribute Filtering  
**Problem Link:** [HackerRank - Japan Cities Name Projection](https://hackerrank.com)

---

## 📋 Database Schema

### Table: `CITY`

| Column Name | Type | Description |
| :--- | :--- | :--- |
| `ID` | NUMBER | The unique identification number for each city record (Primary Key). |
| `NAME` | VARCHAR2(17) | The plain text name of the city. |
| `COUNTRYCODE` | VARCHAR2(3) | The 3-letter regional country code abbreviation (e.g., JPN). |
| `DISTRICT` | VARCHAR2(20) | The specific state, district, or territory partition name. |
| `POPULATION` | NUMBER | The registered numerical count of residents living within the city. |

---

## 🎯 Problem Statement

Query the names of all the Japanese cities in the **CITY** table. The `COUNTRYCODE` for Japan is **JPN**.

---

## 📊 Evaluation Example

### Sample Input Data: `CITY` Table

| ID | NAME | COUNTRYCODE | DISTRICT | POPULATION |
| :--- | :--- | :--- | :--- | :--- |
| 1613 | Neyagawa | JPN | Osaka | 257315 |
| 3878 | Scottsdale | USA | Arizona | 202705 |

### Expected Output Matrix:

| NAME |
| :--- |
| Neyagawa |

**Explanation:**  
* The query filters for rows matching `COUNTRYCODE = 'JPN'` and projects only the `NAME` column, dropping all other technical attributes like `ID`, `DISTRICT`, and `POPULATION` from the final matrix view.
