- view: rosa_class_table_helper
  fields:

  - dimension: digital_profile_id
    type: string
    sql: ${TABLE}.digital_profile_id

  - dimension: master_digital_profile_id
    type: number
    sql: ${TABLE}.master_digital_profile_id

  - dimension: motivator_page
    type: string
    sql: ${TABLE}.motivator_page

  - dimension: motivator_page_num
    type: number
    sql: ${TABLE}.motivator_page_num

  - dimension: response
    type: number
    sql: ${TABLE}.response

  - dimension: response_type
    type: string
    sql: ${TABLE}.response_type

  - dimension: session_id
    type: string
    sql: ${TABLE}.session_id

  - dimension: session_num
    type: string
    sql: ${TABLE}.session_num

  - dimension: stimulus_page_num
    type: string
    sql: ${TABLE}.stimulus_page_num

  - dimension: stimulus_type
    type: string
    sql: ${TABLE}.stimulus_type

  - measure: count
    type: count
    drill_fields: []

