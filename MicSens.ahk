;@Ahk2Exe-SetMainIcon icon.ico

IniRead, DeviceNumber, %A_WorkingDir%\settings.ini, SETTINGS, DeviceNumber, 0
IniRead, TargetVolume, %A_WorkingDir%\settings.ini, SETTINGS, TargetVolume, 66
IniRead, CheckInterval, %A_WorkingDir%\settings.ini, SETTINGS, DeviceNumber, 500

Loop {
	SoundGet, CurrentVolume, MASTER, VOLUME, DeviceNumber
	
	if (CurrentVolume != TargetVolume){ 
		SoundSet, %TargetVolume%, MASTER, VOLUME, DeviceNumber
	}

	Sleep, CheckInterval
}