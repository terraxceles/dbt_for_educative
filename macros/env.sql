{% macro env(asset) -%}

{{ target.name }}_{{ asset | trim }}

{%- endmacro %}
