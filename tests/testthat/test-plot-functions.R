# Test that all plotting functions and helper functions are working correctly.
# This is done through the vdiffr package. To validate new images, call
# vdiffr::manage_cases()
test_that('Non-rotated league plots match expected outputs', {
  # Baseball
  mlb_plot = geom_baseball('mlb')
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('mlb plot', mlb_plot)

  # Basketball
  fiba_plot = geom_basketball('fiba')
  ncaa_bb_plot = geom_basketball('ncaa')
  nba_plot = geom_basketball('nba')
  wnba_plot = geom_basketball('wnba')
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('fiba plot', fiba_plot)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('ncaa bb plot', ncaa_bb_plot)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('nba plot', nba_plot)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('wnba plot', wnba_plot)

  # Hockey
  iihf_plot = geom_hockey('iihf')
  ncaa_hockey_plot = geom_hockey('ncaa')
  nhl_plot = geom_hockey('nhl')
  nwhl_plot = geom_hockey('nwhl')
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('iihf plot', iihf_plot)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('ncaa hockey plot', ncaa_hockey_plot)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('nhl plot', nhl_plot)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('nwhl plot', nwhl_plot)

  # Football
  nfl_plot = geom_football('nfl')
  ncaa_football_plot = geom_football('ncaa')
  cfl_plot = geom_football('cfl')
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('nfl plot', nfl_plot)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('ncaa football plot', ncaa_football_plot)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('cfl plot', cfl_plot)

  # Soccer
  fifa_plot = geom_soccer('fifa')
  mls_plot = geom_soccer('mls')
  ncaa_soccer_plot = geom_soccer('ncaa')
  nwsl_plot = geom_soccer('nwsl')
  premier_league_plot = geom_soccer('premier')
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('fifa plot', fifa_plot)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('mls plot', mls_plot)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('ncaa soccer plot', ncaa_soccer_plot)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('nwsl plot', nwsl_plot)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('premier league plot', premier_league_plot)

  # Swimming
  fina_plot = geom_swimming(league = "fina", course =  "lcm", number_of_lanes = 10)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('fina plot', fina_plot)
  ncaa_swimming_plot = geom_swimming(league = "NCAA", course =  "SCY", overflow_channels = 0)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('ncaa swimming plot', ncaa_swimming_plot)
  nfhs_plot = geom_swimming(league = "nfhs", course =  "SCY", number_of_lanes = 6)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('nfhs plot', nfhs_plot)

  # Tennis
  itf_plot = geom_tennis('itf')
  ncaa_tennis_plot = geom_tennis('ncaa')
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('itf plot', itf_plot)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('ncaa tennis plot', ncaa_tennis_plot)
})

test_that('Rotated league plots match expected outputs', {
  # Basketball
  fiba_plot = geom_basketball('fiba', rotate = TRUE)
  # NOTE: the professional free-throw lane features are added for additional
  # testing
  ncaa_bb_plot = geom_basketball('ncaa', rotate = TRUE, include_professional_free_throw_lane = TRUE, include_professional_free_throw_lane_lines = TRUE)
  nba_plot = geom_basketball('nba', rotate = TRUE)
  wnba_plot = geom_basketball('wnba', rotate = TRUE)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('fiba rotated plot', fiba_plot)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('ncaa bb rotated plot', ncaa_bb_plot)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('nba rotated plot', nba_plot)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('wnba rotated plot', wnba_plot)

  # Hockey
  iihf_plot = geom_hockey('iihf', rotate = TRUE)
  ncaa_hockey_plot = geom_hockey('ncaa', rotate = TRUE)
  nhl_plot = geom_hockey('nhl', rotate = TRUE)
  nwhl_plot = geom_hockey('nwhl', rotate = TRUE)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('iihf rotated plot', iihf_plot)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('ncaa hockey rotated plot', ncaa_hockey_plot)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('nhl rotated plot', nhl_plot)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('nwhl rotated plot', nwhl_plot)

  # Football
  cfl_ccw_plot = geom_football('cfl', rotate = TRUE)
  cfl_cw_plot = geom_football('cfl', rotate = TRUE, rotation_dir = 'cw')
  nfl_ccw_plot = geom_football('nfl', rotate = TRUE)
  nfl_cw_plot = geom_football('nfl', rotate = TRUE, rotation_dir = 'cw')
  ncaa_football_ccw_plot = geom_football('ncaa', rotate = TRUE)
  ncaa_football_cw_plot = geom_football('ncaa', rotate = TRUE, rotation_dir = 'cw')
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('cfl rotated ccw plot', cfl_ccw_plot)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('cfl rotated cw plot', cfl_cw_plot)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('nfl rotated ccw plot', nfl_ccw_plot)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('nfl rotated cw plot', nfl_cw_plot)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('ncaa football rotated ccw plot', ncaa_football_ccw_plot)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('ncaa football rotated cw plot', ncaa_football_cw_plot)

  # Soccer
  # NOTE: only half the pitch is plotted for additional testing of features
  fifa_plot = geom_soccer('fifa', rotate = TRUE, full_surf = FALSE)
  mls_plot = geom_soccer('mls', rotate = TRUE, full_surf = FALSE)
  ncaa_soccer_plot = geom_soccer('ncaa', rotate = TRUE, full_surf = FALSE)
  nwsl_plot = geom_soccer('nwsl', rotate = TRUE, full_surf = FALSE)
  premier_league_plot = geom_soccer('premier', rotate = TRUE, full_surf = FALSE)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('fifa rotated plot', fifa_plot)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('mls rotated plot', mls_plot)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('nwsl rotated plot', nwsl_plot)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('premier league rotated plot', premier_league_plot)

  # Tennis
  itf_plot = geom_tennis('itf', rotate = TRUE)
  ncaa_tennis_plot = geom_tennis('ncaa', rotate = TRUE)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('itf rotated plot', itf_plot)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('ncaa tennis rotated plot', ncaa_tennis_plot)
})

test_that('Plots can be made in different units', {
  # Baseball
  mlb_in_plot = geom_baseball('mlb', unit = 'in')
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('mlb inch plot', mlb_in_plot)

  # Basketball
  fiba_plot = geom_basketball('fiba', unit = 'in')
  ncaa_bb_plot = geom_basketball('ncaa', unit = 'in', include_professional_free_throw_lane = TRUE, include_professional_free_throw_lane_lines = TRUE)
  nba_plot = geom_basketball('nba', unit = 'in')
  wnba_plot = geom_basketball('wnba', unit = 'in')
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('fiba inch plot', fiba_plot)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('ncaa inch bb plot', ncaa_bb_plot)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('nba inch plot', nba_plot)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('wnba inch plot', wnba_plot)

  # Hockey
  iihf_plot = geom_hockey('iihf', unit = 'in')
  ncaa_hockey_plot = geom_hockey('ncaa', unit = 'in')
  nhl_plot = geom_hockey('nhl', unit = 'in')
  nwhl_plot = geom_hockey('nwhl', unit = 'in')
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('iihf inch plot', iihf_plot)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('ncaa inch hockey plot', ncaa_hockey_plot)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('nhl inch plot', nhl_plot)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('nwhl inch plot', nwhl_plot)

  # Football
  cfl_plot = geom_football('cfl', unit = 'in')
  nfl_plot = geom_football('nfl', unit = 'in')
  ncaa_football_plot = geom_football('ncaa', unit = 'in')
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('cfl inch plot', cfl_plot)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('nfl inch plot', nfl_plot)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('ncaa inch football plot', ncaa_football_plot)

  # Soccer
  fifa_plot = geom_soccer('fifa', unit = 'in')
  mls_plot = geom_soccer('mls', unit = 'in')
  ncaa_soccer_plot = geom_soccer('ncaa', unit = 'in')
  nwsl_plot = geom_soccer('nwsl', unit = 'in')
  premier_league_plot = geom_soccer('premier', unit = 'in')
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('fifa inch plot', fifa_plot)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('mls inch plot', mls_plot)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('ncaa inch soccer plot', ncaa_soccer_plot)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('nwsl inch plot', nwsl_plot)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('premier inch league plot', premier_league_plot)

  # Tennis
  itf_plot = geom_tennis('itf', unit = 'in')
  ncaa_tennis_plot = geom_tennis('ncaa', unit = 'in')
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('itf inch plot', itf_plot)
  testthat::skip_if(getRversion() >= 4.1)
  vdiffr::expect_doppelganger('ncaa tennis inch plot', ncaa_tennis_plot)
})

test_that('Plot must have non-null caption color', {
  # This is done to ensure that the plot has correct attribution
  expect_error(create_plot_base(caption_color = NULL))
})

test_that('A data frame without columns \'x\' and \'y\' should not be plottable', {
  # This is done to ensure that the column names passed to add_feature() will
  # pass
  bad_df = data.frame('badx' = 1:3, 'bady' = 1:3 ^ 2)
  expect_false(check_data_frame_for_plot(bad_df))

  # Passing this to the add_feature() function should result in an error
  g = create_plot_base()
  expect_error(add_feature(g, bad_df, '#000000'))
})
