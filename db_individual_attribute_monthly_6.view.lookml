- view: db_individual_attribute_monthly_6
  fields:

  - dimension: chk
    type: number
    sql: ${TABLE}.chk

  - dimension: month_id
    type: string
    sql: ${TABLE}.month_id

  - dimension: time
    type: number
    sql: ${TABLE}.time

  - measure: count
    type: count
    drill_fields: []

