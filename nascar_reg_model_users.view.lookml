- view: nascar_reg_model_users
  fields:

  - dimension: days_prior7
    type: string
    sql: ${TABLE}.days_prior7

  - dimension: endstate_dt
    type: string
    sql: ${TABLE}.endstate_dt

  - dimension: master_digital_profile_id
    type: number
    sql: ${TABLE}.master_digital_profile_id

  - dimension: pvs_prior_reg
    type: number
    sql: ${TABLE}.pvs_prior_reg

  - dimension: reg_date_id
    type: number
    sql: ${TABLE}.reg_date_id

  - dimension: sessions_prior_reg
    type: number
    sql: ${TABLE}.sessions_prior_reg

  - measure: count
    type: count
    drill_fields: []

