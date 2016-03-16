- view: fa_segment_growth_monthly_accrued
  fields:

  - dimension: audience_segment_id
    hidden: true
    type: number
    sql: ${TABLE}.audience_segment_id

  - dimension: month_id
    type: string
    label: 'Month (YYYYMM)'
    sql: ${TABLE}.month_id

#  - dimension: num_users_in_segment
#    type: number
#    sql: ${TABLE}.num_users_in_segment

  - measure: segment_count
    type: count_distinct
    sql: ${TABLE}.audience_segment_id
    drill_fields: []

  
  - measure: total_num_users_in_segment
    type: sum
    sql: ${TABLE}.num_users_in_segment

