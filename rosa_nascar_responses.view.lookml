- view: rosa_nascar_responses
  fields:

  - dimension: app_type
    type: string
    sql: ${TABLE}.app_type

  - dimension: digital_profile_id
    type: string
    sql: ${TABLE}.digital_profile_id

  - dimension: page_event_var1
    type: string
    sql: ${TABLE}.page_event_var1

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

