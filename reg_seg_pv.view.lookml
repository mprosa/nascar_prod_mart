- view: reg_seg_pv
  fields:

  - dimension: after_the_lap_ts_p
    type: number
    sql: ${TABLE}.after_the_lap_ts_p

  - dimension: age
    type: number
    sql: ${TABLE}.age

  - dimension: article_news_media_ts_p
    type: number
    sql: ${TABLE}.article_news_media_ts_p

  - dimension: driver_ts_p
    type: number
    sql: ${TABLE}.driver_ts_p

  - dimension: edu_sess_p
    type: number
    sql: ${TABLE}.edu_sess_p

  - dimension: facebook_sess_p
    type: number
    sql: ${TABLE}.facebook_sess_p

  - dimension: fantasy_chase_ts_p
    type: number
    sql: ${TABLE}.fantasy_chase_ts_p

  - dimension: fantasy_live_ts_p
    type: number
    sql: ${TABLE}.fantasy_live_ts_p

  - dimension: fantasy_streak_ts_p
    type: number
    sql: ${TABLE}.fantasy_streak_ts_p

  - dimension: fantasy_ts_p
    type: number
    sql: ${TABLE}.fantasy_ts_p

  - dimension: female
    type: number
    sql: ${TABLE}.female

  - dimension: gallery_ts_p
    type: number
    sql: ${TABLE}.gallery_ts_p

  - dimension: google_sess_p
    type: number
    sql: ${TABLE}.google_sess_p

  - dimension: hp_camping_wt_ts_p
    type: number
    sql: ${TABLE}.hp_camping_wt_ts_p

  - dimension: hp_home_track_ts_p
    type: number
    sql: ${TABLE}.hp_home_track_ts_p

  - dimension: hp_sprint_cup_ts_p
    type: number
    sql: ${TABLE}.hp_sprint_cup_ts_p

  - dimension: hp_xfinity_series_ts_p
    type: number
    sql: ${TABLE}.hp_xfinity_series_ts_p

  - dimension: lan_sess_p
    type: number
    sql: ${TABLE}.lan_sess_p

  - dimension: leaderboard_standings_ts_p
    type: number
    sql: ${TABLE}.leaderboard_standings_ts_p

  - dimension: male
    type: number
    sql: ${TABLE}.male

  - dimension: master_individual_id
    type: string
    sql: ${TABLE}.master_individual_id

  - dimension: mid_week_visitor_ts_p
    type: number
    sql: ${TABLE}.mid_week_visitor_ts_p

  - dimension: mobile_sess_p
    type: number
    sql: ${TABLE}.mobile_sess_p

  - dimension: mobile_ts_p
    type: number
    sql: ${TABLE}.mobile_ts_p

  - dimension: nascar_green_ts_p
    type: number
    sql: ${TABLE}.nascar_green_ts_p

  - dimension: nascar_with_dad_ts_p
    type: number
    sql: ${TABLE}.nascar_with_dad_ts_p

  - dimension: nascar_with_mom_ts_p
    type: number
    sql: ${TABLE}.nascar_with_mom_ts_p

  - dimension: non_us_sess_p
    type: number
    sql: ${TABLE}.non_us_sess_p

  - dimension: page_views
    type: number
    sql: ${TABLE}.page_views

  - dimension: pc_sess_p
    type: number
    sql: ${TABLE}.pc_sess_p

  - dimension: pc_ts_p
    type: number
    sql: ${TABLE}.pc_ts_p

  - dimension: race_center_ts_p
    type: number
    sql: ${TABLE}.race_center_ts_p

  - dimension: racebuddy_ts_p
    type: number
    sql: ${TABLE}.racebuddy_ts_p

  - dimension: raceview_ts_p
    type: number
    sql: ${TABLE}.raceview_ts_p

  - dimension: results_ts_p
    type: number
    sql: ${TABLE}.results_ts_p

  - dimension: scanner_ts_p
    type: number
    sql: ${TABLE}.scanner_ts_p

  - dimension: schedule_ts_p
    type: number
    sql: ${TABLE}.schedule_ts_p

  - dimension: se_sess_p
    type: number
    sql: ${TABLE}.se_sess_p

  - dimension: sessions
    type: number
    sql: ${TABLE}.sessions

  - dimension: shop_ts_p
    type: number
    sql: ${TABLE}.shop_ts_p

  - dimension: sn_sess_p
    type: number
    sql: ${TABLE}.sn_sess_p

  - dimension: sweepstake_ts_p
    type: number
    sql: ${TABLE}.sweepstake_ts_p

  - dimension: tablet_sess_p
    type: number
    sql: ${TABLE}.tablet_sess_p

  - dimension: tablet_ts_p
    type: number
    sql: ${TABLE}.tablet_ts_p

  - dimension: time_spent
    type: number
    sql: ${TABLE}.time_spent

  - dimension: twitter_sess_p
    type: number
    sql: ${TABLE}.twitter_sess_p

  - dimension: typed_sess_p
    type: number
    sql: ${TABLE}.typed_sess_p

  - dimension: unknown_gender
    type: number
    sql: ${TABLE}.unknown_gender

  - dimension: us_sess_p
    type: number
    sql: ${TABLE}.us_sess_p

  - dimension: weekend_visitor_ts_p
    type: number
    sql: ${TABLE}.weekend_visitor_ts_p

  - dimension: wireless_sess_p
    type: number
    sql: ${TABLE}.wireless_sess_p

  - measure: count
    type: count
    drill_fields: []

