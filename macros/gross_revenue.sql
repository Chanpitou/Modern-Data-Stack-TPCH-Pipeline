{% macro gross_revenue(quantity, extended_price, scale=2) %}
    ({{ quantity }} * {{ extended_price }})::numeric(16, {{ scale }})
{% endmacro %}