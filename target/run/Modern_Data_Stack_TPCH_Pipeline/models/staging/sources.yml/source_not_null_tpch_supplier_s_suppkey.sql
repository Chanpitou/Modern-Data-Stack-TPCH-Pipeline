
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select s_suppkey
from snowflake_sample_data.tpch_sf1.supplier
where s_suppkey is null



  
  
      
    ) dbt_internal_test