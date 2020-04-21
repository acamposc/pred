{% macro stg_aw_session_start() %}
    select *,
    if(
        coalesce(
            timestamp_diff(
                ts,
                prev_evt_ts,
                second
            ) / 60 , 1e10
        ) >= 30,
        1,
        0
    ) as session_start
    from _base
{% endmacro %}


