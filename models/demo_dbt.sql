-- {{ config(materialized='table') }}
{{config(tags="daily",)}}

select * from {{ source('Dbt Demo', 'USERS') }}
