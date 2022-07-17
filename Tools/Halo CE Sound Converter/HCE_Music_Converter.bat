@echo off
:START
MD data\sound\music\music\cunganh 
START /wait convcodec.exe "d:\FFOutput\gao nep gao te.mp3" temp.wav /v /R44100 /B16 /C2 /#
conv.exe -of 22050 -oc1 -ob16  -idel temp.wav temp\temp.ogg
premu.exe -o@n  -d temp -t 0.33 temp\temp.ogg
conv.exe -llw CONVLIST.LST -of 22050 -oc 1 -ob 16  -idel
del temp\temp.ogg
DONE 