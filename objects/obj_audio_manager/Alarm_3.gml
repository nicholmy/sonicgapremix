/// @description Play Major Boss Music
	StopSound(ZoneBGM);
	ZoneSetTheme(room, Major_Boss_Theme, 0, -1, -1);

/// Reset.
    DeadFade = false;
    global.BGMVolume = global.MaxBGMV;
    global.SFXVolume = global.MaxSFXV;
