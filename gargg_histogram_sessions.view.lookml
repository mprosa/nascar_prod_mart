- view: gargg_histogram_sessions
  fields:

  - dimension: count_dpids
    type: number
    sql: ${TABLE}.count_dpids

  - dimension: count_sessions
    type: number
    sql: ${TABLE}.count_sessions

  - measure: count
    type: count
    drill_fields: []

