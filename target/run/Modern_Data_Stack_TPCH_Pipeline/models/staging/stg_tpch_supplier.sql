
  create or replace   view dbt_db.dbt_schema.stg_tpch_supplier
  
  
  
  
  as (
    SELECT
    s_suppkey as supplier_key,
    s_name as supplier_name,
    s_address as supplier_address,
    s_nationkey as nation_key,
    s_phone as phone_number,
    s_acctbal as account_balance,
    s_comment as supplier_comment
FROM snowflake_sample_data.tpch_sf1.supplier
  );

