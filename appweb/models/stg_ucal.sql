select
    'ucal' as centre,
    {{ stg_select() }}
from
    `ucal-260417.analytics_217882625.events_*`,
    {{ event_params() }}
where {{ date_range() }}
group by
   {{ group_by() }}
order by
    {{ order_by() }}