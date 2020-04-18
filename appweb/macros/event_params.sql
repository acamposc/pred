{% macro event_params() %}
    unnest(event_params) AS params
{% endmacro %}