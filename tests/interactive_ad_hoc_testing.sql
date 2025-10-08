with

customers as (

    select 
        *
    from
        {{ref('stg_customers')}}
),

singular_test as (

    select 
        customer_id
    from
        customers
    group by 1
    having count(*) > 1
)

select * from singular_test