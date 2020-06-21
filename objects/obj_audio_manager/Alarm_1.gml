/// @description Play Act Music
// Stop whatever is playing
	StopSound(ZoneBGM);

// Normal Zone Music
	if (global.ZoneAct == 1) {
		ZoneSetTheme(rm_zone, Test_Theme2, 0, -1, -1);
		ZoneSetTheme(rm_gapZone, Test_Theme2, 0, -1, -1);
		ZoneSetTheme(rm_SkyStationZone, Sky_Station1, 0, -1, -1);
		ZoneSetTheme(rm_StarStationZone, Sky_Station3, 0, -1, -1);
		ZoneSetTheme(rm_TechTreeZone, Tech_Tree1, 0, -1, -1);
		ZoneSetTheme(rm_TechTreeCourse, Tech_Tree1, 0, -1, -1);
		ZoneSetTheme(rm_AquaticRuinZone, Test_Theme3, 0, -1, -1);
		   
		ZoneSetTheme(rm_test_zone, Test_Theme2, 0, -1, -1);
		ZoneSetTheme(rm_test_zone2, Test_Theme2, 0, -1, -1);
		ZoneSetTheme(rm_test_zone3, Test_Theme3, 0, -1, -1);
		ZoneSetTheme(rm_test_gapZone, Test_Theme, 0, -1, -1);
	} else if (global.ZoneAct == 2) {
		ZoneSetTheme(rm_zone, Test_Theme2, 0, -1, -1);
		ZoneSetTheme(rm_gapZone, Test_Theme2, 0, -1, -1);
		ZoneSetTheme(rm_SkyStationZone, Sky_Station2, 0, -1, -1);
		ZoneSetTheme(rm_StarStationZone, Star_Station2, 0, -1, -1);
		ZoneSetTheme(rm_TechTreeZone, Tech_Tree2, 0, -1, -1);
		ZoneSetTheme(rm_AquaticRuinZone, Test_Theme2, 0, -1, -1);
		ZoneSetTheme(rm_test_zone2, Test_Theme3, 0, -1, -1);
	}

// Bonus Stages:
	// Gumball:
	    ZoneSetTheme(rm_bonus_gumball, Gumball_Theme, 0, -1, -1);

/// Start Credits Theme.
    ZoneSetTheme(rm_flicky_credits, Credits_Theme, 0, -1, -1);
	
/// Reset.
    DeadFade = false;
    global.BGMVolume = global.MaxBGMV;
    global.SFXVolume = global.MaxSFXV;