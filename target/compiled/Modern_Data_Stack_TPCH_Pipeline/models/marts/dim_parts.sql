SELECT
    part_key,
    part_name,
    manufacturer,
    brand,
    part_type,
    part_size,
    container,
    retail_price
FROM dbt_db.dbt_schema.stg_tpch_part