(script startup action
(fade_out 0 0 0 0)
(show_hud_help_text 1)
(object_destroy light1)
(object_destroy light2)
(object_destroy light3)
(object_destroy light4)
(object_destroy ex)
(object_destroy door_b)
(ai_place player/johnson)
(device_operates_automatically_set door1 0)
(device_operates_automatically_set door2 0)
(device_operates_automatically_set door3 0)
(device_operates_automatically_set door4 0)
(device_operates_automatically_set door5 0)
(device_operates_automatically_set door6 0)
(device_operates_automatically_set door7 0)
(device_operates_automatically_set door8 0)
(device_operates_automatically_set door9 0)
(device_operates_automatically_set door10 0)
(device_operates_automatically_set door11 0)
(device_operates_automatically_set doora 0)
(device_operates_automatically_set doorb 0)
(device_operates_automatically_set doorc 0)
(device_operates_automatically_set doord 0)
(player_enable_input 0)
(play_bink_movie halo2-m1-1.bik)
(sleep_until (player_action_test_jump) 1)
(fade_in 0 0 0 50)
(sleep 50)
(player_enable_input 1)
(game_save_totally_unsafe)
(sleep 200)
(ai_command_list player/johnson johnson1)
(sleep_until (volume_test_objects tri1 (players))1)
(ai_command_list player/johnson johnson2)
(sleep_until (volume_test_objects tri2 (players))1)
(deactivate_team_nav_point_object player (list_get (ai_actors player/johnson) 0))
(fade_out 0 0 0 50)
(player_enable_input 0)
(sleep 50)
(play_bink_movie halo2-m1-2.bik)
(sleep_until (player_action_test_jump) 1)
(ai_erase player/johnson)
(ai_place player/ll1)
(ai_place player/ll2)
(ai_place player/ll3)   
(ai_place player/ll4)
(ai_place player/ll5)
(ai_place player/ll6)
(ai_place player/ll7)
(ai_place player/ll8)
(ai_place player/ll9)
(ai_place player/ll10)
(ai_place player/marine)
(device_operates_automatically_set door1 1)
(device_operates_automatically_set door2 1)
(device_operates_automatically_set door3 1)
(device_operates_automatically_set door4 1)
(device_operates_automatically_set door5 1)
(device_operates_automatically_set door6 1)
(device_operates_automatically_set door7 1)
(device_operates_automatically_set door8 1)
(device_operates_automatically_set door9 1)
(device_operates_automatically_set door10 1)
(device_operates_automatically_set door11 1)
(vehicle_load_magic ll1 "" (ai_actors player/ll1))
(vehicle_load_magic ll2 "" (ai_actors player/ll2))
(vehicle_load_magic ll3 "" (ai_actors player/ll3))
(vehicle_load_magic ll4 "" (ai_actors player/ll4))
(vehicle_load_magic ll5 "" (ai_actors player/ll5))
(vehicle_load_magic ll6 "" (ai_actors player/ll6))
(vehicle_load_magic ll7 "" (ai_actors player/ll7))
(vehicle_load_magic ll8 "" (ai_actors player/ll8))
(vehicle_load_magic ll9 "" (ai_actors player/ll9))
(vehicle_load_magic ll10 "" (ai_actors player/ll10))
(fade_in 0 0 0 50)
(sleep 50)
(player_enable_input 1)
(game_save_totally_unsafe)
(object_destroy morgan)
(sleep_until (volume_test_objects tri3 (players))1)
(sleep 500)
(object_create light1)
(object_create light2)
(object_create light3)
(object_create light4)
(object_destroy light1a)
(object_destroy light2a)
(object_destroy light3a)
(object_destroy light4a)
(game_save_totally_unsafe)
(sleep 100)
(activate_team_nav_point_flag default player door8 0)
(sleep 100)
(object_create ex)
(object_create door_b)
(object_destroy door8)
(sleep 25)
(object_destroy ex)
(sleep 25)
(hud_set_objective_text obj1)
(show_hud_help_text 1)
(hud_set_help_text obj1)
(ai_place enemy/a)
(ai_place enemy/b)
(ai_place enemy/c)
(ai_place enemy/d)
(ai_place enemy/f)
(sound_looping_start sound\halo2\music\cairo-suite\cairo-suite none 1)
(deactivate_team_nav_point_flag player door8)
(sleep 250)
(show_hud_help_text 0)
(sleep_until (volume_test_objects tri4 (players))1)
(game_save_totally_unsafe)
(ai_kill enemy)
(sound_looping_start sound\halo2\music\impend\impend none 1)
(sound_looping_stop sound\halo2\music\cairo-suite\cairo-suite)
(ai_place enemy/e)
(device_operates_automatically_set doora 1)
(device_operates_automatically_set doorb 1)
(device_operates_automatically_set doorc 1)
(device_operates_automatically_set doord 1)
(Sleep_until (= (ai_living_count enemy)0))
(activate_team_nav_point_flag default player point 0)
(sleep_until (volume_test_objects tri5 (players))1)
(sound_looping_stop sound\halo2\music\impend\impend)
(hud_set_objective_text obj2)
(game_save_totally_unsafe)
(fade_out 0 0 0 100)
(sleep 100)
(player_enable_input 0)
(play_bink_movie halo2-m1-3.bik)
(sleep_until (player_action_test_jump) 1)
(game_save_totally_unsafe)
(sleep 100)
(game_won)
)

(script startup johnson
(sleep_until (volume_test_objects johnson (ai_actors player/johnson))1)
(device_operates_automatically_set door1 1)
(activate_team_nav_point_object default player (list_get (ai_actors player/johnson) 0) 0)
)

(script continuous reset
(player_action_test_reset)
)

(script continuous tele
(sleep_until (volume_test_objects tele1 (players))1)
(volume_teleport_players_not_inside tele2 te1)
(sleep_until (volume_test_objects tele2 (players))1)
(volume_teleport_players_not_inside tele1 te2)
)

(script startup tri6
(sleep_until (volume_test_objects tri6 (players))1)
(device_operates_automatically_set doora 0)
(device_operates_automatically_set doorb 0)
(device_operates_automatically_set doorc 0)
(device_operates_automatically_set doord 0)
)

(script continuous save1
(sleep_until (volume_test_objects t1 (players))1)
(game_save_totally_unsafe)
(sleep 1000)
)

(script continuous save2
(sleep_until (volume_test_objects t2 (players))1)
(game_save_totally_unsafe)
(sleep 1000)
)

(script continuous save3
(sleep_until (volume_test_objects t3 (players))1)
(game_save_totally_unsafe)
(sleep 1000)
)

(script continuous save4
(sleep_until (volume_test_objects t4 (players))1)
(game_save_totally_unsafe)
(sleep 1000)
)

(script continuous save5
(sleep_until (volume_test_objects t5 (players))1)
(game_save_totally_unsafe)
(sleep 1000)
)

(script continuous save6
(sleep_until (volume_test_objects t6 (players))1)
(game_save_totally_unsafe)
(sleep 1000)
)

(script continuous save7
(sleep_until (volume_test_objects t7 (players))1)
(game_save_totally_unsafe)
(sleep 1000)
)

(script continuous save8
(sleep_until (volume_test_objects t8 (players))1)
(game_save_totally_unsafe)
(sleep 1000)
)

(script continuous save9
(sleep_until (volume_test_objects t9 (players))1)
(game_save_totally_unsafe)
(sleep 1000)
)

(script continuous save10
(sleep_until (volume_test_objects t10 (players))1)
(game_save_totally_unsafe)
(sleep 1000)
)

(script continuous save11
(sleep_until (volume_test_objects t11 (players))1)
(game_save_totally_unsafe)
(sleep 1000)
)

(script continuous save12
(sleep_until (volume_test_objects t12 (players))1)
(game_save_totally_unsafe)
(sleep 1000)
)

(script continuous save13
(sleep_until (volume_test_objects t13 (players))1)
(game_save_totally_unsafe)
(sleep 1000)
)

(script continuous save14
(sleep_until (volume_test_objects t14 (players))1)
(game_save_totally_unsafe)
(sleep 1000)
)

(script continuous save15
(sleep_until (volume_test_objects t15 (players))1)
(game_save_totally_unsafe)
(sleep 1000)
)

(script continuous save16
(sleep_until (volume_test_objects t16 (players))1)
(game_save_totally_unsafe)
(sleep 1000)
)

(script continuous save17
(sleep_until (volume_test_objects t17 (players))1)
(game_save_totally_unsafe)
(sleep 1000)
)

(script continuous save18
(sleep_until (volume_test_objects t18 (players))1)
(game_save_totally_unsafe)
(sleep 1000)
)

(script continuous save19
(sleep_until (volume_test_objects t19 (players))1)
(game_save_totally_unsafe)
(sleep 1000)
)

(script continuous save20
(sleep_until (volume_test_objects t20 (players))1)
(game_save_totally_unsafe)
(sleep 1000)
)

(script continuous save21
(sleep_until (volume_test_objects t21 (players))1)
(game_save_totally_unsafe)
(sleep 1000)
)

(script continuous save22
(sleep_until (volume_test_objects t22 (players))1)
(game_save_totally_unsafe)
(sleep 1000)
)