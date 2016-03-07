- view: db_individual_attribute_monthly_10
  fields:

  - dimension: hours
    type: string
    sql: ${TABLE}.hours

  - dimension: master_digital_profile_id
    type: number
    sql: ${TABLE}.master_digital_profile_id

  - dimension: month_id
    type: string
    sql: ${TABLE}.month_id

  - dimension: perc_time
    type: number
    sql: ${TABLE}.perc_time

  - measure: count
    type: count
    drill_fields: []

