- view: rosa_nascar_responses_a
  fields:

  - dimension: digital_profile_id
    type: string
    sql: ${TABLE}.digital_profile_id

  - dimension: page_event_var1
    type: string
    sql: ${TABLE}.page_event_var1

  - dimension: session_id
    type: string
    sql: ${TABLE}.session_id

  - dimension: session_page_num
    type: string
    sql: ${TABLE}.session_page_num

  - measure: count
    type: count
    drill_fields: []

