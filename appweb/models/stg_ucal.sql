select
    'ucal' as centre,
    count(distinct(user_pseudo_id)) as users,
    event_date as date
from
    `ucal-260417.analytics_217882625.events_*`
where {{ date_range() }}
group by
    centre, date
order by
    date asc