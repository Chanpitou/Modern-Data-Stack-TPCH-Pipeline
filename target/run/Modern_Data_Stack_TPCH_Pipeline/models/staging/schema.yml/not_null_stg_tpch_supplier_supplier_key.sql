
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select supplier_key
from dbt_db.dbt_schema.stg_tpch_supplier
where supplier_key is null



  
  
      
    ) dbt_internal_test