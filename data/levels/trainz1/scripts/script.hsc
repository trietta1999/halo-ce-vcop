(global bool dir false)
(global short number 0)
(global short tmp 0)
(global short number_death 0)
(global short tobinary 0)
(global short recoveredbinary 0)
(global short binaryremain 0)
(global bool one false)
(global bool two false)
(global bool four false)
(global bool eight false)
(global bool sixteen false)
(global bool thirtytwo false)
(global bool sixtyfour false)
(global bool onetwentyeight false)
(global bool twofiftysix false)
(global bool fivetwelve false)
(global bool tentwentyfour false)
(global bool twentyfourtyeight false)
(global bool fourninetysix false)
(global bool eightoneninetytwo false)
(global bool sixteenthreeeightyfour false)
(global bool justjoined true)
(global bool resyncnow false)
(global short listcount 0)
(global bool host false)
(global short dirmomentago 3)
(global short powmomentago 3)
(global bool change false)

(script continuous void binarycalc
	(sleep_until (< (unit_get_health update) 1.00) 1)
	(set tobinary (* (device_get_position train) 32767.00))
	(set binaryremain tobinary)
	(if (>= binaryremain 16384)
	(begin
		(set sixteenthreeeightyfour true)
		(set binaryremain (- binaryremain 16384.00))
	)
		(set sixteenthreeeightyfour false)
	)
	(if (>= binaryremain 8192)
	(begin
		(set eightoneninetytwo true)
		(set binaryremain (- binaryremain 8192.00))
	)
		(set eightoneninetytwo false)
	)
	(if
	(>= binaryremain 4096)
	(begin
	(set fourninetysix true)
	(set binaryremain
	(- binaryremain 4096.00)))
	(set fourninetysix false))
	(if
	(>= binaryremain 2048)
	(begin
	(set twentyfourtyeight true)
	(set binaryremain
	(- binaryremain 2048.00)))
	(set twentyfourtyeight false))
	(if
	(>= binaryremain 1024)
	(begin
	(set tentwentyfour true)
	(set binaryremain
	(- binaryremain 1024.00)))
	(set tentwentyfour false))
	(if
	(>= binaryremain 512)
	(begin
	(set fivetwelve true)
	(set binaryremain
	(- binaryremain 512.00)))
	(set fivetwelve false))
	(if
	(>= binaryremain 256)
	(begin
	(set twofiftysix true)
	(set binaryremain
	(- binaryremain 256.00)))
	(set twofiftysix false))
	(if
	(>= binaryremain 128)
	(begin
	(set onetwentyeight true)
	(set binaryremain
	(- binaryremain 128.00)))
	(set onetwentyeight false))
	(if
	(>= binaryremain 64)
	(begin
	(set sixtyfour true)
	(set binaryremain
	(- binaryremain 64.00)))
	(set sixtyfour false))
	(if
	(>= binaryremain 32)
	(begin
	(set thirtytwo true)
	(set binaryremain
	(- binaryremain 32.00)))
	(set thirtytwo false))
	(if
	(>= binaryremain 16)
	(begin
	(set sixteen true)
	(set binaryremain
	(- binaryremain 16.00)))
	(set sixteen false))
	(if
	(>= binaryremain 8)
	(begin
	(set eight true)
	(set binaryremain
	(- binaryremain 8.00)))
	(set eight false))
	(if
	(>= binaryremain 4)
	(begin
	(set four true)
	(set binaryremain
	(- binaryremain 4.00)))
	(set four false))
	(if
	(>= binaryremain 2)
	(begin
	(set two true)
	(set binaryremain
	(- binaryremain 2.00)))
	(set two false))
	(if
	(>= binaryremain 1)
	(begin
	(set one true)
	(set binaryremain
	(- binaryremain 1.00)))
	(set one false))
	(if
	(= sixteenthreeeightyfour true)
	(object_teleport 16384crush 16384flag)
	(begin
	(object_teleport 16384crush nullflag)
	(object_create_anew 16384ped)))
	(if
	(= eightoneninetytwo true)
	(object_teleport 8192crush 8192flag)
	(begin
	(object_teleport 8192crush nullflag)
	(object_create_anew 8192ped)))
	(if
	(= fourninetysix true)
	(object_teleport 4096crush 4096flag)
	(begin
	(object_teleport 4096crush nullflag)
	(object_create_anew 4096ped)))
	(if
	(= twentyfourtyeight true)
	(object_teleport 2048crush 2048flag)
	(begin
	(object_teleport 2048crush nullflag)
	(object_create_anew 2048ped)))
	(if
	(= tentwentyfour true)
	(object_teleport 1024crush 1024flag)
	(begin
	(object_teleport 1024crush nullflag)
	(object_create_anew 1024ped)))
	(if
	(= fivetwelve true)
	(object_teleport 512crush 512flag)
	(begin
	(object_teleport 512crush nullflag)
	(object_create_anew 512ped)))
	(if
	(= twofiftysix true)
	(object_teleport 256crush 256flag)
	(begin
	(object_teleport 256crush nullflag)
	(object_create_anew 256ped)))
	(if
	(= onetwentyeight true)
	(object_teleport 128crush 128flag)
	(begin
	(object_teleport 128crush nullflag)
	(object_create_anew 128ped)))
	(if
	(= sixtyfour true)
	(object_teleport 64crush 64flag)
	(begin
	(object_teleport 64crush nullflag)
	(object_create_anew 64ped)))
	(if
	(= thirtytwo true)
	(object_teleport 32crush 32flag)
	(begin
	(object_teleport 32crush nullflag)
	(object_create_anew 32ped)))
	(if
	(= sixteen true)
	(object_teleport 16crush 16flag)
	(begin
	(object_teleport 16crush nullflag)
	(object_create_anew 16ped)))
	(if
	(= eight true)
	(object_teleport 8crush 8flag)
	(begin
	(object_teleport 8crush nullflag)
	(object_create_anew 8ped)))
	(if
	(= four true)
	(object_teleport 4crush 4flag)
	(begin
	(object_teleport 4crush nullflag)
	(object_create_anew 4ped)))
	(if
	(= two true)
	(object_teleport 2crush 2flag)
	(begin
	(object_teleport 2crush nullflag)
	(object_create_anew 2ped)))
	(if
	(= one true)
	(object_teleport 1crush 1flag)
	(begin
	(object_teleport 1crush nullflag)
	(object_create_anew 1ped)))
	(sleep 30)
	(if
	(<
	(unit_get_health 16384ped) 1.00)
	(set recoveredbinary 16384)
	(set recoveredbinary 0))
	(if
	(<
	(unit_get_health 8192ped) 1.00)
	(set recoveredbinary
	(+ recoveredbinary 8192.00)))
	(if
	(<
	(unit_get_health 4096ped) 1.00)
	(set recoveredbinary
	(+ recoveredbinary 4096.00)))
	(if
	(<
	(unit_get_health 2048ped) 1.00)
	(set recoveredbinary
	(+ recoveredbinary 2048.00)))
	(if
	(<
	(unit_get_health 1024ped) 1.00)
	(set recoveredbinary
	(+ recoveredbinary 1024.00)))
	(if
	(<
	(unit_get_health 512ped) 1.00)
	(set recoveredbinary
	(+ recoveredbinary 512.00)))
	(if
	(<
	(unit_get_health 256ped) 1.00)
	(set recoveredbinary
	(+ recoveredbinary 256.00)))
	(if
	(<
	(unit_get_health 128ped) 1.00)
	(set recoveredbinary
	(+ recoveredbinary 128.00)))
	(if
	(<
	(unit_get_health 64ped) 1.00)
	(set recoveredbinary
	(+ recoveredbinary 64.00)))
	(if
	(<
	(unit_get_health 32ped) 1.00)
	(set recoveredbinary
	(+ recoveredbinary 32.00)))
	(if
	(<
	(unit_get_health 16ped) 1.00)
	(set recoveredbinary
	(+ recoveredbinary 16.00)))
	(if
	(<
	(unit_get_health 8ped) 1.00)
	(set recoveredbinary
	(+ recoveredbinary 8.00)))
	(if
	(<
	(unit_get_health 4ped) 1.00)
	(set recoveredbinary
	(+ recoveredbinary 4.00)))
	(if
	(<
	(unit_get_health 2ped) 1.00)
	(set recoveredbinary
	(+ recoveredbinary 2.00)))
	(if
	(<
	(unit_get_health 1ped) 1.00)
	(set recoveredbinary
	(+ recoveredbinary 1.00)))
	(object_create_anew update)))

(script continuous void resync
(begin
(sleep_until
(<
(unit_get_health resync) 1.00) 1)
(set resyncnow true)
(if host
(begin
(if dir
(begin
(object_create_anew dirped)
(object_teleport dircrush dirflag))
(begin
(object_create_anew dirped)
(object_teleport dircrush nullflag)))
(object_teleport updatecrush updateflag)))
(sleep_until
(<
(unit_get_health update) 1.00) 1)
(sleep_until
(>
(unit_get_health update) 0.00) 1)
(if
(<
(unit_get_health dirped) 1.00)
(set dir true)
(set dir false))
(if dir
(device_set_position_immediate train
(+
(/ recoveredbinary 32767.00) 0.01))
(device_set_position_immediate train
(-
(/ recoveredbinary 32767.00) 0.01)))
(sleep 1)
(if dir
(device_set_position train 1.00)
(device_set_position train 0.00))
(inspect dir)
(inspect recoveredbinary)
(object_create_anew resync)
(set resyncnow false)))

(script dormant void resyncbutton
(begin
(sv_say starting resync)
(object_teleport resynccrush resyncflag)))

(script continuous void resynconnewplayers
(begin
(if
(and host
(not resyncnow))
(if
(!= listcount
(list_count
(players)))
(begin
(object_teleport resynccrush resyncflag)
(set listcount
(list_count
(players)))))
(sleep 90))))

(script continuous void train_loc
(begin
(sleep 100)
(sleep_until
(not resyncnow) 5)
(set dir true)
(object_teleport resynccrush resyncflag)
(sleep_until
(=
(device_get_position train) 1.00))
(sleep_until
(not resyncnow) 5)
(object_teleport resynccrush resyncflag)
(sleep 150)
(sleep_until
(not resyncnow) 5)
(set dir false)
(object_teleport resynccrush resyncflag)
(sleep_until
(=
(device_get_position train) 0.00))
(sleep_until
(not resyncnow) 5)
(object_teleport resynccrush resyncflag)
(sleep 50)))

(script continuous void teleport
(begin
(object_teleport 1ped 1pedflag)
(object_teleport 2ped 2pedflag)
(object_teleport 4ped 4pedflag)
(object_teleport 8ped 8pedflag)
(object_teleport 16ped 16pedflag)
(object_teleport 32ped 32pedflag)
(object_teleport 64ped 64pedflag)
(object_teleport 128ped 128pedflag)
(object_teleport 256ped 256pedflag)
(object_teleport 512ped 512pedflag)
(object_teleport 1024ped 1024pedflag)
(object_teleport 2048ped 2048pedflag)
(object_teleport 4096ped 4096pedflag)
(object_teleport 8192ped 8192pedflag)
(object_teleport 16384ped 16384pedflag)
(object_teleport dirped dirpedflag)
(object_teleport update updatepedflag)
(object_teleport resync resyncpedflag)))

(script startup void setup
(begin
(object_create host_test)
(sleep 30)
(set host
(volume_test_object host_v host_test))
(if host
(begin
(object_create_anew_containing crush)
(sleep_until
(begin
(object_teleport host_test test_flag) false) 15))
(begin
(sleep -1 resynconnewplayers)
(sleep -1 train_loc)
(sleep_until
(begin
(if
(not resyncnow)
(object_create_anew_containing ped)) false) 100)))))