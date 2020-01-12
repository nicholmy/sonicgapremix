/// @description Spawn the character here, then die
if (isGlobal && instance_exists(par_character) && global.ZoneAct == actNum && !(global.CheckpointX != -1 && global.CheckpointY != -1)) {
	par_character.x = x;
	par_character.y = y;
	
	instance_destroy();
} else if (instance_exists(par_character) && par_character.CharacterID == charID 
	&& global.ZoneAct == actNum && !(global.CheckpointX != -1 && global.CheckpointY != -1)) {
	par_character.x = x;
	par_character.y = y;
	
	instance_destroy();
}