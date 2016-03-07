- view: top_nav_agg
  fields:

  - dimension: nav_used
    type: number
    sql: ${TABLE}.nav_used

  - dimension: pvs
    type: number
    sql: ${TABLE}.pvs

  - dimension: session_id
    type: string
    sql: ${TABLE}.session_id

  - measure: count
    type: count
    drill_fields: []

