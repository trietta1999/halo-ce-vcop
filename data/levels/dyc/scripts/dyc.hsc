(script continuous light
(if (and (player_action_test_action) (volume_test_objects light (players)))
  (begin
    (object_create l1)
    (object_create l2)
  )
  (begin
    (object_destroy l1)
    (object_destroy l2)
  )
)
)

(script continuous reset
(player_action_test_reset)
;(object_destroy l1)
;(object_destroy l2)
)