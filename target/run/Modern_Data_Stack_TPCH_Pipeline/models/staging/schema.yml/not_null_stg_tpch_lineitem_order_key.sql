
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select order_key
from dbt_db.dbt_schema.stg_tpch_lineitem
where order_key is null



  
  
      
    ) dbt_internal_test