
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select nation_key
from dbt_db.dbt_schema.stg_tpch_supplier
where nation_key is null



  
  
      
    ) dbt_internal_test