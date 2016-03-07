- view: db_individual_attribute_monthly_11
  fields:

  - dimension: amt_time_spent
    type: number
    sql: ${TABLE}.amt_time_spent

  - dimension: chk
    type: number
    sql: ${TABLE}.chk

  - dimension: hours
    type: string
    sql: ${TABLE}.hours

  - dimension: month_id
    type: string
    sql: ${TABLE}.month_id

  - measure: count
    type: count
    drill_fields: []

