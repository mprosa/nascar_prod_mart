- view: fa_page_view_content_affinity_by_month
  suggestions: false
  fields:

  - dimension: annual_affinity_score
    type: number
    sql: ${TABLE}.annual_affinity_score

  - dimension: content_tag
    type: string
    sql: ${TABLE}.content_tag

  #- dimension: dataset_instance_id
  #  type: number
  #  sql: ${TABLE}.dataset_instance_id

  - dimension: date_yyyymm
    type: number
    sql: ${TABLE}.date_yyyymm

  - dimension: device_group
    type: string
    sql: ${TABLE}.device_group

  - dimension: master_digital_profile_id
    type: string
    sql: ${TABLE}.master_digital_profile_id

  - dimension: monthly_affinity_score
    type: number
    sql: ${TABLE}.monthly_affinity_score

  - dimension: registered_flg
    type: number
    sql: ${TABLE}.registered_flg

  - measure: audience_count
    type: count_distinct
    sql: ${TABLE}.master_digital_profile_id
    drill_fields: [master_digital_profile_id,profile_email]