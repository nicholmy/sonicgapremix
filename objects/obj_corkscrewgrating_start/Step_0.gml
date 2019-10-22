/// @description Move the character
// You can write your code in this editor
if (isActive) {
	activeChar.Action = ActionRolling;
	activeChar.Ground = false;

	//activeChar.x = (x+16) + spinRadius * dsin(spinAngle);
	activeChar.y = activeChar.y - spinSpeed/1.5
	//activeChar.XSpeed = spinRadius * dcos(spinAngle) / spinSpeed;
	activeChar.YSpeed = -spinSpeed/1.5
	
	spinAngle = (spinAngle + spinSpeed) % 360;
	spinSpeed -= 0.0625;

	if (activeChar.y < (y - 512)) {
		show_debug_message("Finish Spin Speed: " + string(spinSpeed))
		activeChar.XSpeed = spinSpeed * dcos(spinAngle)
		activeChar.YSpeed = -spinSpeed
		isActive = false;
		spinSpeed = 0;
		alarm[0] = 30;
	} else if (spinSpeed < 2) {
		
		activeChar.XSpeed = spinSpeed * dcos(spinAngle)
		activeChar.YSpeed = -spinSpeed
		
		show_debug_message("Finish Spin Speed: " + string(spinSpeed))
		show_debug_message("Finish Spin Angle: " + string(spinAngle))
		show_debug_message("Finish XSpeed: " + string(activeChar.XSpeed))
		show_debug_message("Finish YSpeed: " + string(activeChar.YSpeed))
		isActive = false;
		LockTimer = 30;
		alarm[0] = 30;
	}
}