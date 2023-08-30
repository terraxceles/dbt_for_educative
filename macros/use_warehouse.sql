{% macro use_warehouse(warehouse_size) -%}

{% set valid_size = ['xs','s','m','l','xl','2xl','3xl'] %}
{% set default_size = 's' %}
{% set prefix = 'bi_wh' %}
{% set wh = "{}_{}".format(prefix, warehouse_size) if warehouse_size in valid_size else "{}_{}".format(prefix, default_size) %}

{% if warehouse_size not in valid_size %}
{% set warning_message = "The warehouse '" ~ warehouse_size ~ "' does not exist. The model is using S warehouse instead " %}
{% do exceptions.warn(warning_message) %}
{%- endif %}

use warehouse {{ env(wh) }}

{%- endmacro %}
