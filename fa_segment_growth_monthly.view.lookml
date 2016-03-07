- view: fa_segment_growth_monthly
  fields:

  - dimension: _c2
    type: number
    sql: ${TABLE}._c2

  - dimension: audience_segment_id
    type: number
    sql: ${TABLE}.audience_segment_id

  - dimension: month_id
    type: string
    sql: ${TABLE}.month_id

  - measure: count
    type: count
    drill_fields: []

