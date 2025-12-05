{% snapshot SCDS %}
-- 1st approach
{{
    config(
        target_schema='snapshots',
        strategy='check',
        unique_key='ID',
        check_cols=['FIRSTNAME','LASTNAME']
    )
}}
-- 2nd approach
{{
    config(
        target_schema='snapshots',
        strategy='check',
        unique_key='ID',
        updated_at='updated_at'
    )
}}
select * from {{source("Dbt Demo","SCDS")}}
{% endsnapshot %}