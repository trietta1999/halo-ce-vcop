(script startup action
(device_operates_automatically_set door 0)
(ai_place enemy/a)
(sound_looping_start sound\music\perilious_journey\perilious_journey  none 1)
(Sleep_until (= (ai_living_count enemy)0))
(device_operates_automatically_set door 1)
(activate_team_nav_point_flag default player point1 0)
(sleep_until (volume_test_objects tri1 (players))1)
(sound_looping_start sound\music\tlos\epic_black_powers none 1)
(sound_looping_stop sound\music\perilious_journey\perilious_journey)
(deactivate_team_nav_point_flag player point1)
(activate_team_nav_point_flag default player point2 0)
(game_save)
(sleep_until (volume_test_objects tri2 (players))1)
(deactivate_team_nav_point_flag player point2)
(camera_control 1)
(player_enable_input 0)
(camera_set cam1 100)
(sleep 150)
(camera_set cam2 100)
(sleep 50)
(camera_set cam3 100)
(sleep 50)
(camera_set cam4 100)
(sleep 150)
(camera_set cam5 100)
(sleep 50)
(camera_set cam6 100)
(sleep 50)
(camera_set cam7 100)
(sleep 150)
(game_save)
(camera_control 0)
(player_enable_input 1)
(vehicle_unload cad driver)
(object_destroy boss1)
(object_destroy boss2)
(ai_place enemy/boss1)
(ai_place enemy/boss2)
(vehicle_load_magic s1 "" (ai_actors enemy/boss1))
(vehicle_load_magic s2 "" (ai_actors enemy/boss2))
(Sleep_until (= (ai_living_count enemy)0))
(sleep 100)
(fade_out 0 0 0 100)
(game_save)
(sleep 150)
(map_name vcop2-p10)
)

(script continuous weapon
(object_create shot)
)