# HackerRank: Japan Cities Full Attributes

**Category:** Relational Databases / Categorical Attribute Filtering  
**Problem Link:** [HackerRank - Japanese Cities' Attributes](https://hackerrank.com)

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

Query all attributes of every Japanese city in the **CITY** table. The `COUNTRYCODE` for Japan is **JPN**.

---

## 📊 Evaluation Example

### Sample Input Data: `CITY` Table

| ID | NAME | COUNTRYCODE | DISTRICT | POPULATION |
| :--- | :--- | :--- | :--- | :--- |
| 1613 | Neyagawa | JPN | Osaka | 257315 |
| 3878 | Scottsdale | USA | Arizona | 202705 |

### Expected Output Matrix:

| ID | NAME | COUNTRYCODE | DISTRICT | POPULATION |
| :--- | :--- | :--- | :--- | :--- |
| 1613 | Neyagawa | JPN | Osaka | 257315 |

**Explanation:**  
* The query isolates and extracts the complete attribute layout exclusively for rows matching the domestic country code designator `COUNTRYCODE = 'JPN'`.
