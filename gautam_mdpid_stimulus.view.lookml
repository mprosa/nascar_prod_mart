- view: gautam_mdpid_stimulus
  fields:

  - dimension: master_digital_profile_id
    type: number
    sql: ${TABLE}.master_digital_profile_id

  - dimension: stimulus_time
    type: string
    sql: ${TABLE}.stimulus_time

  - measure: count
    type: count
    drill_fields: []

