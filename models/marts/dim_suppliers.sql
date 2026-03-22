SELECT
    s.supplier_key,
    s.supplier_name,
    s.supplier_address,
    n.nation_name,
    r.region_name,
    s.phone_number,
    s.account_balance
FROM {{ ref('stg_tpch_supplier') }} AS s
LEFT JOIN {{ ref('stg_tpch_nation') }} AS n
    ON s.nation_key = n.nation_key
LEFT JOIN {{ref('stg_tpch_region')}} AS r
    ON n.region_key = r.region_key