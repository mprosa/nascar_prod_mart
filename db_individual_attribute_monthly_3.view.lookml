- view: db_individual_attribute_monthly_3
  fields:

  - dimension: master_digital_profile_id
    type: number
    sql: ${TABLE}.master_digital_profile_id

  - dimension: month_id
    type: string
    sql: ${TABLE}.month_id

  - dimension: time
    type: number
    sql: ${TABLE}.time

  - measure: count
    type: count
    drill_fields: []

