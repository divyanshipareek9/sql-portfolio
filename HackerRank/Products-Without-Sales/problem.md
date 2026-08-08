# 📦 Products Without Sales

## 📌 Business Scenario
An e-commerce store needs to evaluate its inventory movement to identify stale stock. The objective is to extract a comprehensive list of all listed retail items that have never been purchased or included in a generated invoice line-item since database initialization.

---

## 🗺️ Schema Architecture

### 1. `PRODUCT` Table
Stores primary product inventory catalog items.

| Column | Type | Constraints | Description |
| :--- | :--- | :--- | :--- |
| **`id`** | `int` | `PRIMARY KEY` | Unique structural identifier for each item. |
| **`sku`** | `varchar(32)` | — | Unique Stock Keeping Unit item string. |
| **`product_name`** | `varchar(128)` | — | Public descriptive title of the retail unit. |
| **`product_description`** | `varchar(255)` | — | Broad metadata detailing item mechanics. |
| **`current_price`** | `decimal(8,2)` | — | Current base retail cost of the item. |
| **`quantity_in_stock`** | `decimal(8,2)` | — | Live counts remaining inside the logistics warehouse. |
| **`is_active`** | `int` | — | State toggle checking shelf availability. |

### 2. `INVOICE_ITEM` Table
Tracks operational purchase line-items mapped onto finalized consumer invoices.

| Column | Type | Constraints | Description |
| :--- | :--- | :--- | :--- |
| **`invoice_id`** | `int` | `FOREIGN KEY` | Maps directly to the root master transaction record. |
| **`product_id`** | `int` | `FOREIGN KEY` | Connects directly back to the `PRODUCT.id` ledger. |
| **`quantity`** | `decimal(8,2)` | — | Absolute capacity units bought during the sale. |
| **`price`** | `decimal(8,2)` | — | Point-of-sale calculated retail item price. |
| **`line_total_price`** | `decimal(8,2)` | — | Final aggregated price (`quantity` × `price`). |

---

## 🎯 Technical Objectives & Sorting Constraints
- Locate every single product entity whose primary `id` holds no transaction mappings within the target `INVOICE_ITEM.product_id` column.
- **Output Requirements:** Extract only two active data metrics: `sku` and `product_name`.
- **Ordering Mandate:** Arrange the final dataset rows consecutively based on the product `sku` string field in ascending order (`ASC`).
-
