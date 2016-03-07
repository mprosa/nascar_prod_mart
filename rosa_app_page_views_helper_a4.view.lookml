- view: rosa_app_page_views_helper_a4
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

  - dimension: prior_pages
    type: string
    sql: ${TABLE}.prior_pages

  - dimension: session_id
    type: string
    sql: ${TABLE}.session_id

  - dimension: session_page_num
    type: number
    sql: ${TABLE}.session_page_num

  - measure: count
    type: count
    drill_fields: []

