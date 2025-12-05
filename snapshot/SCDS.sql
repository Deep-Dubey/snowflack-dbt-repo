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
select * from {{source("Dbt Demo","SCDS")}}
{% endsnapshot %}