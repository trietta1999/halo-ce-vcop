(global boolean fal_ch false)
(global boolean tele_ch false)
(global boolean sh_boss_cnt false)
(global real cnt 0)
(global real cnt1 0)
(global real cnt2 0)
(global real cnt3 0)
(global real cnt4 0)
(global real cnt5 0)
(global real cnt6 0)
(global real cnt_s 0)
(global real cnt_avg 0)

(script startup action
	(object_destroy phan)
	(object_destroy boss)
	(object_destroy fal_s)
	(object_destroy war4)
	(object_destroy fl1)
	(object_destroy fl2)
	(object_destroy fl3)
	(object_destroy shot1)
	(object_destroy shot2)
	(object_destroy shot3)
	(object_destroy shot4)
	
	(object_destroy fr1)
	(object_destroy fr2)
	(object_destroy fr3)
	(object_destroy fr4)
	
	(ai_place friends)
	
	(unit_set_enterable_by_player fal 0)
	(ai_allegiance player human)
	
	(activate_team_nav_point_object default player cap 0)
	(sleep_until (volume_test_objects tri4 (players)) 1)
	(sound_looping_start levels\b30\music\b30_01 none 1)
	(deactivate_team_nav_point_object player cap)
	(game_save_totally_unsafe)
	
	(show_hud_help_text true)
	(hud_set_help_text obj15)
	(hud_set_objective_text obj15)
	(sleep 250)
	(show_hud_help_text false)
	
	(activate_team_nav_point_object default player fal 0)
	(unit_set_enterable_by_player fal 1)
	
	(sleep_until (vehicle_test_seat_list fal "w-driver" (players)) 1)
	(deactivate_team_nav_point_object player fal)
	(activate_team_nav_point_flag default player ship2 0)
	(set fal_ch true)
	
	(sleep_until (= tele_ch true) 1)
	
	(ai_erase friends)
	
	(object_destroy cap)
	(object_destroy gun_rack)
	
	(object_destroy shot)
	(object_destroy pis)
	
	(object_destroy war1)
	(object_destroy war2)
	(object_destroy war3)
	
	(object_create fal_s)
	(object_create war4)
	(object_create fl1)
	(object_create fl2)
	(object_create fl3)
	(object_create shot1)
	(object_create shot2)
	(object_create shot3)
	(object_create shot4)
	(object_create fr1)
	(object_create fr2)
	(object_create fr3)
	(object_create fr4)
	
	(ai_place enemy/sq1)
	(ai_place enemy/sq2)
	
	(deactivate_team_nav_point_flag player ship2)
	(activate_team_nav_point_flag default player ship1 0)
	
	(sleep_until (volume_test_objects tri5 (players)) 1)
	(player_enable_input 0)
	(sound_looping_stop levels\b30\music\b30_01)
	(sound_looping_start sound\music\covenant_dance\covenant_dance none 1)
	(set fal_ch false)
	(deactivate_team_nav_point_flag player ship1)
	(vehicle_unload fal "")
	(unit_set_enterable_by_player fal 0)
	(ai_allegiance_remove player human)
	
	(sleep 50)
	(volume_teleport_players_not_inside tri3 ship)
	(object_teleport fal ship_fal)
	
	(show_hud_help_text true)
	(hud_set_help_text obj3)
	(hud_set_objective_text obj3)
	(sleep 50)
	(player_enable_input 1)
	(sleep 200)
	(show_hud_help_text false)
	
	(game_save_totally_unsafe)
	
	(sleep_until (= (ai_living_count enemy)0))
	(sleep 100)
	(fade_out 0 0 0 100)
	(sleep 100)
	
	(player_enable_input 0)
	(vehicle_unload war4 "")
	(unit_set_enterable_by_player war4 0)
	
	(sound_looping_stop sound\music\covenant_dance\covenant_dance)
	(game_save_totally_unsafe)
	(object_create phan)
	(object_create boss)
	
	(camera_control 1)
	
	(camera_set cam1 50)
	(sleep 100)
	(sound_looping_start sound\music\rr2\rr2 none 1)
	(fade_in 0 0 0 100)
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
	(sleep 150)
	
	(camera_control 0)
	(player_enable_input 1)
	
	(object_destroy boss)
	(ai_place enemy/boss)
	(game_save_totally_unsafe)
	
	(show_hud_timer 1)
	(hud_set_timer_position 370 0 top_right)
	(set sh_boss_cnt true)
	
	(show_hud_help_text true)
	(hud_set_help_text obj5)
	(hud_set_objective_text obj5)
	
	(sleep_until (= (ai_living_count enemy) 0))
	(set sh_boss_cnt false)
	(show_hud_help_text false)
	(show_hud_timer 0)
	(game_save_totally_unsafe)
	(sleep 100)
	(fade_out 0 0 0 100)
	(sleep 150)
	(map_name c10)
)

(script continuous sh_boss_cnt0
	(if (= sh_boss_cnt true)
	(begin
		(set cnt1 (unit_get_shield (unit (list_get (ai_actors enemy) 0))))
		(set cnt2 (unit_get_shield (unit (list_get (ai_actors enemy) 1))))
		(set cnt3 (unit_get_shield (unit (list_get (ai_actors enemy) 2))))
		(set cnt4 (unit_get_shield (unit (list_get (ai_actors enemy) 3))))
		(set cnt5 (unit_get_shield (unit (list_get (ai_actors enemy) 4))))
		(set cnt6 (unit_get_shield (unit (list_get (ai_actors enemy) 5))))
		
		(if (<= cnt1 -1) (set cnt1 0))
		(if (<= cnt2 -1) (set cnt2 0))
		(if (<= cnt3 -1) (set cnt3 0))
		(if (<= cnt4 -1) (set cnt4 0))
		(if (<= cnt5 -1) (set cnt5 0))
		(if (<= cnt6 -1) (set cnt6 0))
		
		;(set cnt (ai_living_count enemy))
		(set cnt_s (* (+ cnt1 cnt2 cnt3 cnt4 cnt5 cnt6) 1000))
		(set cnt_avg (/ cnt_s 6))
		
		(cond
			((<= cnt_avg 0) (hud_set_timer_time 0 0))
			((and (> cnt_avg 0) (<= cnt_avg 50)) (hud_set_timer_time 0 31))
			((and (> cnt_avg 50) (<= cnt_avg 100)) (hud_set_timer_time 0 61))
			((and (> cnt_avg 100) (<= cnt_avg 150)) (hud_set_timer_time 0 91))
			((and (> cnt_avg 150) (<= cnt_avg 200)) (hud_set_timer_time 0 121))
			((and (> cnt_avg 200) (<= cnt_avg 250)) (hud_set_timer_time 0 151))
			((and (> cnt_avg 250) (<= cnt_avg 300)) (hud_set_timer_time 0 181))
			((and (> cnt_avg 300) (<= cnt_avg 350)) (hud_set_timer_time 0 211))
			((and (> cnt_avg 350) (<= cnt_avg 400)) (hud_set_timer_time 0 241))
			((and (> cnt_avg 400) (<= cnt_avg 450)) (hud_set_timer_time 0 271))
			((and (> cnt_avg 450) (<= cnt_avg 500)) (hud_set_timer_time 0 301))
			((and (> cnt_avg 500) (<= cnt_avg 550)) (hud_set_timer_time 0 331))
			((and (> cnt_avg 550) (<= cnt_avg 600)) (hud_set_timer_time 0 361))
			((and (> cnt_avg 600) (<= cnt_avg 650)) (hud_set_timer_time 0 391))
			((and (> cnt_avg 650) (<= cnt_avg 700)) (hud_set_timer_time 0 421))
			((and (> cnt_avg 700) (<= cnt_avg 750)) (hud_set_timer_time 0 451))
			((and (> cnt_avg 750) (<= cnt_avg 800)) (hud_set_timer_time 0 481))
			((and (> cnt_avg 800) (<= cnt_avg 850)) (hud_set_timer_time 0 511))
			((and (> cnt_avg 850) (<= cnt_avg 900)) (hud_set_timer_time 0 541))
			((and (> cnt_avg 900) (<= cnt_avg 950)) (hud_set_timer_time 0 571))
			((and (> cnt_avg 950) (<= cnt_avg 1000)) (hud_set_timer_time 0 601))
		)
	))
)

(script continuous tele
	(if (and (= (volume_test_objects tri3 (players)) 1) (= tele_ch false))
	(begin
		(object_teleport fal tele)
		(set tele_ch true)
		(sleep 50)
		(game_save_totally_unsafe)
	))
	(if (and (= (volume_test_objects tri3 (players)) 1) (= tele_ch true))
	(begin
		(cinematic_set_title warn)
		(fade_out 255 0 0 50)
		(sleep 150)
		(game_revert)
	))
)

(script continuous fal_driver
	(if (and (= (vehicle_test_seat_list fal "w-driver" (players)) 0) (= fal_ch true))
		(vehicle_load_magic fal "W-driver" (players))
	)
)

(script continuous tri_1_2_ch
	(if (or (= (volume_test_objects tri1 (players)) 1) (= (volume_test_objects tri2 (players)) 1))
	(begin
		(fade_out 255 0 0 50)
		(sleep 100)
		(game_revert)
	))
)