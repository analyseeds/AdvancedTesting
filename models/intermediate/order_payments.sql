with 

payments as (

    select 
        *
    from 
        {{ref('stg_payments')}}
    where 
        status = 'success'
),

final as (

    select
        order_id,
        sum(amount) as total_amount
    from 
        payments
    group by 1
)

select * from final