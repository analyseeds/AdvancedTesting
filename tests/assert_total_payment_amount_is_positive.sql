{{
    config(
        enabled = false
    )
}}

select
    order_id
from
    {{ref('fct_orders')}}
where
    amount <= 0
