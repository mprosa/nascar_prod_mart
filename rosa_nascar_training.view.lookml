- view: rosa_nascar_training
  fields:

  - dimension: amt_time_spent_on_pages
    type: number
    sql: ${TABLE}.amt_time_spent_on_pages

  - dimension: amt_time_spent_on_videos
    type: number
    sql: ${TABLE}.amt_time_spent_on_videos

  - dimension: favourite_first_referrer_subtype
    type: string
    sql: ${TABLE}.favourite_first_referrer_subtype

  - dimension: favourite_first_referrer_type
    type: string
    sql: ${TABLE}.favourite_first_referrer_type

  - dimension: favourite_hour
    type: number
    sql: ${TABLE}.favourite_hour

  - dimension: favourite_os
    type: string
    sql: ${TABLE}.favourite_os

  - dimension: favourite_site_section
    type: string
    sql: ${TABLE}.favourite_site_section

  - dimension: first_referrer_subtype
    type: string
    sql: ${TABLE}.first_referrer_subtype

  - dimension: first_referrer_type
    type: string
    sql: ${TABLE}.first_referrer_type

  - dimension: first_site_section
    type: string
    sql: ${TABLE}.first_site_section

  - dimension: is_registered
    type: number
    sql: ${TABLE}.is_registered

  - dimension: master_digital_profile_id
    type: number
    sql: ${TABLE}.master_digital_profile_id

  - dimension: num_device_group
    type: number
    sql: ${TABLE}.num_device_group

  - dimension: num_page_views
    type: number
    sql: ${TABLE}.num_page_views

  - dimension: num_pixels
    type: number
    sql: ${TABLE}.num_pixels

  - dimension: num_sessions
    type: number
    sql: ${TABLE}.num_sessions

  - dimension: num_video_views
    type: number
    sql: ${TABLE}.num_video_views

  - dimension: perc_logged_in
    type: number
    sql: ${TABLE}.perc_logged_in

  - dimension: response
    type: number
    sql: ${TABLE}.response

  - dimension: session_id
    type: string
    sql: ${TABLE}.session_id

  - dimension: stimulus_time
    type: string
    sql: ${TABLE}.stimulus_time

  - dimension: time_to_stimulus
    type: number
    sql: ${TABLE}.time_to_stimulus

  - measure: count
    type: count
    drill_fields: []

