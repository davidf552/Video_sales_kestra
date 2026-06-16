SELECT release_year, ROUND(SUM(total_sales), 2) AS year_sales 
FROM {{ref('stg_video_clean')}} 
GROUP BY release_year 
ORDER BY release_year
