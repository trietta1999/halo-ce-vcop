(script startup action
(cinematic_start)
(cinematic_set_title vcop)
(ai_place enemy)
(sound_looping_start sound\music\covenant_dance\covenant_dance none 1)
(camera_control 1)
(player_enable_input 0)
(camera_set cam1 100)
(sleep 150)
(camera_set cam2 100)
(sleep 50)
(camera_set cam3 100)
(sleep 50)
(camera_set cam4 100)
(sleep 50)
(camera_set cam5 100)
(sleep 50)
(camera_set cam6 100)
(sleep 50)
(camera_set cam7 100)
(sleep 50)
(camera_set cam8 100)
(sleep 50)
(camera_set cam9 100)
(sleep 50)
(camera_set cam10 100)
(sleep 50)
(camera_set cam11 100)
(sleep 50)
(camera_set cam12 100)
(sleep 50)
(camera_set cam13 100)
(sleep 50)
(camera_set cam14 100)
(sleep 50)
(camera_set cam15 100)
(sleep 50)
(camera_set cam16 100)
(sleep 50)
(camera_set cam17 100)
(sleep 50)
(camera_set cam18 100)
(sleep 50)
(camera_set cam19 100)
(sleep 50)
(camera_set cam20 100)
(sleep 50)
(camera_set cam21 100)
(sleep 50)
(camera_set cam22 100)
(sleep 50)
(camera_set cam23 100)
(sleep 50)
(camera_set cam24 100)
(sleep 50)
(camera_set cam25 100)
(sleep 50)
(camera_set cam26 100)
(sleep 50)
(camera_set cam27 100)
(sleep 150)
(cinematic_stop)
(object_destroy player)
(volume_teleport_players_not_inside tele player)
(camera_control 0)
(player_enable_input 1)
(activate_team_nav_point_flag default player point 0)
(Sleep_until (= (ai_living_count enemy)0))
(game_save)
(sleep_until (volume_test_objects tri (players))1)
(map_name vcop3-p6)
)