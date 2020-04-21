with _base as (
  {{ stg_aw_base() }}
  from {{ stg_aw_dataset_ucal() }}
),
_session_start as (
  {{ stg_aw_session_start() }}
),
_session_id as (
  {{ stg_aw_session_id() }}
),
_has_session_start as (
  {{ stg_aw_has_session_start()}}
)
select * from _has_session_start