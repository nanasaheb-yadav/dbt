{% macro cent_to_dollars(cents, fractions=2)-%}
    round(1.0 * {{cents}}/100, {{fractions}})
{%- endmacro %}