/// @description Combo Finish & Next Act Triggers
global.Score += comboTotal;
goalScore = max(goalScore - comboTotal, 0);
	
chainCount = 0;
comboTotal = 0;

alarm[3] = 1;

if (goalScore <= 0 && global.ZoneAct == 1) {
	global.ZoneAct++;
	// Update the Act Music
	obj_audio_manager.alarm[1] = 1;
	
	// Open all act doors (for this Act)
	with (obj_act_door_act2) {
		alarm[0] = 1;
	}
	
	// This should be a variable
	goalScore = 1500;
} else if (goalScore <= 0 && global.ZoneAct == 2) {
	global.ZoneAct++;
	
	// Open all act doors (for this Act)
	with (obj_act_door_act3) {
		alarm[0] = 1;
	}
}