
  create or replace   view dbt_db.dbt_schema.stg_tpch_part
  
  
  
  
  as (
    SELECT
    p_partkey as part_key,
    p_name as part_name,
    p_mfgr as manufacturer,
    p_brand as brand,
    p_type as part_type,
    p_size as part_size,
    p_container as container,
    p_retailprice as retail_price,
    p_comment as part_comment
FROM snowflake_sample_data.tpch_sf1.part
  );

