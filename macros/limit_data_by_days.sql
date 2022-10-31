{% macro limit_data_by_days(colname, no_of_days=3) -%}
    {% if target.name == 'dev'%}
    WHERE {{colname}} >= dateadd('day', -{{no_of_days}}, current_timestamp)
    {% endif %}
{%- endmacro %}