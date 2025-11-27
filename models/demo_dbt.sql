-- {{ config(materialized='table') }}

select * from {{ source('Dbt Demo', 'USERS') }}
