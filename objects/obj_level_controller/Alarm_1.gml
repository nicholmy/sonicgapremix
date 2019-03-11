/// @description Start Scoring Results
Tally = instance_create(x, y, obj_scoring_results)
Tally.SpecialFlag = ContinueAfterFinishFlag;

with(par_character) {
	GoalState = 1;
} 