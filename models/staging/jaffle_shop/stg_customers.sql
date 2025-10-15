with

customers as (

    select
        id as customer_id,
        first_name,
        last_name
    from 
        {{ source('jaffle_shop','customers') }}
), 

renamed as (

    select
        customer_id,
        CONCAT(first_name,last_name) as full_name,
        null as null_test
    from 
        customers
)

select * from renamed