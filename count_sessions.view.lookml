- view: count_sessions
  fields:

  - dimension: count_sessions
    type: number
    sql: ${TABLE}.count_sessions

  - dimension: master_digital_profile_id
    type: number
    sql: ${TABLE}.master_digital_profile_id

  - measure: count
    type: count
    drill_fields: []

