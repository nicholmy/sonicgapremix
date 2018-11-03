/// @description Success!

// Formula for staling here somewhere	
imgIndex = 2;
baseScore = 200;

//Staling formula here
if (currentGapSize == 1) {
	imgIndex = 3;
	baseScore += 500;
} else if (currentGapSize == 2) {
	imgIndex = 1;
	baseScore += 1000;
}

// 100%, 75%, 50%, 25%, 10%, 10%, ...
comboTotal += ceil(baseScore * (1 - min(gapStaleList[currentGapID] * 0.25, 0.9)));

scoreEffect = instance_create(par_character.x, par_character.y, obj_effect_score);
scoreEffect.image_index = imgIndex;

// Add 1 to Stale Factor for this gap
gapStaleList[currentGapID]++;

// Add 1 to the chain
chainCount++;

// Reset State
currentGapID = -1;
currentTriggerID = -1;
currentGapSize = 0;

PlaySound(snd_object_switch, global.SFXVolume, 1, 1);
