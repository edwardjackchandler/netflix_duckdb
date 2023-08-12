
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

-- {{ config(materialized='table') }}

with raw_originals_imdb as (

    SELECT
        *
    FROM
        {{ source('netflix', 'raw_originals_imdb') }}
)

SELECT
    Title AS show_title,
    Genre AS show_genre,
    Premiere AS premiere_date,
    Runtime AS duration_minutes,
    "IMDB Score" AS imdb_score,
    Language AS language
FROM
    raw_originals_imdb

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
