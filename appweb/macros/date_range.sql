{% macro date_range() %}
     _table_suffix between cast( {{ var('date_begin') }} as string) and cast( {{ var('date_end') }} as string)
{% endmacro %}