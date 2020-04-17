with tls as (
    select * from {{
        ref('stg_tls')
    }}

),
ucal as (
    select * from {{
        ref('stg_ucal')
    }}
),
model as (
    select
        *
        --date as date,
        --centre as centre,
        --users as users
    from tls
    union all
    select
        * 
        --date as date,
        --centre as centre,
        --users as users
    from ucal
    group by 
        1,2,3
)
select * from model