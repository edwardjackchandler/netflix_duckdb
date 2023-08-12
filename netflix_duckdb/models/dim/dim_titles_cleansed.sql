WITH src_titles AS (
  SELECT
    *
  FROM
    {{ ref('src_titles') }}
)
SELECT
    show_id,
    show_type,
    show_title,
    show_director,
    show_cast,
    country,
    date_added,
    release_year,
    netflix_age_rating,
    CASE
        WHEN show_type = 'Movie' THEN CAST(LEFT(duration_string, -3) AS INT)
        ELSE NULL
    END AS movie_length_mins,
    CASE
        WHEN show_type = 'TV Show' THEN CAST(LEFT(duration_string, -7) AS INT)
        ELSE NULL
    END AS tv_show_seasons,
    show_genre,
    description
FROM
    src_titles