(script startup action
	(sound_looping_start sound\music\drumrun\drumrun none 1.00)
	(sleep_until (= (ai_living_count enemy) 0))
	(activate_team_nav_point_flag default player point 0.00)
	(game_save_totally_unsafe)
	(sleep_until (volume_test_objects tri (players)) 1)
	(map_name vcop1-p3)
)

(script startup hud
	(show_hud_help_text true)
	(hud_set_help_text obj3)
	(hud_set_objective_text obj3)
	(sleep 250)
	(show_hud_help_text false)
)