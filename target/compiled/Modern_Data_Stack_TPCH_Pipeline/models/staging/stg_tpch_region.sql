SELECT
    r_regionkey as region_key,
    r_name as region_name,
    r_comment as region_comment
FROM snowflake_sample_data.tpch_sf1.region