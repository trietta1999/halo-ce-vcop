(script startup action
(object_destroy a)
(sleep_until (volume_test_objects tri1 (players))1)
(sound_impulse_start sound\music\cstrng\cstrng1 none 10)
(object_create a)
)
