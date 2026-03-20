
    
    

select
    r_regionkey as unique_field,
    count(*) as n_records

from snowflake_sample_data.tpch_sf1.region
where r_regionkey is not null
group by r_regionkey
having count(*) > 1


