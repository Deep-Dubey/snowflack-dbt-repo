{#Comments in jinja when we compile jinja comment it will not compiled#}
{{['Deep',11111]}}
-- when i run this in name it provide space above it
{% set name = "Deep Dubey"%}
{{name}}
-- when i run this no space above it
{%- set name1 = "Deep Dubey Prerana" -%}
{{name1}}
-- Print 2 lines without space
{{['Deep',11111]}}
{%- set name3 = "Deep Dubey Prerana Verma" %}
{{name3}}

-- Conditional Logic
{% if 1==2 %}
    {{"I am Deep"}}
{% else%}
    {{"I am Deep Dubey"}}
{% endif %}

{% if 10 > 20 %}
    {{ "Condition 1: 10 is greater than 20" }}

{% elif 10 == 20 %}
    {{ "Condition 2: 10 is equal to 20" }}

{% else %}
    {{ "Condition 3: None of the above is true" }}

{% endif %}

-- Simple FOR Loop
{% for num in [1, 2, 3] %}
    {{ "Number: " ~ num }}
{% endfor %}

-- FOR Loop with IF / ELSE inside (conditional loop)
{% for num in [1, 2, 3, 4] %}
    {% if num % 2 == 0 %}
        {{ num ~ " is Even" }}
    {% else %}
        {{ num ~ " is Odd" }}
    {% endif %}
{% endfor %}

-- FOR Loop using loop.index (advanced loop)
{% for city in ["Delhi", "Mumbai", "Kolkata"] %}
    {{ loop.index }} - {{ city }}
{% endfor %}
