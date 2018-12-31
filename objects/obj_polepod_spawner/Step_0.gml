/// @description Move the Character + Pod
if (MoveState >= 1) {
	// Weight is like the friction, slows the pod down as it goes up
	Momentum -= Weight;
	
	// Change your rotation based on your spinning speed
	XAngle += Momentum;
	
	CompareAngle = ((XAngle mod 360) + 360) mod 360;
	var prevX = x;
	var prevY = y;
	
	x = InitX + 32 * dsin(XAngle);
	y = InitY - XAngle / YIncrement;
	
	if (MoveState == 1) {
		if (y >= InitY) {
			// Kick the character out at the bottom
			with(CharacterID) {
				XSpeed = (other.Momentum / (XSpeed_Max * 2.5)) * XSpeed_Max * 2;
				show_debug_message("Shooting out at " + string(XSpeed));
				Action = ActionRolling;
				LockControl = 0;
			}
			
			// Reset the pod
			MoveState = 0;
			Momentum = 0;
			XAngle = 0;
			x = InitX;
			y = InitY;
			
			PlaySound(snd_object_thud, global.SFXVolume, 1, 1);
		} else {
			//show_debug_message(string(floor(prevY - y)))
			// Move the character with the pod
			CharacterID.x = x + floor(prevX - x);
			CharacterID.y = y+11 + floor(prevY - y);
		}
	} else if (MoveState == 2 && y >= InitY) {
		// Reset the pod
		MoveState = 0;
		Momentum = 0;
		XAngle = 0;
		x = InitX;
		y = InitY;
	}
}
