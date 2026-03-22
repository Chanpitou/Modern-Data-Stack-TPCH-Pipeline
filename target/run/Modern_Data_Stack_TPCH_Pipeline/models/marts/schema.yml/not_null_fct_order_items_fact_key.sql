
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select fact_key
from dbt_db.dbt_schema.fct_order_items
where fact_key is null



  
  
      
    ) dbt_internal_test