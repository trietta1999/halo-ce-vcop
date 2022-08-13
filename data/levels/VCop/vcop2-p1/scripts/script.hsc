(global boolean in_war false)
(global boolean is_sniper false)
(global boolean is_sniper_counter false)
(global short count 0)

(script dormant call_get_warthog
	(sleep_until (vehicle_test_seat_list war "W-driver" (players)) 1)
	(vehicle_load_magic war "" (ai_actors friends))
	(deactivate_team_nav_point_object player war)
)

(script continuous run_check_seat
	(if (= in_war true)
		(if (= (vehicle_test_seat_list war "W-gunner" (players)) 0)
			(vehicle_load_magic war "W-gunner" (players))
		)
	)
)

(script continuous run_activate_sniper
	(if (= is_sniper true)
	(begin
		(activate_team_nav_point_object default player (list_get (ai_actors enemy) 0) 0)
		(activate_team_nav_point_object default player (list_get (ai_actors enemy) 1) 0)
		(activate_team_nav_point_object default player (list_get (ai_actors enemy) 2) 0)
		(activate_team_nav_point_object default player (list_get (ai_actors enemy) 3) 0)
		(activate_team_nav_point_object default player (list_get (ai_actors enemy) 4) 0)
		(activate_team_nav_point_object default player (list_get (ai_actors enemy) 5) 0)
	))
)

(script continuous run_sniper_counter
	(if (= is_sniper_counter true)
	(begin
		(set count (ai_living_count enemy))
		(hud_set_timer_time 0 (+ count 1))
	))
)

(script dormant call_to_sniper
	(ai_place enemy/sni)
	
	(show_hud_timer 1)
	(hud_set_timer_position 70 40 top_right)
	(set is_sniper_counter true)
	
	(show_hud_help_text true)
	(hud_set_help_text obj7)
	(hud_set_objective_text obj7)
	(sleep 250)
	(show_hud_help_text false)
	
	(sleep_until (= (ai_living_count enemy) 15))
	(set is_sniper true)
	(set is_sniper_counter true)
	
	(sleep_until (= (ai_living_count enemy) 0))
	(set is_sniper false)
	(set is_sniper_counter false)
	(show_hud_timer 0)
	
	(game_save_totally_unsafe)
	
	(sound_looping_stop "sound\music\earth city\earth-city")
	(sleep 50)
	(sound_looping_start levels\b30\music\b30_01 none 1)
	
	(activate_team_nav_point_flag default player point2 0)
	(activate_team_nav_point_object default player war 0)
	(unit_set_enterable_by_player war 1)
	
	(wake call_get_warthog)
	
	(show_hud_help_text true)
	(hud_set_help_text obj8)
	(hud_set_objective_text obj8)
	(sleep 250)
	(show_hud_help_text false)
	
	(sleep_until (volume_test_objects tri2 (players))1)
	
	(deactivate_team_nav_point_flag player point2)
	(deactivate_team_nav_point_object player war)
	(player_enable_input 0)
	
	(fade_out 0 0 0 50)
	(sleep 100)
	
	(ai_erase friends)
	(ai_place friends2/sq2)
	(volume_teleport_players_not_inside player tele2)
	
	(activate_team_nav_point_object default player fal 0)
	(game_save_totally_unsafe)
	
	(fade_in 0 0 0 50)
	(sleep 50)
	(player_enable_input 1)
	
	(sleep_until (vehicle_test_seat_list fal "w-driver" (players)) 1)
	(vehicle_load_magic fal "" (ai_actors friends2))
	(deactivate_team_nav_point_object player fal)
	(vehicle_hover fal 0)
	
	(player_enable_input 0)
	
	(fade_out 0 0 0 100)
	(game_save_totally_unsafe)
	(sleep 200)
	(map_name vcop2-p2)
)

(script dormant call_to_run_2
	(player_enable_input 0)
	
	(fade_out 0 0 0 50)
	(sleep 100)
	
	(object_destroy r_cad1)
	(object_destroy r_cad2)
	(object_create cad3)
	(object_create cad4)
	
	(ai_place enemy/dr3)
	(ai_place enemy/dr4)
	(vehicle_load_magic cad3 "" (ai_actors enemy/dr3))
	(vehicle_load_magic cad4 "" (ai_actors enemy/dr4))
	(ai_command_list enemy/dr3 dr3)
	(ai_command_list enemy/dr4 dr4)
	
	(ai_allegiance player human)
	
	(fade_in 0 0 0 50)
	(sleep 50)
	(game_speed 1.5)
	
	(sleep_until (or (volume_test_objects tri_dr1_0 (ai_actors enemy/dr3)) (volume_test_objects tri_dr4_0 (ai_actors enemy/dr4))) 1)
	
	(ai_allegiance_remove player human)
	(player_enable_input 1)
	
	(show_hud_help_text true)
	(hud_set_help_text obj3)
	
	(game_speed 0.8)
	(sleep_until (= (ai_living_count enemy)0))
	(game_speed 1)
	(show_hud_help_text false)
	
	(game_save_totally_unsafe)
	(player_enable_input 0)
	(sleep 100)
	(game_speed 1.5)
	
	(object_create cop1)
	(object_create cop2)
	(unit_set_enterable_by_player cop1 0)
	(unit_set_enterable_by_player cop2 0)
	
	(ai_place enemy/dr5)
	(ai_place friends2/sq1)
	
	(ai_command_list friends f_dr2)
	
	(sleep_until (volume_test_objects tri3 (players)) 1)
	(vehicle_load_magic cad5 "" (ai_actors enemy/dr5))
	(ai_command_list enemy/dr5 dr5)
	
	(sleep_until (volume_test_objects tri_dr5 (ai_actors enemy/dr5)) 1)
	(sleep 20)
	(game_speed 1)
	(object_create ex3)
	(ai_kill friends2)
	(ai_kill enemy)
	(sleep 1)
	(object_destroy ex3)
	(sleep 100)
	(set in_war false)
	(vehicle_unload war "")
	(unit_set_enterable_by_player war 0)
	(sleep 100)
	
	(object_create yo1)
	(object_create yo2)
	
	(unit_set_enterable_by_player yo1 0)
	(unit_set_enterable_by_player yo2 0)
	
	(ai_place enemy/dr6)
	(ai_place enemy/dr7)
	(vehicle_load_magic yo1 "" (ai_actors enemy/dr6))
	(vehicle_load_magic yo2 "" (ai_actors enemy/dr7))
	(ai_command_list enemy/dr6 dr6)
	(ai_command_list enemy/dr7 dr7)
	
	(sound_looping_stop sound\music\on_a_pale_horse\on-a-pale-horse)
	(sound_looping_start "sound\music\earth city\earth-city" none 1)
	
	(game_save_totally_unsafe)
	(player_enable_input 1)
	
	(show_hud_help_text true)
	(hud_set_help_text obj3)
	(sleep 250)
	(show_hud_help_text false)
	
	(sleep_until (= (ai_living_count enemy)0))
	(game_save_totally_unsafe)
	
	(sleep 100)
	
	(wake call_to_sniper)
)

(script dormant call_to_run_1
	(player_enable_input 0)
	(unit_set_enterable_by_player war 1)
	
	(fade_out 0 0 0 50)
	(sleep 100)
	
	(object_destroy s_cad1)
	(object_destroy s_cad2)
	(object_create r_cad1)
	(object_create r_cad2)
	
	(object_teleport war tele1)
	
	(object_destroy sdoor1)
	(object_destroy sdoor2)
	(object_destroy sdoor3)
	(object_destroy sdoor4)
	
	(ai_place enemy/dr1)
	(ai_place enemy/dr2)
	(vehicle_load_magic r_cad1 "" (ai_actors enemy/dr1))
	(vehicle_load_magic r_cad2 "" (ai_actors enemy/dr2))
	
	(ai_erase friends)
	(ai_place friends/sq1)
	(vehicle_load_magic war "W-gunner" (players))
	(vehicle_load_magic war "" (ai_actors friends))
	(ai_allegiance player human)
	
	(sleep 50)
	(fade_in 0 0 0 50)
	(sleep 50)
	
	(ai_command_list enemy/dr1 dr1)
	(ai_command_list enemy/dr2 dr2)
	(ai_command_list friends f_dr1)
	
	(set in_war true)
	
	(game_speed 1.5)
	
	(sleep_until (or (volume_test_objects tri_dr1_0 (ai_actors enemy/dr1)) (volume_test_objects tri_dr2_0 (ai_actors enemy/dr2))) 1)
	
	(ai_allegiance_remove player human)
	(player_enable_input 1)
	
	(show_hud_help_text true)
	(hud_set_help_text obj3)
	
	(game_speed 0.8)
	(sleep_until (= (ai_living_count enemy)0))
	(game_speed 1)
	(show_hud_help_text false)
	
	(game_save_totally_unsafe)
	(sleep 100)
	
	(wake call_to_run_2)
)

(script startup start_trigger_driver_6
	(sleep_until (volume_test_objects tri_dr6 (ai_actors enemy/dr6)) 1)
	(vehicle_unload yo1 "")
)

(script startup start_trigger_driver_7
	(sleep_until (volume_test_objects tri_dr7 (ai_actors enemy/dr7)) 1)
	(vehicle_unload yo2 "")
)

(script startup start_check_escape_driver_1_2
	(sleep_until (or (volume_test_objects tri_dr1 (ai_actors enemy/dr1)) (volume_test_objects 
	tri_dr2 (ai_actors enemy/dr2))) 1)
	
	(game_speed 1)
	
	(show_hud_help_text true)
	(hud_set_help_text obj6)
	(sleep 100)
	
	(fade_out 0 0 0 50)
	(sleep 50)
	(game_revert)
)

(script startup start_check_escape_driver_3_4
	(sleep_until (or (volume_test_objects tri_dr1 (ai_actors enemy/dr3)) (volume_test_objects 
	tri_dr4 (ai_actors enemy/dr4))) 1)
	
	(game_speed 1)
	
	(show_hud_help_text true)
	(hud_set_help_text obj6)
	(sleep 100)
	
	(fade_out 0 0 0 50)
	(sleep 50)
	(game_revert)
)

(script startup start_check_escape_1
	(sleep_until (volume_test_objects tri_dr1_0 (ai_actors enemy/dr1)) 1)
	(activate_team_nav_point_object default player r_cad1 0)
)

(script startup start_check_escape_2
	(sleep_until (volume_test_objects tri_dr2_0 (ai_actors enemy/dr2)) 1)
	(activate_team_nav_point_object default player r_cad2 0)
)

(script startup start_check_escape_3
	(sleep_until (volume_test_objects tri_dr1_0 (ai_actors enemy/dr3)) 1)
	(activate_team_nav_point_object default player cad3 0)
)

(script startup start_check_escape_4
	(sleep_until (volume_test_objects tri_dr4_0 (ai_actors enemy/dr4)) 1)
	(activate_team_nav_point_object default player cad4 0)
)

(script startup start_trigger_1
	(sleep_until (volume_test_objects tri1 (players)) 1)
	(sound_looping_stop sound\music\covenant_dance\covenant_dance)
	(sound_looping_start sound\music\drumrun\drumrun none 1)
	
	(deactivate_team_nav_point_flag player point1)
	(device_set_position door 0)
	(device_operates_automatically_set door 0)
	(ai_follow_target_disable friends)
	(ai_teleport_to_starting_location friends)
	
	(show_hud_help_text true)
	(hud_set_help_text obj3)
	(sleep 250)
	(show_hud_help_text false)
)

(script startup action
	(sound_looping_start sound\music\covenant_dance\covenant_dance none 1)
	(ai_place friends/sq)
	
	(object_destroy cop1)
	(object_destroy cop2)
	(object_destroy ex3)
	(object_destroy r_cad1)
	(object_destroy r_cad2)
	(object_destroy cad3)
	(object_destroy cad4)
	(object_destroy yo1)
	(object_destroy yo2)
	
	(unit_set_enterable_by_player war 0)
	(unit_set_enterable_by_player cad5 0)
	
	(ai_follow_target_players friends)
	
	(ai_place enemy/a)
	(ai_place enemy/b)
	
	(device_operates_automatically_set door 0)
	(show_hud_help_text true)
	(hud_set_help_text obj3)
	(hud_set_objective_text obj3)
	(sleep 250)
	(vehicle_hover fal 1)
	(show_hud_help_text false)
	
	(sleep_until (= (ai_living_count enemy)0))
	(device_operates_automatically_set door 1)
	(activate_team_nav_point_flag default player point1 0)
	(ai_place enemy/c)
	(ai_place enemy/d)
	(game_save_totally_unsafe)
	
	(sleep_until (= (ai_living_count enemy)0))
	(device_operates_automatically_set door 1)
	(activate_team_nav_point_flag default player point2 0)
	
	(sleep_until (volume_test_objects tri2 (players))1)
	(sound_looping_stop sound\music\drumrun\drumrun)
	(sound_looping_start sound\music\on_a_pale_horse\on-a-pale-horse none 1)
	
	(deactivate_team_nav_point_flag player point2)
	(device_set_position door 0)
	(device_operates_automatically_set door 0)
	(game_save_totally_unsafe)
	
	(sleep 100)	
	(wake call_to_run_1)
)
