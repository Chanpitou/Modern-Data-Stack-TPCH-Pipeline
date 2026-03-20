
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select r_regionkey
from snowflake_sample_data.tpch_sf1.region
where r_regionkey is null



  
  
      
    ) dbt_internal_test