{{
    config(
        materialized='ephemeral'
    )
}}
select * from {{ source('Dbt Demo', 'USERS') }}