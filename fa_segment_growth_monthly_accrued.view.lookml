- view: fa_segment_growth_monthly_accrued
  fields:

  - dimension: audience_segment_id
    type: number
    sql: ${TABLE}.audience_segment_id

  - dimension: month_id
    type: string
    sql: ${TABLE}.month_id

  - dimension: num_users_in_segment
    type: number
    sql: ${TABLE}.num_users_in_segment

  - measure: count
    type: count
    drill_fields: []
  
  - measure: total_num_users_in_segment
    type: sum
    sql: ${TABLE}.num_users_in_segment

