(script startup action
(cinematic_start)
(cinematic_set_title vcop)
(fade_out 0 0 0 0)
(object_destroy falcon2)
(player_enable_input 0)
(ai_place drive/drive1)
(vehicle_load_magic falcon1 "driver" (ai_actors drive))
(vehicle_load_magic falcon1 "passenger" (players))
(camera_control 1)
(camera_set cam 0)
(sleep 300)
(fade_in 0 0 0 50)
(sleep 300)
(camera_control 0)
(sleep_until (= (game_time) 1700)1)
(fade_out 0 0 0 100)
(sleep 100)
(vehicle_unload falcon1 "passenger")
(sleep 100)
(volume_teleport_players_not_inside tele player)
(player_enable_input 1)
(object_create falcon2)
(object_destroy falcon1)
(ai_place drive/drive2)
(vehicle_load_magic falcon2 "driver" (ai_actors drive))
(sleep 100)
(cinematic_stop)
(fade_in 0 0 0 100)
(game_save)
(sleep_until (volume_test_objects tri (players))1)
(map_name vcop3-p2)
)