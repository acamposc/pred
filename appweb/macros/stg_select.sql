{% macro stg_select() %}
    -- select for stg_ queries
    user_pseudo_id as user_id,
    parse_date('%Y%m%d',event_date) as date,
    timestamp_micros(user_first_touch_timestamp) as first_ts,
    timestamp_micros(event_timestamp) as event_ts,
    event_name as event_name,
    device.category as device_category
{% endmacro %}