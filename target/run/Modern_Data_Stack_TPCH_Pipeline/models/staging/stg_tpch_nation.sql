
  create or replace   view dbt_db.dbt_schema.stg_tpch_nation
  
  
  
  
  as (
    SELECT
    n_nationkey as nation_key,
    n_name as nation_name,
    n_regionkey as region_key,
    n_comment as nation_comment
FROM snowflake_sample_data.tpch_sf1.nation
  );

