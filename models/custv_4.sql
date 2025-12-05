{{
    config(
        materialized='ephemeral',
        alias='New_Table',
        tags="daily",
    )
}}
select * from {{ source('Dbt Demo', 'USERS') }}