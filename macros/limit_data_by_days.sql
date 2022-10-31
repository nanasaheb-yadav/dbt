{% macro limit_data_by_days(colname, no_of_days=3) -%}

    WHERE {{colname}} >= dateadd('day', -{{no_of_days}}, current_timestamp)
    
{%- endmacro %}