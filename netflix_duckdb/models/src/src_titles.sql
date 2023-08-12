
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

-- {{ config(materialized='table') }}

with raw_titles as (

    SELECT
        *
    FROM
        {{ source('netflix', 'raw_titles') }}
)

SELECT
    show_id,
    type AS show_type,
    title AS show_title,
    director AS show_director,
    "cast" AS show_cast,
    country,
    date_added,
    release_year,
    rating AS netflix_age_rating,
    duration AS duration_string,
    listed_in AS show_genre,
    description
FROM
    raw_titles

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
