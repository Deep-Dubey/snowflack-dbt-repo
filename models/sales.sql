select 
    *,
    {{ per_centage('Sales1', 'Sales2') }} as Change,
    {{ per_centage('Sales1', 'Sales3') }} as Change2,
    {{ per_centage('Sales1', 'Total') }} as Change3
from {{ source('Dbt Demo', 'person_sales') }}


select *, '{{invocation_id}}' as Invocation_ID from {{ source('Dbt Demo', 'person_sales') }}