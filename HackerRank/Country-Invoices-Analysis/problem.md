# 🌐 Global Invoice Metrics Analysis

## 📌 Business Scenario
A business is analyzing data by country. The objective is to identify countries whose average invoice amount is greater than the average invoice amount over all invoices across the entire system.

---

## 🗺️ Schema Architecture

### 1. `country` Table
Defines geographical country details.

| Column | Type | Constraints | Description |
| :--- | :--- | :--- | :--- |
| **`id`** | `int` | `PRIMARY KEY` | This is a primary key |
| **`country_name`** | `varchar(128)` | — | The name of the country |

### 2. `city` Table
Maps cities back to their parent countries.

| Column | Type | Constraints | Description |
| :--- | :--- | :--- | :--- |
| **`id`** | `int` | `PRIMARY KEY` | This is a primary key |
| **`city_name`** | `varchar(128)` | — | Name of the city |
| **`postal_code`** | `varchar(16)` | — | Postal code of the city |
| **`country_id`** | `int` | `FOREIGN KEY` | Foreign key referencing country.id |

### 3. `customer` Table
Stores customer account details.

| Column | Type | Constraints | Description |
| :--- | :--- | :--- | :--- |
| **`id`** | `int` | `PRIMARY KEY` | This is a primary key |
| **`customer_name`** | `varchar(255)` | — | Name of the customer |
| **`city_id`** | `int` | `FOREIGN KEY` | Foreign key referencing city.id |
| **`customer_address`** | `varchar(255)` | — | Customer's address |
| **`contact_person`** | `varchar(255)` | *Nullable* | Can be NULL |
| **`email`** | `varchar(128)` | — | Email address |
| **`phone`** | `varchar(128)` | — | Phone number |
| **`is_active`** | `int` | — | Boolean |

### 4. `invoice` Table
Tracks customer invoice amounts.

| Column | Type | Constraints | Description |
| :--- | :--- | :--- | :--- |
| **`id`** | `int` | `PRIMARY KEY` | This is a primary key |
| **`invoice_number`** | `varchar(255)` | — | Invoice number |
| **`customer_id`** | `int` | `FOREIGN KEY` | Foreign key referencing customer.id |
| **`user_account_id`** | `int` | — | User's account ID |
| **`total_price`** | `decimal(8,2)` | — | Total price |

---

## 🎯 Technical Objectives & Filtering Constraints
- Implement a 4-table inner join pathway: `country` $\rightarrow$ `city` $\rightarrow$ `customer` $\rightarrow$ `invoice`.
- **Output Requirements:** For each country, display the `country_name`, total number of invoices (`COUNT(invoice.id)`), and their average amount (`AVG(invoice.total_price)`).
- **Formatting Requirement:** Format the average as a floating-point number with exactly **6 decimal places**.
- **Post-Aggregation Filter:** Return only those countries where their average invoice amount is strictly greater than the average invoice amount over all invoices.
-
