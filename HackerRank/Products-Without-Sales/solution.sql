-- Solution for Products Without Sales
-- Technical Strategy: Subquery exclusion using an indexed NOT IN lookup configuration

SELECT sku, product_name
FROM PRODUCT
WHERE id NOT IN (
    SELECT DISTINCT product_id 
    FROM INVOICE_ITEM
)
ORDER BY sku ASC;
