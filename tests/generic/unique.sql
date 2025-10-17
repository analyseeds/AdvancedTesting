{% test unique(model, column_name)%}

    select
        {{column_name}}
    from
        {{model}}
    where 
        {{column_name}} not in (00000,11111) 
    group by {{column_name}}
    having count({{column_name}}) > 1

{% endtest %}