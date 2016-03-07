- view: d_audience_segment
  fields:

#   - dimension: active_flg
#     type: number
#     sql: ${TABLE}.active_flg

  - dimension: audience_segment_id
    type: number
    sql: ${TABLE}.audience_segment_id

#   - dimension: dataset_instance_id
#     type: number
#     sql: ${TABLE}.dataset_instance_id
# 
#   - dimension: segment_desc
#     type: string
#     sql: ${TABLE}.segment_desc

  - dimension: segment_name
    type: string
    sql: ${TABLE}.segment_name

#   - dimension: segment_subtype
#     type: string
#     sql: ${TABLE}.segment_subtype
# 
#   - dimension: segment_type
#     type: string
#     sql: ${TABLE}.segment_type
# 
#   - dimension: segmentation_method
#     type: string
#     sql: ${TABLE}.segmentation_method
# 
#   - measure: count
#     type: count
#     drill_fields: [segment_name]

