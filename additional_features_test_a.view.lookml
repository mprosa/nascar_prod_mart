- view: additional_features_test_a
  fields:

  - dimension: fantasy_chase_dsli
    type: number
    sql: ${TABLE}.fantasy_chase_dsli

  - dimension: fantasy_live_dsli
    type: number
    sql: ${TABLE}.fantasy_live_dsli

  - dimension: fantasy_streak_dsli
    type: number
    sql: ${TABLE}.fantasy_streak_dsli

  - dimension: leaderboard_dsli
    type: number
    sql: ${TABLE}.leaderboard_dsli

  - dimension: master_digital_profile_id
    type: number
    sql: ${TABLE}.master_digital_profile_id

  - dimension: racebuddy_dsli
    type: number
    sql: ${TABLE}.racebuddy_dsli

  - dimension: raceview_dsli
    type: number
    sql: ${TABLE}.raceview_dsli

  - dimension: scanner_dsli
    type: number
    sql: ${TABLE}.scanner_dsli

  - dimension: stimulus_time
    type: string
    sql: ${TABLE}.stimulus_time

  - dimension: time_spent_on_fantasy_chase
    type: number
    sql: ${TABLE}.time_spent_on_fantasy_chase

  - dimension: time_spent_on_fantasy_live
    type: number
    sql: ${TABLE}.time_spent_on_fantasy_live

  - dimension: time_spent_on_fantasy_streak
    type: number
    sql: ${TABLE}.time_spent_on_fantasy_streak

  - dimension: time_spent_on_leaderboard
    type: number
    sql: ${TABLE}.time_spent_on_leaderboard

  - dimension: time_spent_on_race_view
    type: number
    sql: ${TABLE}.time_spent_on_race_view

  - dimension: time_spent_on_racebuddy
    type: number
    sql: ${TABLE}.time_spent_on_racebuddy

  - dimension: time_spent_on_scanner
    type: number
    sql: ${TABLE}.time_spent_on_scanner

  - measure: count
    type: count
    drill_fields: []

