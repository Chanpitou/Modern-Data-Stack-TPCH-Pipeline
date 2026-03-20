
    
    

select
    region_key as unique_field,
    count(*) as n_records

from dbt_db.dbt_schema.stg_tpch_region
where region_key is not null
group by region_key
having count(*) > 1


