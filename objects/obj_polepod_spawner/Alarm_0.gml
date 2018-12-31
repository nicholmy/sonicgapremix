/// @description Trigger spitting the character out at top

if (y <= InitY && MoveState == 1) {
	// Kick the character out at the top
	with(CharacterID) {
		XSpeed = min((other.Momentum / (XSpeed_Max * 2.5)) * XSpeed_Max * 2, XSpeed_Max);
		show_debug_message("Shooting out at " + string(XSpeed));
		Action = ActionRolling;
		LockControl = 0;
	}
	
	// The pod will begin moving down to reset
	MoveState = 2;
	Momentum = 0;
	doorObj.image_index = 1;
	
	PlaySound(snd_object_thud, global.SFXVolume, 1, 1);
} 