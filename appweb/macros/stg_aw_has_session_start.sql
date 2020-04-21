{% macro stg_aw_has_session_start() %}
    select
    *,
    max(is_session_start_event) over (
        partition by user_pseudo_id, session_id
    ) as has_session_start_event
    from _session_id
{% endmacro %}