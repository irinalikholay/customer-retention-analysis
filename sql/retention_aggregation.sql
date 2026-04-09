.headers on
.mode column

WITH retention AS (
    SELECT
        cohort_month,
        months_since_first_purchase,
        COUNT(DISTINCT customer_id) AS active_customers
    FROM cohort_data
    GROUP BY 
        cohort_month,
        months_since_first_purchase
)

SELECT *
FROM retention
ORDER BY cohort_month, months_since_first_purchase;