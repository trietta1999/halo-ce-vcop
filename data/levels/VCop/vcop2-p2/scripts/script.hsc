(global boolean is_on_seat false)
(global boolean is_falcon_driver false)
(global boolean is_in_trigger false)
(global effect effect_v "scenery\emitters\burning_flame\effects\burning")
(global boolean is_boss false)
(global real get_shield 0)
(global real get_shield1 0)

(script continuous run_boss
	(if (= is_boss true)
	(begin
		(set get_shield (unit_get_shield (unit (list_get (ai_actors enemy) 0))))
		(set get_shield1 (* get_shield 1000))
		(cond
			((<= get_shield1 0) (hud_set_timer_time 0 0))
			((and (> get_shield1 0) (<= get_shield1 50)) (hud_set_timer_time 0 31))
			((and (> get_shield1 50) (<= get_shield1 100)) (hud_set_timer_time 0 61))
			((and (> get_shield1 100) (<= get_shield1 150)) (hud_set_timer_time 0 91))
			((and (> get_shield1 150) (<= get_shield1 200)) (hud_set_timer_time 0 121))
			((and (> get_shield1 200) (<= get_shield1 250)) (hud_set_timer_time 0 151))
			((and (> get_shield1 250) (<= get_shield1 300)) (hud_set_timer_time 0 181))
			((and (> get_shield1 300) (<= get_shield1 350)) (hud_set_timer_time 0 211))
			((and (> get_shield1 350) (<= get_shield1 400)) (hud_set_timer_time 0 241))
			((and (> get_shield1 400) (<= get_shield1 450)) (hud_set_timer_time 0 271))
			((and (> get_shield1 450) (<= get_shield1 500)) (hud_set_timer_time 0 301))
			((and (> get_shield1 500) (<= get_shield1 550)) (hud_set_timer_time 0 331))
			((and (> get_shield1 550) (<= get_shield1 600)) (hud_set_timer_time 0 361))
			((and (> get_shield1 600) (<= get_shield1 650)) (hud_set_timer_time 0 391))
			((and (> get_shield1 650) (<= get_shield1 700)) (hud_set_timer_time 0 421))
			((and (> get_shield1 700) (<= get_shield1 750)) (hud_set_timer_time 0 451))
			((and (> get_shield1 750) (<= get_shield1 800)) (hud_set_timer_time 0 481))
			((and (> get_shield1 800) (<= get_shield1 850)) (hud_set_timer_time 0 511))
			((and (> get_shield1 850) (<= get_shield1 900)) (hud_set_timer_time 0 541))
			((and (> get_shield1 900) (<= get_shield1 950)) (hud_set_timer_time 0 571))
			((and (> get_shield1 950) (<= get_shield1 1000)) (hud_set_timer_time 0 601))
		)
	))
)

(script continuous run_test_seat
	(sleep_until (or (vehicle_test_seat_list gwar "W-driver" (players)) (vehicle_test_seat_list mwar "W-driver" (players)) (vehicle_test_seat_list sco "W-driver" (players))) 1)
	(set is_on_seat true)
)

(script continuous run_trigger_1
	(sleep_until (volume_test_objects tri1 (players)) 1)
	(if (= is_on_seat false) (game_revert))
	
)

(script startup start_check_falcon_ff1
	(sleep_until (= is_falcon_driver true))
	(sleep_until (= (ai_living_count enemy/fdr1) 0))
	(vehicle_hover ff1 0)
)

(script startup start_check_falcon_ff2
	(sleep_until (= is_falcon_driver true))
	(sleep_until (= (ai_living_count enemy/fdr2) 0))
	(vehicle_hover ff2 0)
)

(script startup start_check_falcon_ff3
	(sleep_until (= is_falcon_driver true))
	(sleep_until (= (ai_living_count enemy/fdr3) 0))
	(vehicle_hover ff3 0)
)

(script startup start_check_falcon_ff4
	(sleep_until (= is_falcon_driver true))
	(sleep_until (= (ai_living_count enemy/fdr4) 0))
	(vehicle_hover ff4 0)
)

(script startup start_check_falcon_ff5
	(sleep_until (= is_falcon_driver true))
	(sleep_until (= (ai_living_count enemy/fdr5) 0))
	(vehicle_hover ff5 0)
)

(script startup start_check_falcon_ff5
	(sleep_until (= is_falcon_driver true))
	(sleep_until (= (ai_living_count enemy/fdr6) 0))
	(vehicle_hover ff6 0)
)

(script dormant call_falcon_load
	(ai_place enemy/fdr4)
	(ai_place enemy/fdr5)
	(ai_place enemy/fdr6)
	
	(vehicle_load_magic ff4 "" (ai_actors enemy/fdr4))
	(vehicle_load_magic ff5 "" (ai_actors enemy/fdr5))
	(vehicle_load_magic ff6 "" (ai_actors enemy/fdr6))
)

(script continuous run_check_trigger_1_2
	(if (= is_in_trigger true)
		(if (and (= (volume_test_objects tri1 (players)) 0) (= (volume_test_objects tri2 (players)) 0))
		(begin
			(fade_out 255 0 0 50)
			(sleep 100)
			(game_revert)
		))
	)
)

(script dormant call_turret_1_load
	(ai_place enemy/tur1)
	(ai_place enemy/tur2)
	(ai_place enemy/tur3)
	(ai_place enemy/tur4)
	(ai_place enemy/tur5)
	
	(vehicle_load_magic tur1 "" (ai_actors enemy/tur1))
	(vehicle_load_magic tur2 "" (ai_actors enemy/tur2))
	(vehicle_load_magic tur3 "" (ai_actors enemy/tur3))
	(vehicle_load_magic tur4 "" (ai_actors enemy/tur4))
	(vehicle_load_magic tur5 "" (ai_actors enemy/tur5))
	
	(ai_command_list enemy/tur1 tur123)
	(ai_command_list enemy/tur2 tur123)
	(ai_command_list enemy/tur3 tur123)
	(ai_command_list enemy/tur4 tur45)
	(ai_command_list enemy/tur5 tur45)
)

(script dormant call_turret_2_load
	(ai_place enemy/tur6)
	(ai_place enemy/tur7)
	(ai_place enemy/tur8)
	(ai_place enemy/tur9)
	(ai_place enemy/tur10)
	
	(vehicle_load_magic tur6 "" (ai_actors enemy/tur6))
	(vehicle_load_magic tur7 "" (ai_actors enemy/tur7))
	(vehicle_load_magic tur8 "" (ai_actors enemy/tur8))
	(vehicle_load_magic tur9 "" (ai_actors enemy/tur9))
	(vehicle_load_magic tur10 "" (ai_actors enemy/tur10))
	
	(ai_command_list enemy/tur6 tur67)
	(ai_command_list enemy/tur7 tur67)
	
	(ai_command_list enemy/tur10 tur10_11_12)
)

(script dormant call_turret_3_load
	(ai_place enemy/tur11)
	(ai_place enemy/tur12)
	(ai_place enemy/tur13)
	(ai_place enemy/tur14)
	(ai_place enemy/tur15)
	
	(vehicle_load_magic tur11 "" (ai_actors enemy/tur11))
	(vehicle_load_magic tur12 "" (ai_actors enemy/tur12))
	(vehicle_load_magic tur13 "" (ai_actors enemy/tur13))
	(vehicle_load_magic tur14 "" (ai_actors enemy/tur14))
	(vehicle_load_magic tur15 "" (ai_actors enemy/tur15))
	
	(ai_command_list enemy/tur8 tur89_13_14_15)
	(ai_command_list enemy/tur9 tur89_13_14_15)
	(ai_command_list enemy/tur13 tur89_13_14_15)
	(ai_command_list enemy/tur14 tur89_13_14_15)
	(ai_command_list enemy/tur15 tur89_13_14_15)
	(ai_command_list enemy/tur11 tur10_11_12)
	(ai_command_list enemy/tur12 tur10_11_12)
)

(script dormant call_to_boss
	(ai_kill enemy)
	(ai_erase friends/sq3)
	(object_destroy obj_boss)
	(sound_looping_stop sound\halo2\music\peril\peril)
	(fade_out 0 0 0 50)
	(cinematic_start)
	(sleep 100)
	(sound_looping_start sound\halo2\music\inamberclad1\in_amber_clad none 1.00)
	(ai_place enemy/boss)
	(ai_command_list enemy look2)
	(camera_control 1)
	(player_enable_input 0)
	(volume_teleport_players_not_inside player tele)
	(camera_set cam1 10)
	(fade_in 0 0 0 50)
	(sleep 100)
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
	(sleep 200)
	(cinematic_stop)
	(camera_control 0)
	(player_enable_input 1)
	(ai_erase enemy/boss)
	(ai_place enemy/boss)
	(game_save_totally_unsafe)
	
	(show_hud_help_text true)
	(hud_set_help_text obj5)
	(hud_set_objective_text obj5)
	
	(show_hud_timer 1)
	(hud_set_timer_position 370 0 top_right)
	(set is_boss true)
	
	(sleep_until (= (ai_living_count enemy)0))
	(show_hud_help_text false)
	(set is_boss false)
	(show_hud_timer 0)
	(sleep 100)
	(fade_out 0 0 0 100)
	(game_save_totally_unsafe)
	(sleep 150)
	(map_name b40)
)

(script continuous run_trigger_8_9
	(sleep_until (or (volume_test_objects tri8 (players)) (volume_test_objects tri9 (players)) (volume_test_objects tri10 (players))) 1)
	(game_revert)
)

(script startup run_trigger_11
	(sleep_until (volume_test_objects tri8 (players)) 1)
	(game_save_totally_unsafe)
)

(script continuous run_weapon
	(object_create pis)
	(object_create shot)
)

(script startup action
	(effect_new_on_object_marker effect_v fal "driver")
	(unit_set_enterable_by_player fal 0)
	(ai_place friends/sq1)
	(ai_place enemy/sq2)
	(ai_place enemy/sq3)
	(ai_command_list enemy look1)
	
	(device_operates_automatically_set door1 0)
	(device_operates_automatically_set door2 0)
	(device_operates_automatically_set door3 0)
	(device_operates_automatically_set door4 0)
	(device_operates_automatically_set door5 0)
	
	(sleep_until (volume_test_objects tri1 (players)) 1)
	(set is_in_trigger true)
	(sound_looping_start sound\halo2\music\unyielding\unyielding none 1)
	(game_save_totally_unsafe)
		
	(object_create ff1)
	(object_create ff2)
	(object_create ff3)
	(object_create ff4)
	(object_create ff5)
	(object_create ff6)
	
	(vehicle_hover ff1 1)
	(vehicle_hover ff2 1)
	(vehicle_hover ff3 1)
	(vehicle_hover ff4 1)
	(vehicle_hover ff5 1)
	(vehicle_hover ff6 1)
	
	(unit_set_enterable_by_player ff1 0)
	(unit_set_enterable_by_player ff2 0)
	(unit_set_enterable_by_player ff3 0)
	(unit_set_enterable_by_player ff4 0)
	(unit_set_enterable_by_player ff5 0)
	(unit_set_enterable_by_player ff6 0)
	
	(unit_set_enterable_by_player vh1 0)
	(unit_set_enterable_by_player vh2 0)
	(unit_set_enterable_by_player vh3 0)
	(unit_set_enterable_by_player vh4 0)
	(unit_set_enterable_by_player vh5 0)
	(unit_set_enterable_by_player vh6 0)
	(unit_set_enterable_by_player vh7 0)
	(unit_set_enterable_by_player vh8 0)
	(unit_set_enterable_by_player vh9 0)
	(unit_set_enterable_by_player vh10 0)
	(unit_set_enterable_by_player vh11 0)
	
	(ai_place enemy/fdr1)
	(ai_place enemy/fdr2)
	(ai_place enemy/fdr3)
	
	(vehicle_load_magic ff1 "" (ai_actors enemy/fdr1))
	(vehicle_load_magic ff2 "" (ai_actors enemy/fdr2))
	(vehicle_load_magic ff3 "" (ai_actors enemy/fdr3))
	
	(wake call_falcon_load)
	
	(set is_falcon_driver true)
	
	(show_hud_help_text true)
	(hud_set_help_text obj3)
	(hud_set_objective_text obj3)
	(sleep 250)
	(show_hud_help_text false)
	
	(sleep_until (volume_test_objects tri2 (players)) 1)
	(sleep 50)
	(game_save_totally_unsafe)
	
	(sleep_until (volume_test_objects tri3 (players)) 1)
	(set is_in_trigger false)
	(game_save_totally_unsafe)
	
	(sleep_until (volume_test_objects tri4 (players)) 1)
	(ai_kill enemy)
	(activate_team_nav_point_object default player control 0)
	
	(sleep_until (= (device_get_position control) 1) 1)
	(deactivate_team_nav_point_object player control)
	(sound_impulse_start sound\sfx\impulse\panel\activate_panel none 1.00)
	(device_operates_automatically_set door1 1)
	(device_operates_automatically_set door2 1)
	(game_save_totally_unsafe)
	
	(wake call_turret_1_load)
	(wake call_turret_2_load)
	(wake call_turret_3_load)
	
	(sleep_until (= (device_get_position control2) 1) 1)
	(sound_impulse_start sound\sfx\impulse\panel\activate_panel none 1.00)
	(device_operates_automatically_set door3 1)
	(device_operates_automatically_set door4 1)
	(ai_place friends/sq2)
	(game_save_totally_unsafe)
	
	(sleep_until (volume_test_objects tri5 (players)) 1)
	(device_set_position door3 0)
	(device_set_position door4 0)
	(device_operates_automatically_set door3 0)
	(device_operates_automatically_set door4 0)
	
	(object_create door6)
	(object_create door7)
	(object_create door8)
	(object_create door9)
	
	(ai_kill enemy)
	(sound_looping_stop sound\halo2\music\unyielding\unyielding)
	(game_save_totally_unsafe)
	
	(sleep_until (= (device_get_position control3) 1) 1)
	(sound_impulse_start sound\sfx\impulse\panel\activate_panel none 1.00)
	(device_operates_automatically_set door5 1)
	(game_save_totally_unsafe)
	
	(sleep_until (volume_test_objects tri7 (players)) 1)
	(device_set_position door5 0)
	(device_operates_automatically_set door5 0)
	
	(sleep_until (volume_test_objects tri6 (players)) 1)
	(sound_looping_start sound\halo2\music\peril\peril none 1.00)
	(ai_place friends/sq3)
	(ai_place enemy/sq1)
	(ai_place enemy/sq4)
	(ai_place enemy/sq5)
	(game_save_totally_unsafe)
	
	(sleep_until (= (ai_living_count enemy)0))
	(sleep 100)
	(wake call_to_boss)
)