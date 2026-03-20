
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with child as (
    select nation_key as from_field
    from dbt_db.dbt_schema.stg_tpch_supplier
    where nation_key is not null
),

parent as (
    select nation_key as to_field
    from dbt_db.dbt_schema.stg_tpch_nation
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



  
  
      
    ) dbt_internal_test