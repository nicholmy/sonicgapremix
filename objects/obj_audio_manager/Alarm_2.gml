/// @description Play Minor Boss Music
	StopSound(ZoneBGM);
	ZoneSetTheme(room, Minor_Boss_Theme, 0, -1, -1);

/// Reset.
    DeadFade = false;
    global.BGMVolume = global.MaxBGMV;
    global.SFXVolume = global.MaxSFXV;
