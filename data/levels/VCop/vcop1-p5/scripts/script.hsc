(script startup action
	(player_enable_input false)
	(camera_control true)
	(cinematic_start)
	(cinematic_set_title vcop)
	(sound_looping_start levels\b30\music\b30_01 none 1.00)
	(camera_set cam1 100)
	(sleep 150)
	(camera_set cam2 100)
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
	(sleep 50)
	(camera_set cam28 100)
	(sleep 50)
	(camera_set cam29 100)
	(sleep 50)
	(camera_set cam30 100)
	(sleep 50)
	(camera_set cam31 100)
	(sleep 50)
	(camera_set cam32 100)
	(sleep 50)
	(camera_set cam33 100)
	(sleep 50)
	(camera_set cam34 100)
	(sleep 50)
	(camera_set cam35 100)
	(sleep 50)
	(camera_set cam36 100)
	(sleep 150)
	(player_enable_input true)
	(camera_control false)
	(cinematic_stop)
	(object_destroy player)
	(volume_teleport_players_not_inside player player)
	(game_save_totally_unsafe)
	(activate_team_nav_point_flag default player point 0.00)
	(show_hud_help_text true)
	(hud_set_help_text obj3)
	(hud_set_objective_text obj3)
	(sleep 250)
	(show_hud_help_text false)
	(sleep_until (= (ai_living_count enemy) 0))
	(game_save_totally_unsafe)
	(sleep_until (volume_test_objects tri (players)) 1)
	(map_name vcop1-p6)
)