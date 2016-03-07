- view: db_individual_attribute_monthly_2
  fields:

  - dimension: master_digital_profile_id
    type: number
    sql: ${TABLE}.master_digital_profile_id

  - dimension: month_id
    type: string
    sql: ${TABLE}.month_id

  - dimension: site_section
    type: string
    sql: ${TABLE}.site_section

  - dimension: time
    type: number
    sql: ${TABLE}.time

  - measure: count
    type: count
    drill_fields: []

