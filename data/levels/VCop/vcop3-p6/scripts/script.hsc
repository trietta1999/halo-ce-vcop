(script startup action
(sound_looping_start sound\music\drumrun\drumrun none 1)
(activate_team_nav_point_flag default player point 0)
(sleep_until (volume_test_objects tri (players))1)
(map_name vcop3-p7)
)