SELECT
    cus.customer_key,
    cus.customer_name,
    cus.customer_address,
    n.nation_name,
    r.region_name,
    cus.phone_number,
    cus.account_balance,
    cus.market_segment
FROM {{ ref('stg_tpch_customer') }} AS cus
LEFT JOIN {{ ref('stg_tpch_nation') }} AS n
    ON cus.nation_key = n.nation_key
LEFT JOIN {{ 'stg_tpch_region' }} AS r
    ON n.region_key = r.region_key