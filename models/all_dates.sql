{{ config (
    materialized="table"
)}}

{{ dbt_utils.date_spine(
    datepart="day",
    start_date = cast('01/01/2020' as date),
    end_date = cast('01/01/2021', as date)
   )
}}