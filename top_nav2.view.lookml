- view: top_nav2
  fields:

  - dimension: anm_sessions
    type: number
    sql: ${TABLE}.anm_sessions

  - dimension: date_yyyymm
    type: number
    sql: ${TABLE}.date_yyyymm

  - dimension: device_type
    type: string
    sql: ${TABLE}.device_type

  - dimension: master_digital_profile_id
    type: number
    sql: ${TABLE}.master_digital_profile_id

  - dimension: pvs
    type: number
    sql: ${TABLE}.pvs

  - dimension: sessions
    type: number
    sql: ${TABLE}.sessions

  - dimension: sessions_anm_sn
    type: number
    sql: ${TABLE}.sessions_anm_sn

  - dimension: sessions_anm_tn
    type: number
    sql: ${TABLE}.sessions_anm_tn

  - dimension: total_anm_subnavs_used
    type: number
    sql: ${TABLE}.total_anm_subnavs_used

  - measure: count
    type: count
    drill_fields: []

