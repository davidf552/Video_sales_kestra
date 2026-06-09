SELECT console, ROUND(SUM(total_sales), 2) AS year_sales, 
    ROUND(SUM(total_sales) * 100.0 / SUM(SUM(total_sales)) OVER (), 2) AS pct_sales

FROM {{ref('stg_video_clean')}}
GROUP BY console
ORDER BY year_sales DESC
