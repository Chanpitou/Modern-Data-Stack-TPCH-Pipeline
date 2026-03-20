
    
    

with child as (
    select region_key as from_field
    from dbt_db.dbt_schema.stg_tpch_nation
    where region_key is not null
),

parent as (
    select region_key as to_field
    from dbt_db.dbt_schema.stg_tpch_region
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


