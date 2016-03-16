- connection: hadoop_mart_prod

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards


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

