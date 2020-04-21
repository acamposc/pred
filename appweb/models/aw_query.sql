with tls as (
    select *,
    'tls' as centre,
    from {{
        ref('stg_aw_mod_tls_valid_sessions')
    }}
        
),
ucal as (
    select *,
    'ucal' as centre,
    from {{
        ref('stg_aw_mod_ucal_valid_sessions')
    }}
), 
mod as (
    select * from tls
    union all
    select * from ucal
)
select * from mod
 