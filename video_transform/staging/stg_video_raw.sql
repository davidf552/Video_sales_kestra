select 
    -- game information
    img as cover_image,
    title as game_title,
    console,
    genre,
    publisher,
    developer,
    critic_score,

    -- sales information
    total_sales,
    na_sales,
    jp_sales,
    pal_sales,
    other_sales,

    -- important dates
    release_date,
    last_update

from {{source('raw_data','video_raw')}}
