--1. create a cte for month revenue
WITH month_revenue AS (
    SELECT
        TO_CHAR(created_at, 'YYYY-MM') AS year_month,
        SUM(value),
        LAG (SUM(value), 1, NULL) OVER (ORDER BY TO_CHAR(created_at, 'YYYY-MM')) AS last_month
    FROM 
        sf_transactions
    GROUP BY
        TO_CHAR(created_at, 'YYYY-MM')
    ORDER BY
        TO_CHAR(created_at, 'YYYY-MM')
)

--2. calcualte the change
SELECT 
    year_month,
    ((sum - next_month) / last_month) * 100 AS revenue_diff_pct
FROM month_revenue
