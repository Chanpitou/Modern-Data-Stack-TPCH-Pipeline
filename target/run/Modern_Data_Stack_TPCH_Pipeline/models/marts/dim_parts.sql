
  
    

create or replace transient table dbt_db.dbt_schema.dim_parts
    
    
    
    as (SELECT
    part_key,
    part_name,
    manufacturer,
    brand,
    part_type,
    part_size,
    container,
    retail_price
FROM dbt_db.dbt_schema.stg_tpch_part
    )
;


  