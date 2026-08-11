# HackerRank: Revising the Select Query I

**Category:** Relational Databases / Dataset Filtering & Selection  
**Problem Link:** [HackerRank - Revising the Select Query I](https://hackerrank.com)

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

Query all columns for all American cities in the **CITY** table with populations larger than `100,000`. The `CountryCode` for America is **USA**.

---

## 📊 Evaluation Example

### Sample Input Data: `CITY` Table

| ID | NAME | COUNTRYCODE | DISTRICT | POPULATION |
| :--- | :--- | :--- | :--- | :--- |
| 6 | Rotterdam | NLD | Zuid-Holland | 593321 |
| 3878 | Scottsdale | USA | Arizona | 202705 |
| 3965 | Corona | USA | California | 124966 |
| 4015 | Edmond | USA | Oklahoma | 68315 |

### Expected Output Matrix:

| ID | NAME | COUNTRYCODE | DISTRICT | POPULATION |
| :--- | :--- | :--- | :--- | :--- |
| 3878 | Scottsdale | USA | Arizona | 202705 |
| 3965 | Corona | USA | California | 124966 |

**Explanation:**  
* Scottsdale and Corona are extracted because both belong to `USA` and strictly cross the population threshold of `100,000`.
* Edmond is skipped because its population is below the barrier (`68,315`), and Rotterdam is skipped because it belongs to `NLD`.
