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
        CONCAT(first_name,last_name) as full_name
    from 
        customers
)

select * from renamed