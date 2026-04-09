.headers on 
.mode column 

WITH first_purchase AS (
    SELECT
        "Customer ID" AS customer_id,
        MIN(InvoiceDate) AS first_purchase_date
    FROM orders
    GROUP BY "Customer ID"
),

cohort_data AS (
    SELECT
        o."Customer ID" AS customer_id,
        o.InvoiceDate,
        fp.first_purchase_date,

        strftime('%Y-%m', fp.first_purchase_date) AS cohort_month,
        strftime('%Y-%m', o.InvoiceDate) AS order_month,

        (
            (CAST(strftime('%Y', o.InvoiceDate) AS INTEGER) - 
             CAST(strftime('%Y', fp.first_purchase_date) AS INTEGER)) * 12
            +
            (CAST(strftime('%m', o.InvoiceDate) AS INTEGER) - 
             CAST(strftime('%m', fp.first_purchase_date) AS INTEGER))
        ) AS months_since_first_purchase

    FROM orders o
    JOIN first_purchase fp
        ON O."Customer ID" = fp.customer_id
)

SELECT *
FROM cohort_data
ORDER BY customer_id, InvoiceDate;
