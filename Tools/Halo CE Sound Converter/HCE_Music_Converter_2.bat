@echo off
:START
del temp\*.ogg
del temp.mp3
copy temp\*.wav data\sound\music\music\cunganh
del temp\*.wav
tool.exe sounds sound\music\music\cunganh ogg 41000
EXIT
DONE 