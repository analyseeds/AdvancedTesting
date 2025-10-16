{% test dollars_spent_greater_than_one(model, column_name, group_column) %}

    SELECT {{group_column}} from {{model}} group by {{group_column}} having sum({{column_name}}) <Ç= 1

{% endtest %}