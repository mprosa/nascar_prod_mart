- view: top_nav_new
  fields:

  - dimension: chasecenter_pv
    type: number
    sql: ${TABLE}.chasecenter_pv

  - dimension: chasecenter_tn
    type: number
    sql: ${TABLE}.chasecenter_tn

  - dimension: date_yyyymm
    type: number
    sql: ${TABLE}.date_yyyymm

  - dimension: discover_pv
    type: number
    sql: ${TABLE}.discover_pv

  - dimension: discover_tn
    type: number
    sql: ${TABLE}.discover_tn

  - dimension: drivers_pv
    type: number
    sql: ${TABLE}.drivers_pv

  - dimension: drivers_tn
    type: number
    sql: ${TABLE}.drivers_tn

  - dimension: fantasy_pv
    type: number
    sql: ${TABLE}.fantasy_pv

  - dimension: fantasy_tn
    type: number
    sql: ${TABLE}.fantasy_tn

  - dimension: news_pv
    type: number
    sql: ${TABLE}.news_pv

  - dimension: news_tn
    type: number
    sql: ${TABLE}.news_tn

  - dimension: pvs
    type: number
    sql: ${TABLE}.pvs

  - dimension: schedule_results_pv
    type: number
    sql: ${TABLE}.schedule_results_pv

  - dimension: schedule_results_tn
    type: number
    sql: ${TABLE}.schedule_results_tn

  - dimension: session_id
    type: string
    sql: ${TABLE}.session_id

  - dimension: shop_pv
    type: number
    sql: ${TABLE}.shop_pv

  - dimension: shop_tn
    type: number
    sql: ${TABLE}.shop_tn

  - dimension: standings_pv
    type: number
    sql: ${TABLE}.standings_pv

  - dimension: standings_tn
    type: number
    sql: ${TABLE}.standings_tn

  - dimension: video_pv
    type: number
    sql: ${TABLE}.video_pv

  - dimension: video_tn
    type: number
    sql: ${TABLE}.video_tn

  - measure: count
    type: count
    drill_fields: []

