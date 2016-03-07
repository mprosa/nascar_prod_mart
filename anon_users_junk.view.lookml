- view: anon_users_junk
  fields:

  - dimension: endstate_dt
    type: string
    sql: ${TABLE}.endstate_dt

  - dimension: endstate_dt_id
    type: number
    sql: ${TABLE}.endstate_dt_id

  - dimension: master_digital_profile_id
    type: number
    sql: ${TABLE}.master_digital_profile_id

  - measure: count
    type: count
    drill_fields: []

