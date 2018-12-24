/// @description Combo Finish
global.Score += comboTotal;
goalScore = max(goalScore - comboTotal, 0);
	
chainCount = 0;
comboTotal = 0;

alarm[3] = 1;
