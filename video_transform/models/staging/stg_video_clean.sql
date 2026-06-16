select 
    -- game information
    title as game_title,
    console,
    genre,
    publisher,
    developer,
    critic_score,

    -- sales information
    total_sales,

    -- important dates
    cast(release_year as int) as release_year

from {{source('raw_data','video_clean')}} 
