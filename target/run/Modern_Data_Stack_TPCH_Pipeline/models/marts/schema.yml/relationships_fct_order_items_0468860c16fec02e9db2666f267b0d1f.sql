
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with child as (
    select supplier_key as from_field
    from dbt_db.dbt_schema.fct_order_items
    where supplier_key is not null
),

parent as (
    select supplier_key as to_field
    from dbt_db.dbt_schema.dim_suppliers
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



  
  
      
    ) dbt_internal_test