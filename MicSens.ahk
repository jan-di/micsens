;@Ahk2Exe-SetMainIcon icon.ico

#Persistent

Menu, Tray, NoStandard
Menu, Tray, Add, Exit, Exit

IniRead, DeviceNumber, %A_WorkingDir%\settings.ini, SETTINGS, DeviceNumber, 0
IniRead, TargetVolume, %A_WorkingDir%\settings.ini, SETTINGS, TargetVolume, 66
IniRead, CheckInterval, %A_WorkingDir%\settings.ini, SETTINGS, CheckInterval, 500

Loop {
	SoundGet, CurrentVolume, MASTER, VOLUME, DeviceNumber
	
	if (CurrentVolume != TargetVolume){ 
		SoundSet, %TargetVolume%, MASTER, VOLUME, DeviceNumber
	}

	Sleep, CheckInterval
}

Exit:
ExitApp 0
return