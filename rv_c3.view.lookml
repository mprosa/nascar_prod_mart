- view: rv_c3
  fields:

  - dimension: click_time
    type: string
    sql: ${TABLE}.click_time

  - dimension: master_digital_profile_id
    type: number
    sql: ${TABLE}.master_digital_profile_id

  - dimension: master_digital_profile_id2
    type: number
    value_format_name: id
    sql: ${TABLE}.master_digital_profile_id2

  - measure: count
    type: count
    drill_fields: []

