(script startup action
(object_destroy s1)
(object_destroy s2)
(device_operates_automatically_set door 0)
(player_enable_input 0)
(camera_control 1)
(cinematic_start)
(cinematic_set_title vcop)
(sound_looping_start levels\b30\music\b30_01 none 1)
(camera_set cam1 100)
(sleep 150)
(camera_set cam2 100)
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
(sleep 50)
(camera_set cam10 100)
(sleep 50)
(camera_set cam11 100)
(sleep 50)
(camera_set cam12 100)
(sleep 50)
(camera_set cam13 100)
(sleep 50)
(camera_set cam14 100)
(sleep 50)
(camera_set cam15 100)
(sleep 50)
(camera_set cam16 100)
(sleep 50)
(camera_set cam17 100)
(sleep 50)
(camera_set cam18 100)
(sleep 50)
(camera_set cam19 100)
(sleep 50)
(camera_set cam20 100)
(sleep 50)
(camera_set cam21 100)
(sleep 150)
(player_enable_input 1)
(camera_control 0)
(cinematic_stop)
(object_destroy player)
(volume_teleport_players_not_inside tele player)
(game_save)
(ai_place enemy/a)
(ai_place enemy/b)
(ai_place enemy/c)
(sleep_until (volume_test_objects tri1 (players))1)
(sound_looping_stop levels\b30\music\b30_01)
(sound_looping_start sound\music\drumrun\drumrun none 1)
(activate_team_nav_point_flag default player point 0)
(Sleep_until (= (ai_living_count enemy)0))
(object_create s1)
(object_create s2)
(game_save)
(sleep_until (volume_test_objects tri2 (players))1)
(volume_teleport_players_not_inside tele player2)
(deactivate_team_nav_point_flag player point)
(ai_place enemy/d)
(Sleep_until (= (ai_living_count enemy)0))
(activate_team_nav_point_flag default player player2 0)
(sleep_until (volume_test_objects tri3 (players))1)
(deactivate_team_nav_point_flag player player2)
(object_destroy s1)
(object_destroy s2)
(player_enable_input 0)
(camera_control 1)
(sound_looping_start levels\b30\music\b30_01 none 1)
(sound_looping_stop sound\music\drumrun\drumrun)
(camera_set cam22 100)
(sleep 50)
(camera_set cam23 100)
(sleep 50)
(camera_set cam24 100)
(sleep 50)
(camera_set cam25 100)
(sleep 50)
(camera_set cam26 100)
(sleep 50)
(camera_set cam27 100)
(sleep 50)
(camera_set cam28 100)
(sleep 50)
(camera_set cam29 100)
(sleep 50)
(camera_set cam30 100)
(sleep 150)
(camera_set cam31 0)
(volume_teleport_players_not_inside tele player)
(ai_place enemy/e)
(object_destroy boss)
(device_operates_automatically_set door 1)
(ai_command_list enemy/e run1)
(camera_set cam32 250)
(sleep 450)
(ai_command_list enemy/e run2)
(sleep 250)
(game_save)
(device_operates_automatically_set door 0)
(ai_erase enemy/e)
(player_enable_input 1)
(camera_control 0)
(volume_teleport_players_not_inside tele player2)
(ai_place enemy/f)
(Sleep_until (= (ai_living_count enemy)0))
(game_save)
(sleep 100)
(fade_out 0 0 0 50)
(sleep 100)
(map_name vcop3-p4)
)