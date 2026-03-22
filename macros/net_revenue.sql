{% macro net_revenue(quantity, extended_price, discount_percentage, scale=2) %}
    ({{ quantity }} * {{ extended_price }} * (1-discount_percentage) )::numeric(16, {{ scale }})
{% endmacro %}