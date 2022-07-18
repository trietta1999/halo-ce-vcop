(script startup action
(sound_looping_start sound\music\drumrun\drumrun none 1)
(activate_team_nav_point_flag default player point 0)
(Sleep_until (= (ai_living_count enemy)0))
(game_save)
(sleep_until (volume_test_objects tri (players))1)
(map_name vcop2-p9)
)