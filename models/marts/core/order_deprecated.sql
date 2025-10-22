{{
    config(
        materialized='table'
    )
}}

with

orders as (

    select * from {{ref('stg_orders')}}

),

final as (

    select
        a.order_id,
        case 
            when a.customer_id = 1
            then a.customer_id +1000
            else a.customer_id
        end as customer_id,
        a.order_date,
        a.status
    from
        orders as a
    order by a.order_id
)

select * from final