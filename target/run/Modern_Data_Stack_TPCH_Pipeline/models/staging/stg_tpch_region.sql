
  create or replace   view dbt_db.dbt_schema.stg_tpch_region
  
  
  
  
  as (
    SELECT
    r_regionkey as region_key,
    r_name as region_name,
    r_comment as region_comment
FROM snowflake_sample_data.tpch_sf1.region
  );

