{{ config(
    materialized='incremental',
    on_schema_change='sync_all_columns'
) }}

select *
from {{ source('Dbt Demo', 'person_sales') }} as t1

{% if is_incremental() %}
where t1.Sales1 > (
    select max(Sales1)
    from {{ this }}
)
{% endif %}

