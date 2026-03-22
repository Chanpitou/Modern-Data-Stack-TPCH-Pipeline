SELECT
    o.order_key,
    cus.customer_key,
    p.part_key,
    s.supplier_key,

    o.order_date,
    o.order_status,
    l.return_flag,
    l.line_status,

    l.quantity,
    l.extended_price as base_price,
    l.discount_percentage,
    l.tax_rate,

    {{ gross_revenue('l.quantity', 'l.extended_price') }} as gross_item_revenue,
    {{ net_revenue('l.quantity', 'l.extended_price', 'l.discount_percentage') }} as net_item_revenue

FROM {{ ref('stg_tpch_orders') }} AS o
JOIN {{ ref('stg_tpch_lineitem') }} AS l
    ON o.order_key = l.order_key
JOIN {{ ref('dim_customers') }} AS cus
    ON o.customer_key = cus.customer_key
JOIN {{ ref('dim_parts') }} AS p
    ON l.part_key = p.part_key
JOIN {{ ref('dim_suppliers') }} AS s
    ON l.supplier_key = s.supplier_key