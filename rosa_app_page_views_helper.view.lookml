- view: rosa_app_page_views_helper
  fields:

  - dimension: app_landing_page_type
    type: string
    sql: ${TABLE}.app_landing_page_type

  - dimension: digital_profile_id
    type: string
    sql: ${TABLE}.digital_profile_id

  - dimension: motivator_page_num
    type: number
    sql: ${TABLE}.motivator_page_num

  - dimension: page_url
    type: string
    sql: ${TABLE}.page_url

  - dimension: session_id
    type: string
    sql: ${TABLE}.session_id

  - dimension: session_num
    type: string
    sql: ${TABLE}.session_num

  - dimension: session_page_num
    type: string
    sql: ${TABLE}.session_page_num

  - measure: count
    type: count
    drill_fields: []

