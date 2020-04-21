{% macro stg_aw_base() %}
    select
    user_pseudo_id,
    event_timestamp,
    timestamp_micros(event_timestamp) as ts,
    lag(timestamp_micros(event_timestamp)) over (partition by user_pseudo_id order by event_timestamp) as prev_evt_ts,
    if(event_name = "session_start", 1, 0) as is_session_start_event
{% endmacro %}