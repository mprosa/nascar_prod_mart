- view: d_digital_profile_gigya
  sql_table_name: nascar_mart.d_digital_profile_gigya
  fields:

  - dimension: created_time
    type: string
    sql: ${TABLE}.created_time

  - dimension: dataset_instance_id
    type: number
    sql: ${TABLE}.dataset_instance_id

  - dimension: digital_profile_id
    type: string
    sql: ${TABLE}.digital_profile_id

  - dimension: dob
    type: string
    sql: ${TABLE}.dob

  - dimension: fav_driver
    type: string
    sql: ${TABLE}.fav_driver

  - dimension: lastlogin
    type: string
    sql: ${TABLE}.lastlogin

  - dimension: loginprovider
    type: string
    sql: ${TABLE}.loginprovider

  - dimension: master_digital_profile_id
    type: number
    sql: ${TABLE}.master_digital_profile_id

  - dimension: master_individual_id
    type: string
    sql: ${TABLE}.master_individual_id

  - dimension: mydriver
    type: string
    sql: ${TABLE}.mydriver

  - dimension: news_sub
    type: string
    sql: ${TABLE}.news_sub

  - dimension: profile_age
    type: number
    sql: ${TABLE}.profile_age

  - dimension: profile_birthday
    type: string
    sql: ${TABLE}.profile_birthday

  - dimension: profile_birthmonth
    type: string
    sql: ${TABLE}.profile_birthmonth

  - dimension: profile_birthyear
    type: string
    sql: ${TABLE}.profile_birthyear

  - dimension: profile_city
    type: string
    sql: ${TABLE}.profile_city

  - dimension: profile_country
    type: string
    sql: ${TABLE}.profile_country

  - dimension: profile_email
    type: string
    sql: ${TABLE}.profile_email

  - dimension: profile_firstname
    type: string
    sql: ${TABLE}.profile_firstname

  - dimension: profile_gender
    type: string
    sql: ${TABLE}.profile_gender

  - dimension: profile_lastname
    type: string
    sql: ${TABLE}.profile_lastname

  - dimension: profile_state
    type: string
    sql: ${TABLE}.profile_state

  - dimension: profile_verified
    type: string
    sql: ${TABLE}.profile_verified

  - dimension: profile_zip
    type: string
    sql: ${TABLE}.profile_zip

  - dimension: regsource
    type: string
    sql: ${TABLE}.regsource

  - dimension: socialproviders
    type: string
    sql: ${TABLE}.socialproviders

  - dimension: uid
    type: string
    sql: ${TABLE}.uid

  - measure: count
    type: count
    drill_fields: [created_time, profile_firstname, profile_lastname]

