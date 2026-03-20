
    
    

select
    s_suppkey as unique_field,
    count(*) as n_records

from snowflake_sample_data.tpch_sf1.supplier
where s_suppkey is not null
group by s_suppkey
having count(*) > 1


