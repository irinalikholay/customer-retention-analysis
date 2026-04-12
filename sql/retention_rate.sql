.headers on
.mode column

WITH retention AS (
    SELECT 
        cohort_month,
        months_since_first_purchase,
        COUNT(DISTINCT customer_id) AS active_customers
    FROM cohort_data
    GROUP BY cohort_month, months_since_first_purchase
),

cohort_size AS (
    SELECT
        cohort_month,
        active_customers AS cohort_size
    FROM retention 
    WHERE months_since_first_purchase = 0
),

retention_rate AS (
    SELECT 
        r.cohort_month,
        r.months_since_first_purchase,
        r.active_customers,
        c.cohort_size,
        ROUND(1.0 * r.active_customers / c.cohort_size, 3) AS retention_rate
    FROM retention r 
    JOIN cohort_size c 
        ON r.cohort_month = c.cohort_month
)

SELECT *
FROM retention_rate
ORDER BY cohort_month, months_since_first_purchase;