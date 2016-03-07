- view: top_nav1
  fields:

  - dimension: anm_pvs
    type: number
    sql: ${TABLE}.anm_pvs

  - dimension: anm_subnavs_used
    type: number
    sql: ${TABLE}.anm_subnavs_used

  - dimension: anm_top_nav_used
    type: number
    sql: ${TABLE}.anm_top_nav_used

  - dimension: date_yyyymm
    type: number
    sql: ${TABLE}.date_yyyymm

  - dimension: device_type
    type: string
    sql: ${TABLE}.device_type

  - dimension: distinct_anm_pvs
    type: number
    sql: ${TABLE}.distinct_anm_pvs

  - dimension: master_digital_profile_id
    type: number
    sql: ${TABLE}.master_digital_profile_id

  - dimension: pvs
    type: number
    sql: ${TABLE}.pvs

  - dimension: session_id
    type: string
    sql: ${TABLE}.session_id

  - measure: count
    type: count
    drill_fields: []

