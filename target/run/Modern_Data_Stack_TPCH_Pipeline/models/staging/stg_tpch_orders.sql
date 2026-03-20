
  create or replace   view dbt_db.dbt_schema.stg_tpch_orders
  
  
  
  
  as (
    SELECT
    o_orderkey as order_key,
    o_custkey as customer_key,
    o_orderstatus as order_status,
    o_totalprice as total_price,
    o_orderdate as order_date,
    o_orderpriority as order_priority,
    o_clerk as clerk_name,
    o_shippriority as ship_priority,
    o_comment as order_comment
FROM snowflake_sample_data.tpch_sf1.orders
  );

