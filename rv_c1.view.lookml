- view: rv_c1
  fields:

  - dimension: click_time
    type: string
    sql: ${TABLE}.click_time

  - dimension: master_digital_profile_id
    type: number
    sql: ${TABLE}.master_digital_profile_id

  - measure: count
    type: count
    drill_fields: []

