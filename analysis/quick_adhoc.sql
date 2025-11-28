select * from {{ source('Dbt Demo', 'USERS') }}
UNION ALL
select * from {{ source('Dbt Demo', 'USERS') }}
UNION ALL
select * from {{ source('Dbt Demo', 'USERS') }}
UNION ALL
select * from {{ source('Dbt Demo', 'USERS') }}