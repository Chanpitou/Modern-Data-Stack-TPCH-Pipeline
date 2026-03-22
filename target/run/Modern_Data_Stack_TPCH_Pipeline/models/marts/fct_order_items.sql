
  
    

create or replace transient table dbt_db.dbt_schema.fct_order_items
    
    
    
    as (SELECT
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

    
    (l.quantity * l.extended_price)::numeric(16, 2)
 as gross_item_revenue,
    
    (l.quantity * l.extended_price * (1-discount_percentage) )::numeric(16, 2)
 as net_item_revenue

FROM dbt_db.dbt_schema.stg_tpch_orders AS o
JOIN dbt_db.dbt_schema.stg_tpch_lineitem AS l
    ON o.order_key = l.order_key
JOIN dbt_db.dbt_schema.dim_customers AS cus
    ON o.customer_key = cus.customer_key
JOIN dbt_db.dbt_schema.dim_parts AS p
    ON l.part_key = p.part_key
JOIN dbt_db.dbt_schema.dim_suppliers AS s
    ON l.supplier_key = s.supplier_key
    )
;


  