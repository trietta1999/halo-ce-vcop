(global boolean is_boss false)
(global boolean is_boss_squad false)
(global boolean is_start false)
(global boolean is_test false)

(script dormant call_to_boss
	(sleep_until (volume_test_objects tri2 (players)) 1)
	(ai_kill enemy)
	(ai_place enemy/i)
	(ai_place enemy/j)
	(sleep_until (volume_test_objects tri6 (players)) 1)
	(ai_kill enemy)
	(ai_place enemy/g)
	(game_save_totally_unsafe)
	(sleep_until (= (ai_living_count enemy) 0))
	(sleep_until (volume_test_objects tri3 (players)) 1)
	(volume_teleport_players_not_inside player player1)
	(deactivate_team_nav_point_flag player point3)
	(game_save_totally_unsafe)
	(sound_looping_stop sound\music\on_a_pale_horse\on-a-pale-horse)
	(sound_looping_start sound\music\tlos\epic_black_powers none 1.00)
	(activate_team_nav_point_flag default player point4 0.00)
	(ai_place enemy/h)
	(game_save_totally_unsafe)
	(sleep_until (volume_test_objects tri4 (players)) 1)
	(deactivate_team_nav_point_flag player point4)
	(ai_kill enemy)
	(game_save_totally_unsafe)
	(player_enable_input false)
	(camera_control true)
	(ai_allegiance player human)
	(camera_set cam30 100)
	(sleep 150)
	(camera_set cam31 100)
	(ai_place enemy/boss)
	(camera_set cam32 100)
	(sleep 250)
	(ai_allegiance_remove player human)
	(volume_teleport_players_not_inside player player2)
	(sleep 50)
	(player_enable_input true)
	(camera_control false)
	(object_create s1)
	(object_create s2)
	(show_hud_timer 1)
	(hud_set_timer_position 370 0 top_right)
	(hud_set_timer_time 0 0)
	(set is_boss true)
	(sleep_until (= (ai_living_count enemy/boss) 0))
	(show_hud_help_text false)
	(set is_boss false)
	(ai_kill enemy)
	(show_hud_timer 0)
	(game_save_totally_unsafe)
	(sleep 100)
	(fade_out 0.00 0.00 0.00 100)
	(sleep 150)
	(map_name a50)
)

(script startup start_hud
	(sleep_until (= is_start true))
	(show_hud_help_text true)
	(hud_set_help_text obj4)
	(hud_set_objective_text obj4)
	(sleep 250)
	(show_hud_help_text false)
	(sleep_until (= is_boss true))
	(show_hud_help_text true)
	(hud_set_help_text obj5)
	(hud_set_objective_text obj5)
)

(script continuous run_trigger_5_boss
	(if (= is_boss true)
	(begin
		(if (= (volume_test_objects tri5 (ai_actors enemy/boss)) false)
			(if (= is_boss_squad false)
			(begin
				(object_create ex1)
				(ai_command_list enemy/boss tele)
				(sleep 50)
				(object_destroy ex1)
			))
		)
		(if (= (volume_test_objects tri5 (players)) false)
		(begin
			(object_create ex2)
			(volume_teleport_players_not_inside player player2)
			(sleep 50)
			(object_destroy ex2)
		))
	))
)

(script continuous run_boss_squad
	(if (= is_boss true)
		(if (= (unit_get_shield (unit (list_get (ai_actors enemy/boss) 0))) 0.00)
		(begin			
			(hud_set_timer_time 0 10)
			(show_hud_help_text true)
			(hud_set_help_text obj1)
			(sleep_until (= (hud_get_timer_ticks) -1) 1)
			(set is_boss_squad true)
			(ai_command_list enemy/boss tele1)
			(ai_place enemy/boss_q)
			(hud_set_timer_time 0 60)
			(hud_set_help_text obj2)
			(sleep_until (= (hud_get_timer_ticks) -1) 1)
			(hud_set_help_text obj5)
			(sleep_until (= (ai_living_count enemy/boss_q) 0))
			(set is_boss_squad false)
		)
	))
)

(script startup start_trigger_1
	(sleep_until (volume_test_objects tri1 (players)) 1)
	(deactivate_team_nav_point_flag player point1)
	(activate_team_nav_point_flag default player point2 0.00)
	(sound_looping_stop levels\b30\music\b30_01)
	(sound_looping_start sound\music\drumrun\drumrun none 1.00)
	(game_save_totally_unsafe)
)

(script startup start_trigger_2
	(sleep_until (volume_test_objects tri2 (players)) 1)
	(deactivate_team_nav_point_flag player point2)
	(activate_team_nav_point_flag default player point3 0.00)
	(sound_looping_stop sound\music\drumrun\drumrun)
	(sound_looping_start sound\music\on_a_pale_horse\on-a-pale-horse none 1.00)
	(game_save_totally_unsafe)
)

(script continuous run_weapon
	(object_create pistol)
	(object_create shotgun)
)

(script startup start_test
	(sleep_until (= is_test true))
	(sleep 32767 action)
	(cinematic_stop)
	(ai_kill enemy)
	(sound_looping_stop levels\b30\music\b30_01)
	(deactivate_team_nav_point_flag player point1)
	(volume_teleport_players_not_inside player point2)
	(wake call_to_boss)
	(sleep 50)
	(volume_teleport_players_not_inside player point5)
	(sleep 50)
	(volume_teleport_players_not_inside player point3)
	(ai_kill enemy)
	(sleep 50)
	(volume_teleport_players_not_inside player test)
	(ai_kill enemy)
)

(script startup action
	(object_destroy s1)
	(object_destroy s2)
	(object_destroy ex1)
	(object_destroy ex2)
	(object_destroy door)
	(object_destroy control)
	(cinematic_set_title vcop)
	(ai_place enemy/a)
	(ai_place enemy/a1)
	(ai_place enemy/b)
	(player_enable_input false)
	(camera_control true)
	(cinematic_start)
	(sound_looping_start levels\b30\music\b30_01 none 1.00)
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
	(ai_erase enemy/b)
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
	(sleep 150)
	(cinematic_stop)
	(object_create door)
	(object_create control)
	(device_operates_automatically_set door 0)
	(volume_teleport_players_not_inside player player)
	(object_destroy player)
	(player_enable_input true)
	(camera_control false)
	(game_save_totally_unsafe)
	(activate_team_nav_point_flag default player point1 0.00)
	(set is_start true)
	(sleep_until (= (device_get_position control) 1) 1)
	(sound_impulse_start sound\sfx\impulse\panel\activate_panel none 1.00)
	(device_operates_automatically_set door 1)
	(object_destroy control)
	(game_save_totally_unsafe)
	(ai_place enemy/b)
	(sleep_until (volume_test_objects ai1 (players)) 1)
	(ai_place enemy/c)
	(game_save_totally_unsafe)
	(sleep_until (volume_test_objects ai2 (players)) 1)
	(ai_place enemy/d)
	(game_save_totally_unsafe)
	(sleep_until (volume_test_objects ai3 (players)) 1)
	(ai_place enemy/e)
	(game_save_totally_unsafe)
	(sleep_until (volume_test_objects ai4 (players)) 1)
	(ai_place enemy/f)
	(game_save_totally_unsafe)
	(wake call_to_boss)
)
