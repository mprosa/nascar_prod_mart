- view: rosa_view_before_click
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

  - dimension: session_num
    type: string
    sql: ${TABLE}.session_num

  - dimension: session_page_num
    type: string
    sql: ${TABLE}.session_page_num

  - dimension: view_prior_to_click_page_url
    type: string
    sql: ${TABLE}.view_prior_to_click_page_url

  - dimension: view_prior_to_click_sessionpagenum
    type: number
    sql: ${TABLE}.view_prior_to_click_sessionpagenum

  - measure: count
    type: count
    drill_fields: []

