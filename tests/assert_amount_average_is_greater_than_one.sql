{{
    config(
        enabled = false,
        severtiy: warn
    )
}}

select
    customer_id
from 
    {{ref('fct_orders')}}
group by 1
having avg(amount) <= 1