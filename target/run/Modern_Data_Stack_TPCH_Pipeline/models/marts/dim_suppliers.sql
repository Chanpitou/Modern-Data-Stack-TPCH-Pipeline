
  
    

create or replace transient table dbt_db.dbt_schema.dim_suppliers
    
    
    
    as (SELECT
    s.supplier_key,
    s.supplier_name,
    s.supplier_address,
    n.nation_name,
    r.region_name,
    s.phone_number,
    s.account_balance
FROM dbt_db.dbt_schema.stg_tpch_supplier AS s
LEFT JOIN dbt_db.dbt_schema.stg_tpch_nation AS n
    ON s.nation_key = n.nation_key
LEFT JOIN dbt_db.dbt_schema.stg_tpch_region AS r
    ON n.region_key = r.region_key
    )
;


  