/// @description Finish the SONIC mission
if (!SONICFinished) {
	// Check if every value is true
	for (var i = 0; i < 5; i++) {
		if (!SONICList[i]) exit;
	}
	show_debug_message("All SONIC Found");
	SONICFinished = 1;
	imgIndex = 1;
	PlaySound(snd_scoring_largeGap, global.SFXVolume, 1, 1);
	
	pointsAwarded += 1000;
	
	// Add points to the total
	alarm[1] = 1;

	scoreEffect = instance_create(par_character.x, par_character.y, obj_effect_score);
	scoreEffect.image_index = imgIndex;
	
	// Add 1 to the chain
	chainCount++;

	if (chainCount == 10) {
		with(par_character){
	        HasSpeedShoes  = true;
	        SpeedShoeTimer = 900;                                       
	    } 
	}
	with (par_combo_letter) {
		instance_destroy();
	}
}