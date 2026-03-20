
    
    

select
    order_item_key as unique_field,
    count(*) as n_records

from dbt_db.dbt_schema.stg_tpch_lineitem
where order_item_key is not null
group by order_item_key
having count(*) > 1


