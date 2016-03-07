- view: db_individual_audience_segment2_monthly
  fields:

  - dimension: audience_segment_id
    type: number
    sql: ${TABLE}.audience_segment_id

  - dimension: master_digital_profile_id
    type: number
    sql: ${TABLE}.master_digital_profile_id

  - dimension: month_id
    view_label: "Month (YYYYMM)"
    type: string
    sql: ${TABLE}.month_id

  - measure: count
    type: count
    drill_fields: []

