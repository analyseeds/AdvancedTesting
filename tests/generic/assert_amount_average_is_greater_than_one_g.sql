{% test assert_amount_average_is_greater_than_one_g(mode, column_name, group_by_column) %}

    select
        {{group_by_column}},
        avg({{column_name}}) as mean
    from
        {{model}}
    group by 1
    having mean <= 1

{% endtest %}