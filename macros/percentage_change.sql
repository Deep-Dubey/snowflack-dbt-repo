{% macro per_centage(a, b) %}
    ({{ a }} - {{ b }}) / {{ b }} * 100
{% endmacro %}
