- view: fa_audience_engagement_daily_tableau
  fields:

  - dimension: amt_logged_in_time_spent
    type: number
    sql: ${TABLE}.amt_logged_in_time_spent

  - dimension: amt_time_spent
    type: number
    sql: ${TABLE}.amt_time_spent

  - dimension: audience_segment_id
    type: number
    sql: ${TABLE}.audience_segment_id

  - dimension: date_id
    type: string
    sql: ${TABLE}.date_id

  - dimension: device_group
    type: string
    sql: ${TABLE}.device_group

  - dimension: num_logged_in_new_users
    type: number
    sql: ${TABLE}.num_logged_in_new_users

  - dimension: num_logged_in_sessions
    type: number
    sql: ${TABLE}.num_logged_in_sessions

  - dimension: num_logged_in_users
    type: number
    sql: ${TABLE}.num_logged_in_users

  - dimension: num_logged_in_views
    type: number
    sql: ${TABLE}.num_logged_in_views

  - dimension: num_new_users
    type: number
    sql: ${TABLE}.num_new_users

  - dimension: num_sessions
    type: number
    sql: ${TABLE}.num_sessions

  - dimension: num_users
    type: number
    sql: ${TABLE}.num_users

  - dimension: num_views
    type: number
    sql: ${TABLE}.num_views

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

