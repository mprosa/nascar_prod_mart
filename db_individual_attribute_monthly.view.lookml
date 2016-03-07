- view: db_individual_attribute_monthly
  fields:

  - dimension: attribute_desc
    type: string
    sql: ${TABLE}.attribute_desc

  - dimension: attribute_name
    type: string
    sql: ${TABLE}.attribute_name

  - dimension: attribute_value
    type: number
    sql: ${TABLE}.attribute_value

  - dimension: attribute_value_datatype_id
    type: number
    sql: ${TABLE}.attribute_value_datatype_id

  - dimension: master_digital_profile_id
    type: number
    sql: ${TABLE}.master_digital_profile_id

  - dimension: month_id
    type: string
    sql: ${TABLE}.month_id

  - measure: count
    type: count
    drill_fields: [attribute_name]

