- connection: hadoop_mart_prod

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

    
- view: sponsorship_crossover
  derived_table:
    sql: |
     select h.*, a_uniques + b_uniques - crossover_uniques_a as combined_uniques
      from
      (select * from
      (select d.a_sponsorship, d.b_sponsorship, crossover_uniques_a, crossover_time_spent_a, crossover_time_spent_b, a_uniques, a_amt_time_spent, b_uniques, b_amt_time_spent
      from 
      
      (select c.a_sponsorship, c.b_sponsorship, count(distinct c.a_master_digital_profile_id) as crossover_uniques_a, sum(c.b_amt_time_spent) as crossover_time_spent_b, sum(c.a_amt_time_spent) as crossover_time_spent_a
      from
      (select a.sponsorship as a_sponsorship, b.sponsorship as b_sponsorship, a.master_digital_profile_id as a_master_digital_profile_id, b.master_digital_profile_id as b_master_digital_profile_id, a.amt_time_spent as a_amt_time_spent, b.amt_time_spent as b_amt_time_spent  
      from 
      (select sponsorship, master_digital_profile_id, sum(page_views) as page_view, sum(users) as users, sum(amt_time_spent) as amt_time_spent
      from
      nascar_analytics.rosa_sponsorship
      WHERE {% condition date_id %} date_id {% endcondition %}
      AND {% condition device_group %} device_group {% endcondition %}
      group by sponsorship, master_digital_profile_id)
      a
      full outer join 
      (select sponsorship, master_digital_profile_id, sum(page_views) as page_view, sum(users) as users, sum(amt_time_spent) as amt_time_spent
      from
      nascar_analytics.rosa_sponsorship
      WHERE {% condition date_id %} date_id {% endcondition %}
      AND {% condition device_group %} device_group {% endcondition %}
      group by sponsorship, master_digital_profile_id) b
      on a.master_digital_profile_id = b.master_digital_profile_id) c
      group by
      c.a_sponsorship, c.b_sponsorship) d
       
      inner join
      
                 (select sponsorship as a_sponsorship, count(distinct master_digital_profile_id) as a_uniques, sum(amt_time_spent) as a_amt_time_spent
      from
      nascar_analytics.rosa_sponsorship
      WHERE {% condition date_id %} date_id {% endcondition %}
      AND {% condition device_group %} device_group {% endcondition %}
      group by sponsorship) aa 
                 on d.a_sponsorship = aa.a_sponsorship
                 
                 inner join 
                 (select sponsorship as b_sponsorship, count(distinct master_digital_profile_id) as b_uniques, sum(amt_time_spent) as b_amt_time_spent
      from
      nascar_analytics.rosa_sponsorship
      WHERE {% condition date_id %} date_id {% endcondition %}
      AND {% condition device_group %} device_group {% endcondition %}
      group by sponsorship) bb on d.b_sponsorship = bb.b_sponsorship
                 
      ) f
      
      join 

      (
      select 4621365 as total_uniques, 4452127351 as total_time_spent
      /*select count(distinct master_digital_profile_id) as total_uniques, sum(amt_time_spent_on_pages) as total_time_spent
      from
      nascar_mart.fa_session a
      inner join nascar_mastering.db_digital_profile_master b
      on a.digital_profile_id = b.digital_profile_id
      inner join nascar_mart.d_device_type c
      on a.device_type = c.device_type
      WHERE c.device_group = 'DESKTOP' and a.session_start_date_id >= 20160501*/
      ) g
      ) 
      
      h

  suggestions: TRUE
  fields:
  
  - filter: date_id
    type: number
    suggestable: FALSE

  - filter: device_group
    type: string

  - dimension: a_sponsorship
    type: string
    sql: ${TABLE}.a_sponsorship

  - dimension: b_sponsorship
    type: string
    sql: ${TABLE}.b_sponsorship

  - dimension: a_amt_time_spent
    type: number
    sql: ${TABLE}.a_amt_time_spent

  - dimension: b_amt_time_spent
    type: number
    sql: ${TABLE}.b_amt_time_spent

  - dimension: crossover_uniques_a
    type: number
    sql: ${TABLE}.crossover_uniques_a

  - dimension: crossover_time_spent_a
    type: number
    sql: ${TABLE}.crossover_time_spent_a
    
  - dimension: crossover_time_spent_b
    type: number
    sql: ${TABLE}.crossover_time_spent_b

  - dimension: a_uniques
    type: number
    sql: ${TABLE}.a_uniques
    
  - dimension: b_uniques
    type: number
    sql: ${TABLE}.b_uniques
    
  - dimension: combined_uniques
    type: number
    sql: ${TABLE}.combined_uniques

  - dimension: total_uniques
    type: number
    sql: ${TABLE}.total_uniques

  - dimension: total_time_spent
    type: number
    sql: ${TABLE}.total_time_spent
    
  - measure: a_amt_time_spent_measure
    type: avg
    sql: ${a_amt_time_spent}/60

  - measure: b_amt_time_spent_measure
    type: sum
    sql: ${b_amt_time_spent}/60
    
  - measure: crossover_uniques_measure_a
    type: sum
    sql: ${crossover_uniques_a}
    
  - measure: crossover_time_spent_measure_a
    type: sum
    sql: ${crossover_time_spent_a}/60

  - measure: crossover_time_spent_measure_b
    type: sum
    sql: ${crossover_time_spent_b}/60
    
  - measure: a_uniques_measure
    type: avg
    sql: ${a_uniques}

  - measure: b_uniques_measure
    type: sum
    sql: ${b_uniques}
    
  - measure: combined_uniques_measure
    type: sum
    sql: ${combined_uniques}

  - measure: total_uniques_measure
    type: sum
    sql: ${total_uniques}
    
  - measure: total_time_spent_measure
    type: sum
    sql: ${total_time_spent}/60
    
- explore: sponsorship_crossover


- explore: fa_segment_growth_monthly
  label: 'Segment Trending'
  view_label: 'Segment Trending'  
  joins:
    - join: d_audience_segment
      type: inner
      relationship: one_to_one  
      sql_on: ${fa_segment_growth_monthly.audience_segment_id}=${d_audience_segment.audience_segment_id}
      view_label: 'Segment Trending'  
      fields: [segment_name]
  always_filter:
    d_audience_segment.segment_name: 'Registered Users' 
  
- explore: fa_page_view_content_affinity_by_month
  fields: [fa_page_view_content_affinity_by_month*,fa_page_view_content_by_month.time_spent_on_page,fa_page_view_content_by_month.page_views,d_digital_profile_gigya*,-d_digital_profile_gigya.master_digital_profile_id]
  label: Digital - Content Affinity
  description: Content affinity scores per visitor by content, time, device type, at the monthly and yearly level
  view_label: Affinity
  sql_always_where: ${device_group} <>'ALL'
  joins:
    - join: d_digital_profile_gigya
      type: left_outer
      relationship: many_to_one
      sql_on: cast(${fa_page_view_content_affinity_by_month.master_digital_profile_id} as bigint)=${d_digital_profile_gigya.master_digital_profile_id}
      view_label: Individual



# - explore: additional_features_test_a
# 
# - explore: anon_users
# 
# - explore: anon_users_junk
# 
# - explore: count_sessions
# 
# - explore: db_individual_attribute_monthly
# 
# - explore: db_individual_attribute_monthly_1
# 
# - explore: db_individual_attribute_monthly_10
# 
# - explore: db_individual_attribute_monthly_11
# 
# - explore: db_individual_attribute_monthly_12
# 
# - explore: db_individual_attribute_monthly_13
# 
# - explore: db_individual_attribute_monthly_2
# 
# - explore: db_individual_attribute_monthly_3
# 
# - explore: db_individual_attribute_monthly_4
# 
# - explore: db_individual_attribute_monthly_5
# 
# - explore: db_individual_attribute_monthly_6
# 
# - explore: db_individual_attribute_monthly_7
# 
# - explore: db_individual_attribute_monthly_8
# 
# - explore: db_individual_attribute_monthly_9
# 
# - explore: db_individual_audience_segment2_monthly
# 
# - explore: db_individual_audience_segment_monthly
# 
# - explore: dp_id
# 
# - explore: dp_id2
# 
# - explore: fa_audience_engagement_daily_tableau
# 
# - explore: fa_audience_engagement_minutely_tableau
# 
# - explore: fa_page_view_tmp
# 
# - explore: fa_segment_growth_monthly
# 
# 
# 
# - explore: features_test_a
# 
# - explore: gargg_anon_sessions
# 
# - explore: gargg_histogram_sessions
# 
# - explore: gautam_mdpid_stimulus
# 
# - explore: junk
# 
# - explore: junk2
# 
# - explore: junk4
# 
# - explore: junk5
# 
# - explore: junk_rc
# 
# - explore: mdpid_stimulus
# 
# - explore: mdpid_stimulus_2
# 
# - explore: mdpid_stimulus_test
# 
# - explore: mdpid_stimulus_test_a
# 
# - explore: mdpid_stimulus_test_b
# 
# - explore: nascar_anon_model_users
# 
# - explore: nascar_reg_model_users
# 
# - explore: native_reg
# 
# - explore: paari_temp_1
# 
# - explore: paari_test
# 
# - explore: raceview_clickers
# 
# - explore: raceview_clickers12
# 
# - explore: raceview_clickers2
# 
# - explore: reg_model_agg
# 
# - explore: reg_seg_pv
# 
# - explore: rosa_app_page_views
# 
# - explore: rosa_app_page_views_2
# 
# - explore: rosa_app_page_views_3
# 
# - explore: rosa_app_page_views_helper
# 
# - explore: rosa_app_page_views_helper_a3
# 
# - explore: rosa_app_page_views_helper_a4
# 
# - explore: rosa_app_page_views_helper_b
# 
# - explore: rosa_app_page_views_helper_b3
# 
# - explore: rosa_app_page_views_helper_b4
# 
# - explore: rosa_app_page_views_with_motivator
# 
# - explore: rosa_class_table
# 
# - explore: rosa_class_table_helper
# 
# - explore: rosa_nascar_response
# 
# - explore: rosa_nascar_responses
# 
# - explore: rosa_nascar_responses_a
# 
# - explore: rosa_nascar_responses_b
# 
# - explore: rosa_nascar_training
# 
# - explore: rosa_nascar_training_b
# 
# - explore: rosa_stimulus_details_page
# 
# - explore: rosa_two_view_before_click
# 
# - explore: rosa_view_before_click
# 
# - explore: rv_c1
# 
# - explore: rv_c2
# 
# - explore: rv_c3
# 
# - explore: rv_ret
# 
# - explore: top_nav1
# 
# - explore: top_nav2
# 
# - explore: top_nav_agg
# 
# - explore: top_nav_new
# 
# - explore: vw_session_tmp

