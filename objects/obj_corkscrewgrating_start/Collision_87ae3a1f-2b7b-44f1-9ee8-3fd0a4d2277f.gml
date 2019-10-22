/// @description Initialize Character Interaction
// You can write your code in this editor
if (!isActive and other.XSpeed > MinActivateSpd and other.Ground and !isLocked) {
	activeChar = other;
	
	// Transfer the char's speed into momentum
	spinSpeed = activeChar.XSpeed;
	
	activeChar.Action = ActionRolling;
	activeChar.Animation = "ROLL";
	
	if (activeChar.Ground) {
		//activeChar.y -= 2;
		activeChar.Ground = false;
	}
	
	spinAngle = 0;
	isActive = true;
	isLocked = true;
	show_debug_message("Spin Speed: " + string(spinSpeed));
}