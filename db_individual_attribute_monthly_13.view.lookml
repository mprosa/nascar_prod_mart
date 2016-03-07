- view: db_individual_attribute_monthly_13
  fields:

  - dimension: last_date
    type: string
    sql: ${TABLE}.last_date

  - dimension: month_id
    type: string
    sql: ${TABLE}.month_id

  - measure: count
    type: count
    drill_fields: []

