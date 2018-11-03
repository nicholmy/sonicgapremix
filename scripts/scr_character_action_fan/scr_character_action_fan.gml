/// @description scr_character_action_jump();
// Script to perform Hanging.

if (Action == ActionFan && Ground) {
	Action = ActionNormal;
}

if (Action == ActionFan) {
	Allow_XMovement = true;
	Allow_YMovement = true;
}