select *, '{{invocation_id}}' as Invocation_ID from {{ source('Dbt Demo', 'person_sales') }}

{%- set lists=dbt_utils.get_column_values(table=source('Dbt Demo', 'person_sales'),column='person') -%}
{%- for i in lists%}
    {{i}}
{%- endfor%}
{{ lists }}

{% set a = adapter.get_columns_in_relation( source('Dbt Demo', 'person_sales') ) %}
{% for i in a%}
{{i.column}}
{%endfor%}
{{ a }}
