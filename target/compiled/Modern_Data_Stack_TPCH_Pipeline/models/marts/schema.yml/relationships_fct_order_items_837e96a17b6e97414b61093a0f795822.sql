
    
    

with child as (
    select order_key as from_field
    from dbt_db.dbt_schema.fct_order_items
    where order_key is not null
),

parent as (
    select order_key as to_field
    from dbt_db.dbt_schema.dim_customers
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


