- view: db_individual_attribute_monthly_8
  fields:

  - dimension: amt_time_spent
    type: number
    sql: ${TABLE}.amt_time_spent

  - dimension: end_date_time
    type: string
    sql: ${TABLE}.end_date_time

  - dimension: hour_list
    type: string
    sql: ${TABLE}.hour_list

  - dimension: hours
    type: string
    sql: ${TABLE}.hours

  - dimension: master_digital_profile_id
    type: number
    sql: ${TABLE}.master_digital_profile_id

  - dimension: month_id
    type: string
    sql: ${TABLE}.month_id

  - dimension: page_name
    type: string
    sql: ${TABLE}.page_name

  - dimension: page_url
    type: string
    sql: ${TABLE}.page_url

  - dimension: page_view_date_time
    type: string
    sql: ${TABLE}.page_view_date_time

  - dimension: registered_flg
    type: number
    sql: ${TABLE}.registered_flg

  - dimension: site_section
    type: string
    sql: ${TABLE}.site_section

  - dimension: site_type
    type: string
    sql: ${TABLE}.site_type

  - dimension: subscription_level
    type: string
    sql: ${TABLE}.subscription_level

  - measure: count
    type: count
    drill_fields: [page_name]

