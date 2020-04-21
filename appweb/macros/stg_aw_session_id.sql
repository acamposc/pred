{% macro stg_aw_session_id() %}
    select *,
    sum(session_start) over(partition by user_pseudo_id order by ts) as session_id
    from _session_start
{% endmacro %}