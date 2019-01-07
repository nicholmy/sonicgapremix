/// @description Gap Success!

// Formula for staling here somewhere	
imgIndex = 2;
baseScore = 200;

//Staling formula here
if (currentGapSize == 0) {
	PlaySound(snd_object_switch, global.SFXVolume, 1, 1);
} else if (currentGapSize == 1) {
	imgIndex = 3;
	baseScore += 500;
	PlaySound(snd_scoring_mediumGap, global.SFXVolume, 1, 1);
} else if (currentGapSize == 2) {
	imgIndex = 1;
	baseScore += 1000;
	PlaySound(snd_scoring_largeGap, global.SFXVolume, 1, 1);
}

// 100%, 75%, 50%, 25%, 10%, 10%, ...
pointsAwarded += ceil(baseScore * (1 - min(gapStaleList[currentGapID] * 0.25, 0.9)));

// Add points to the total
alarm[1] = 1;

scoreEffect = instance_create(par_character.x, par_character.y, obj_effect_score);
scoreEffect.image_index = imgIndex;

// Add 1 to Stale Factor for this gap
gapStaleList[currentGapID]++;

// Add 1 to the chain
chainCount++;

if (chainCount == 10) {
	with(par_character){
        HasSpeedShoes  = true;
        SpeedShoeTimer = 900;                                       
    } 
}

// Reset State
currentGapID = -1;
currentTriggerID = -1;
currentGapSize = 0;


