/// @description Combo Finish & Next Act Triggers
global.Score += comboTotal;
goalScore = max(goalScore - comboTotal, 0);
	
chainCount = 0;
comboTotal = 0;

alarm[3] = 1;

if (goalScore <= 0 && global.ZoneAct == 1) {
	global.ZoneAct++;
	obj_audio_manager.alarm[1] = 1;
	
	// Open all act doors (for this Act)
	with (obj_act_door) {
		alarm[0] = 1;
	}
}
