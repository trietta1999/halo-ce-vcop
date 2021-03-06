(script startup action
(object_destroy sdoor)
(device_operates_automatically_set door1 0)
(device_operates_automatically_set door2 0)
(sound_looping_start sound\music\on_a_pale_horse\on-a-pale-horse none 1)
(object_destroy tele)
(object_destroy boss1)
(object_destroy boss2)
(object_destroy y1)
(object_destroy y2)
(object_destroy y3)
(object_destroy y4)
(sleep_until (volume_test_objects tri1 (players))1)
(game_save)
(player_enable_input 0)
(camera_control 1)
(camera_set cam1 100)
(sleep 100)
(camera_set cam2 100)
(sleep 50)
(camera_set cam4 100)
(sleep 100)
(object_create tele)
(object_create boss1)
(sleep 50)
(object_destroy tele)
(sleep 50)
(camera_set cam5 100)
(sleep 150)
(player_enable_input 1)
(camera_control 0)
(game_save)
(object_destroy boss1)
(ai_place enemy/boss1)
(Sleep_until (= (ai_living_count enemy)0))
(game_save)
(ai_place enemy/drive1)
(ai_place enemy/drive2)
(object_create y1)
(object_create y2)
(vehicle_load_magic y1 "" (ai_actors enemy/drive1))
(vehicle_load_magic y2 "" (ai_actors enemy/drive2))
(Sleep_until (= (ai_living_count enemy)0))
(game_save)
(object_create y3)
(ai_place enemy/drive3)
(vehicle_load_magic y3 "" (ai_actors enemy/drive3))
(activate_team_nav_point_object default player y3 0)
(Sleep_until (= (ai_living_count enemy)0))
(game_speed 1)
(device_operates_automatically_set door1 1)
(activate_team_nav_point_flag default player point1 0)
(ai_place enemy/a)
(game_save)
(Sleep_until (= (ai_living_count enemy)0))
(device_operates_automatically_set door2 1)
(object_destroy gara1)
(deactivate_team_nav_point_flag player point1)
(activate_team_nav_point_flag default player point2 0)
(object_create y4)
(ai_place enemy/b)
(game_save)
(Sleep_until (= (ai_living_count enemy)0))
(deactivate_team_nav_point_flag player point2)
(object_create boss2)
(player_enable_input 0)
(camera_control 1)
(camera_set cam6 100)
(sleep 150)
(player_enable_input 1)
(camera_control 0)
(object_destroy boss2)
(ai_place enemy/boss2)
(object_create sdoor)
(Sleep_until (= (ai_living_count enemy)0))
(sleep 100)
(fade_out 0 0 0 100)
(game_save)
(sleep 150)
(map_name d20)
)

(script continuous weapons
(object_create shot)
(object_create pis)
)

(script startup drive3
(sleep_until (volume_test_objects tri2 (ai_actors enemy/drive3))1)
(fade_out 0 0 0 50)
(fade_in 0 0 0 50)
(game_speed 0.2)
)

(script startup fail
(sleep_until (volume_test_objects tri1 (ai_actors enemy/drive3))1)
(game_speed 1)
(fade_out 0 0 0 100)
(sleep 150)
(game_revert)
)