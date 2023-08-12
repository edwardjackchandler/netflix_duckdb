WITH src_titles AS (
  SELECT
    *
  FROM
    {{ ref('src_originals_imdb') }}
)
SELECT
    show_title,
    show_genre,
    strptime(premiere_date, '%B %d, %Y') AS premiere_date,
    duration_minutes,
    imdb_score,
    language
FROM
    src_titles