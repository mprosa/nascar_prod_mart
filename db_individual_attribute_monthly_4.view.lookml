- view: db_individual_attribute_monthly_4
  fields:

  - dimension: master_digital_profile_id
    type: number
    sql: ${TABLE}.master_digital_profile_id

  - dimension: month_id
    type: string
    sql: ${TABLE}.month_id

  - dimension: perc_time
    type: number
    sql: ${TABLE}.perc_time

  - dimension: site_section
    type: string
    sql: ${TABLE}.site_section

  - measure: count
    type: count
    drill_fields: []

