- view: fa_page_view_content_by_month
  sql_table_name: nascar_mart.fa_page_view_content_by_month
  fields:

  - dimension: content_tag
    type: string
    sql: ${TABLE}.content_tag

  - dimension: dataset_instance_id
    type: number
    sql: ${TABLE}.dataset_instance_id

  - dimension: date_yyyymm
    type: number
    sql: ${TABLE}.date_yyyymm

  - dimension: device_group
    type: string
    sql: ${TABLE}.device_group

  - dimension: master_digital_profile_id
    type: string
    sql: ${TABLE}.master_digital_profile_id

  - dimension: page_views
    type: number
    sql: ${TABLE}.page_views

  - dimension: pc_date_yyyymm
    type: number
    sql: ${TABLE}.pc_date_yyyymm

  - dimension: registered_flg
    type: number
    sql: ${TABLE}.registered_flg

  - dimension: time_spent_on_page
    type: number
    sql: ${TABLE}.time_spent_on_page

  - measure: count
    type: count
    drill_fields: []

