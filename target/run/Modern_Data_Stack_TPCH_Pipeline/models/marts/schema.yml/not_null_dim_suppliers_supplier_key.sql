
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select supplier_key
from dbt_db.dbt_schema.dim_suppliers
where supplier_key is null



  
  
      
    ) dbt_internal_test