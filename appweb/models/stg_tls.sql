select 
    'tls' as centre,
    {{ stg_select() }}
from 
    `toulouse-261516.analytics_217882356.events_*`,
    {{ event_params() }}
where {{ date_range() }}
group by
   {{ group_by() }}
order by
    {{ order_by() }}