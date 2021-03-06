(script startup action
(object_destroy mpw)
(object_destroy rw)
(object_destroy pelican)
(object_destroy crate3)
(object_destroy crate4)
(object_destroy pe1)
(object_destroy pe2)
(player_enable_input 0)
(show_hud_help_text 1)
(camera_control 1)
(camera_set cam 0)
(hud_set_help_text obj5)
(sleep_until (or (= (player_action_test_action) 1) (= (player_action_test_zoom) 1))1)
(if (= (player_action_test_action) 1)
(begin
(show_hud_help_text 0)
(play_bink_movie halo2-m2.bik)
(fade_out 0 0 0 0)
(sleep_until (player_action_test_jump) 1)
(camera_control 0)
(ai_place player/a)
(ai_place player/johnson)
(fade_in 0 0 0 500)
(sleep 550)
(ai_place enemy)
(vehicle_load_magic p1 "" (ai_actors enemy/p1))
(vehicle_load_magic p2 "" (ai_actors enemy/p2))
(vehicle_load_magic p3 "" (ai_actors enemy/p3))
(ai_follow_target_players player/a)
(ai_follow_target_players player/f)
(ai_follow_target_players player/c)
(player_enable_input 1)
(show_hud_help_text 1)
(hud_set_help_text obj1)
(hud_set_objective_text obj1)
(game_save_totally_unsafe)
(sleep 250)
(show_hud_help_text 0)
(sleep_until (volume_test_objects tri1 (players)) 1)
(sleep_until (volume_test_objects tri2 (players)) 1)
(game_save_totally_unsafe)
(sleep 250)
(activate_team_nav_point_flag default player point 0)
(sleep_until (volume_test_objects tri5 (players)) 1)
(deactivate_team_nav_point_flag player point)
(sound_looping_stop sound\halo2\music\mombasa-suite\mombasa-suite)
(ai_kill enemy)
(show_hud_help_text 1)
(hud_set_help_text obj3)
(hud_set_objective_text obj3)
(game_save_totally_unsafe)
(unit_set_enterable_by_player pelican 0)
(object_create pelican)
(object_teleport pelican 1)
(sleep 60)
(object_teleport pelican 2)
(sleep 60)
(object_teleport pelican 3)
(sleep 60)
(object_teleport pelican 4)
(sleep 60)
(object_teleport pelican 5)
(sleep 60)
(object_teleport pelican 6)
(sleep 60)
(object_teleport pelican 7)
(sleep 60)
(object_teleport pelican 8)
(sleep 60)
(object_teleport pelican 9)
(sleep 60)
(object_teleport pelican 10)
(sleep_until (volume_test_objects tri6 pelican) 1)
(object_create pe1)
(object_create pe2)
(unit_enter_vehicle pe1 pelican w-driver)
(unit_enter_vehicle pe2 pelican w2-driver)
(fade_out 0 0 0 50)
(sleep 50)
(ai_erase player)
(ai_place player/a)
(ai_place player/c)
(ai_place player/f)
(ai_place player/johnson2)
(ai_follow_target_disable player)
(ai_disregard (players) 1)
(fade_in 0 0 0 50)
(sleep 250)
(ai_command_list player/johnson2 johnson)
(sleep_until (volume_test_objects tri7 (ai_actors player/johnson2)) 1)
(sleep 250)
(vehicle_load_magic pelican p-riderLF (ai_actors player/johnson2))
(sleep 250)
(object_teleport pelican 11)
(sleep 30)
(object_teleport pelican 10)
(object_destroy pe1)
(object_destroy pe2)
(sleep 30)
(object_teleport pelican 9)
(sleep 30)
(object_teleport pelican 8)
(sleep 30)
(object_teleport pelican 7)
(sleep 30)
(object_teleport pelican 6)
(sleep 30)
(object_teleport pelican 5)
(sleep 30)
(object_teleport pelican 4)
(sleep 30)
(object_teleport pelican 3)
(sleep 30)
(object_teleport pelican 2)
(sleep 30)
(object_teleport pelican 1)
(sleep 30)
(object_teleport pelican 0)
(object_destroy pelican)
(object_destroy crate1)
(object_destroy crate1)
(object_create crate3)
(object_create crate4)
(game_save_totally_unsafe)
(hud_set_help_text obj2)
(hud_set_objective_text obj2)
(unit_set_enterable_by_player g1 false)
(unit_set_enterable_by_player g2 false)
(unit_set_enterable_by_player g3 false)
(unit_set_enterable_by_player g4 false)
(unit_set_enterable_by_player g5 false)
(vehicle_unload g1 "")
(vehicle_unload g2 "")
(vehicle_unload g3 "")
(vehicle_unload g4 "")
(vehicle_unload g5 "")
(unit_set_enterable_by_player d1 false)
(unit_set_enterable_by_player d2 false)
(unit_set_enterable_by_player d3 false)
(unit_set_enterable_by_player d4 false)
(unit_set_enterable_by_player d5 false)
(unit_set_enterable_by_player d6 false)
(unit_set_enterable_by_player d7 false)
(unit_set_enterable_by_player d8 false)
(unit_set_enterable_by_player d9 false)
(unit_set_enterable_by_player d10 false)
(unit_set_enterable_by_player d11 false)
(unit_set_enterable_by_player d12 false)
(unit_set_enterable_by_player d13 false)
(unit_set_enterable_by_player d14 false)
(unit_set_enterable_by_player d15 false)
(unit_set_enterable_by_player d16 false)
(unit_set_enterable_by_player d17 false)
(unit_set_enterable_by_player d18 false)
(unit_set_enterable_by_player d19 false)
(unit_set_enterable_by_player d20 false)
(unit_set_enterable_by_player d21 false)
(unit_set_enterable_by_player d22 false)
(unit_set_enterable_by_player d23 false)
(unit_set_enterable_by_player d24 false)
(unit_set_enterable_by_player d25 false)
(unit_set_enterable_by_player d26 false)
(unit_set_enterable_by_player d27 false)
(unit_set_enterable_by_player d28 false)
(unit_set_enterable_by_player d29 false)
(unit_set_enterable_by_player d30 false)
(unit_set_enterable_by_player d31 false)
(unit_set_enterable_by_player d32 false)
(unit_set_enterable_by_player d33 false)
(unit_set_enterable_by_player d34 false)
(unit_set_enterable_by_player d35 false)
(unit_set_enterable_by_player d36 false)
(unit_set_enterable_by_player d37 false)
(unit_set_enterable_by_player d38 false)
(unit_set_enterable_by_player d39 false)
(unit_set_enterable_by_player d40 false)
(unit_set_enterable_by_player d41 false)
(unit_set_enterable_by_player d42 false)
(sleep 250)
(show_hud_help_text 0)
(game_save_totally_unsafe)
(sleep_until (volume_test_objects tri8 (players)) 1)
(ai_disregard (players) 0)
(object_create mpw)
(object_create rw)
(ai_place player/way1)
(ai_place player/way2)
(ai_place player/way3)
(vehicle_load_magic rw "" (ai_actors player/way1))
(vehicle_load_magic mpw w-passenger (ai_actors player/way2))
(vehicle_load_magic mpw w-gunner (ai_actors player/way3))
(game_save_totally_unsafe)
(sleep_until (volume_test_objects tri10 (players)) 1)
(sleep_until (player_action_test_action) 1)
(sound_looping_start sound\halo2\music\mombasa-suite\mombasa-suite none 1)
(vehicle_load_magic mpw "" (players))
(ai_command_list player/way1 rw)
(game_save_totally_unsafe)
(show_hud_help_text 1)
(hud_set_help_text obj4)
(hud_set_objective_text obj4)
(ai_magically_see_encounter dr player)
(ai_magically_see_players dr)
(sleep 250)
(show_hud_help_text 0)
(sleep_until (volume_test_objects tri9 (players)) 1)
(fade_out 0 0 0 100)
(game_save_totally_unsafe)
(sleep 200)
(map_name a30-2)
))
(if (= (player_action_test_zoom) 1) (map_name a30-2))
)

(script startup load1
(sleep_until (volume_test_objects tri10 (players)) 1)
(sleep_until (player_action_test_action) 1)
(ai_place dr)
(vehicle_load_magic d4 "" (ai_actors dr/g4))
(vehicle_load_magic d5 "" (ai_actors dr/5))
(vehicle_load_magic d6 "" (ai_actors dr/6))
(vehicle_load_magic d7 "" (ai_actors dr/7))
(vehicle_load_magic d8 "" (ai_actors dr/8))
(vehicle_load_magic d10 "" (ai_actors dr/10))
(vehicle_load_magic d11 "" (ai_actors dr/11))
(vehicle_load_magic d19 "" (ai_actors dr/19))
(vehicle_load_magic d20 "" (ai_actors dr/20))
(vehicle_load_magic d21 "" (ai_actors dr/21))
(vehicle_load_magic d22 "" (ai_actors dr/22))
(vehicle_load_magic d23 "" (ai_actors dr/23))
(vehicle_load_magic d24 "" (ai_actors dr/24))
(vehicle_load_magic d30 "" (ai_actors dr/30))
(vehicle_load_magic d31 "" (ai_actors dr/31))
(vehicle_load_magic d32 "" (ai_actors dr/32))
)

(script startup load2
(sleep_until (volume_test_objects tri10 (players)) 1)
(sleep_until (player_action_test_action) 1)
(sleep 50)
(vehicle_load_magic d9 "" (ai_actors dr/c9))
(vehicle_load_magic d12 "" (ai_actors dr/12))
(vehicle_load_magic d13 "" (ai_actors dr/13))
(vehicle_load_magic d25 "" (ai_actors dr/25))
(vehicle_load_magic d26 "" (ai_actors dr/26))
(vehicle_load_magic d27 "" (ai_actors dr/27))
(vehicle_load_magic d28 "" (ai_actors dr/28))
(vehicle_load_magic d29 "" (ai_actors dr/29))
(vehicle_load_magic d33 "" (ai_actors dr/33))
)

(script startup load3
(sleep_until (volume_test_objects tri10 (players)) 1)
(sleep_until (player_action_test_action) 1)
(sleep 50)
(vehicle_load_magic d1 "" (ai_actors dr/t1))
(vehicle_load_magic d2 "" (ai_actors dr/2))
(vehicle_load_magic d3 "" (ai_actors dr/3))
(vehicle_load_magic d14 "" (ai_actors dr/14))
(vehicle_load_magic d15 "" (ai_actors dr/15))
(vehicle_load_magic d16 "" (ai_actors dr/16))
(vehicle_load_magic d17 "" (ai_actors dr/17))
(vehicle_load_magic d18 "" (ai_actors dr/18))
(vehicle_load_magic d34 "" (ai_actors dr/34))
(vehicle_load_magic d35 "" (ai_actors dr/35))
(vehicle_load_magic d36 "" (ai_actors dr/36))
(vehicle_load_magic d37 "" (ai_actors dr/37))
(vehicle_load_magic d38 "" (ai_actors dr/38))
(vehicle_load_magic d39 "" (ai_actors dr/39))
(vehicle_load_magic d40 "" (ai_actors dr/40))
(vehicle_load_magic d41 "" (ai_actors dr/41))
(vehicle_load_magic d42 "" (ai_actors dr/42))
)

(script continuous save
(sleep_until (player_action_test_action) 1)
(sleep 200)
(game_save_totally_unsafe)
)

(script continuous reset
(player_action_test_reset)
)

(script startup music
(sleep_until (or (= (volume_test_object tri3 (list_get (players) 0)) 1) (= (volume_test_object tri4 (list_get (players) 0))1))1)
(if (= (volume_test_objects tri3 (list_get (players) 0)) 1)
(sound_looping_start sound\halo2\music\mombasa-suite\mombasa-suite none 1))
(if (= (volume_test_objects tri4 (list_get (players) 0)) 1)
(sound_looping_start sound\halo2\music\mombasa-suite\mombasa-suite none 1))
)

(script continuous save1
(sleep_until (volume_test_objects t1 (players)) 1)
(game_save_totally_unsafe)
(sleep 1000)
)

(script continuous save2
(sleep_until (volume_test_objects t2 (players)) 1)
(game_save_totally_unsafe)
(sleep 1000)
)

(script continuous save3
(sleep_until (volume_test_objects t3 (players)) 1)
(game_save_totally_unsafe)
(sleep 1000)
)

(script continuous save4
(sleep_until (volume_test_objects t4 (players)) 1)
(game_save_totally_unsafe)
(sleep 1000)
)

(script continuous save5
(sleep_until (volume_test_objects t5 (players)) 1)
(game_save_totally_unsafe)
(sleep 1000)
)

(script continuous save6
(sleep_until (volume_test_objects t6 (players)) 1)
(game_save_totally_unsafe)
(sleep 1000)
)

(script continuous save7
(sleep_until (volume_test_objects t7 (players)) 1)
(game_save_totally_unsafe)
(sleep 1000)
)

(script continuous save8
(sleep_until (volume_test_objects t8 (players)) 1)
(game_save_totally_unsafe)
(sleep 1000)
)

(script continuous save9
(sleep_until (volume_test_objects t9 (players)) 1)
(game_save_totally_unsafe)
(sleep 1000)
)

(script continuous save10
(sleep_until (volume_test_objects tri1 (players)) 1)
(game_save_totally_unsafe)
(sleep 1000)
)

(script continuous save11
(sleep_until (volume_test_objects tri2 (players)) 1)
(game_save_totally_unsafe)
(sleep 1000)
)