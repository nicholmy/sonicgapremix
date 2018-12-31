/// @description  scr_character_handle_platforms()
 // Script to handle moving platforms!
 
OnSwing    = scr_character_collision_bottom_object(x, y, Angle, spr_mask_big, par_collision_swing);
OnMoving   = scr_character_collision_bottom_object(x, y, Angle, spr_mask_big, par_collision_moving);

OnSpinPlat = scr_character_collision_bottom_object(x, y, Angle, spr_mask_big, obj_spinplat);

if (OnSpinPlat != noone) {
	/*if (Action = ActionSpin && KeyAction_Pressed) {
		OnSpinning.ActiveCooldown = 5;
	}*/
	
	if (Action = ActionJump && YSpeed > 0) {
		XSpeed = 0;
		YSpeed = 0;
		AnimationDirection = 1;
		AnimationSpeed = 0.01;
		Action = ActionSpin;
	}
	
	/*if (Action = ActionSpin && x < OnSpinPlat.x) {
		x += 1;
	} else if (Action = ActionSpin && x > OnSpinPlat.x) {
		x -= 1;
	} */
	
	if (Action = ActionSpin && x != OnSpinPlat.x) {
		x = OnSpinPlat.x
	}
}


