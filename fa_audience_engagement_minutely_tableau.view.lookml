- view: fa_audience_engagement_minutely_tableau
  fields:

  - dimension: amt_time_spent
    type: number
    sql: ${TABLE}.amt_time_spent

  - dimension: audience_segment_id
    type: number
    sql: ${TABLE}.audience_segment_id

  - dimension: device_group
    type: string
    sql: ${TABLE}.device_group

  - dimension: minute_id
    type: string
    sql: ${TABLE}.minute_id

  - dimension: num_users
    type: number
    sql: ${TABLE}.num_users

  - dimension: site_section
    type: string
    sql: ${TABLE}.site_section

  - dimension: site_type
    type: string
    sql: ${TABLE}.site_type

  - dimension: view_type
    type: string
    sql: ${TABLE}.view_type

  - measure: count
    type: count
    drill_fields: []

