{% test greater_than_five_g(model,column_name)%}

    select
        {{column_name}} 
    from
        {{model}}
    where
        {{column_name}} <= 5

{% endtest %}