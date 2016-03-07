- view: db_individual_attribute_monthly_12
  fields:

  - dimension: hours
    type: string
    sql: ${TABLE}.hours

  - dimension: month_id
    type: string
    sql: ${TABLE}.month_id

  - dimension: perc_time
    type: number
    sql: ${TABLE}.perc_time

  - measure: count
    type: count
    drill_fields: []

