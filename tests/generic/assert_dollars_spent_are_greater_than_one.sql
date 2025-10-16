{%test assert_dollars_spent_are_greater_than_one(model, column_name, group_by_column)%}

    select
        {{group_by_colummn}},
        sum({{ column_name }}) as total
    from
        {{model}}
    group by 1
    having total <= 1

{% endtest %}