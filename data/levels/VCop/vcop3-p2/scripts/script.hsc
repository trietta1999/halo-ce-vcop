(script startup action
(object_destroy boss1)
(object_destroy ex1)
(object_destroy boss3)
(object_destroy boss2)
(object_destroy ex2)
(object_destroy ex3)
(device_operates_automatically_set door1 0)
(device_operates_automatically_set door2 0)
(device_operates_automatically_set door3 0)
(device_operates_automatically_set door4 0)
(device_operates_automatically_set door5 0)
(device_operates_automatically_set door6 0)
(device_operates_automatically_set door7 0)
(device_operates_automatically_set door8 0)
(sound_looping_start sound\music\drumrun\drumrun none 1)
(ai_place enemy/a)
(Sleep_until (= (ai_living_count enemy)0))
(device_operates_automatically_set door1 1)
(device_operates_automatically_set door2 1)
(device_operates_automatically_set door3 1)
(device_operates_automatically_set door4 1)
(game_save)
(ai_place enemy/c)
(activate_team_nav_point_flag default player point1 0)
(Sleep_until (= (ai_living_count enemy)0))
(activate_team_nav_point_flag default player point2 0)
(deactivate_team_nav_point_flag player point1)
(game_save)
(sleep_until (volume_test_objects tri1 (players))1)
(deactivate_team_nav_point_flag player point2)
(camera_control 1)
(player_enable_input 0)
(camera_set cam1 100)
(sleep 100)
(object_create boss1)
(object_create ex1)
(sleep 50)
(object_destroy ex1)
(sleep 50)
(camera_set cam2 100)
(sleep 150)
(camera_control 0)
(player_enable_input 1)
(ai_place enemy/boss1)
(object_destroy boss1)
(game_save)
(Sleep_until (= (ai_living_count enemy)0))
(game_save)
(ai_place enemy/c)
(device_operates_automatically_set door5 1)
(Sleep_until (= (ai_living_count enemy)0))
(activate_team_nav_point_flag default player point3 0)
(object_create boss2)
(game_save)
(sleep_until (volume_test_objects tri2 (players))1)
(deactivate_team_nav_point_flag player point3)
(camera_control 1)
(player_enable_input 0)
(camera_set cam3 100)
(sleep 50)
(camera_set cam4 100)
(sleep 50)
(camera_set cam5 100)
(sleep 150)
(object_create ex2)
(sleep 50)
(object_destroy ex2)
(object_destroy boss2)
(sleep 50)
(camera_set cam6 100)
(sleep 50)
(camera_set cam7 100)
(sleep 100)
(object_create ex3)
(object_create boss3)
(sleep 50)
(object_destroy ex3)
(sleep 50)
(camera_set cam8 100)
(sleep 150)
(camera_control 0)
(player_enable_input 1)
(ai_place enemy/boss2)
(object_destroy boss3)
(game_save)
(Sleep_until (= (ai_living_count enemy)0))
(sleep 100)
(fade_out 0 0 0 100)
(sleep 150)
(map_name c40)
)

(script continuous weapons
(object_create shot)
(object_create rifle)
(object_create shot1)
(object_create rifle1)
)