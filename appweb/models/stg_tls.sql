select 
    'tls' as centre,
    count(distinct(user_pseudo_id)) as users,
    event_date as date
from 
    `toulouse-261516.analytics_217882356.events_*`
where {{ date_range() }}
group by
    centre, date
order by
    date asc