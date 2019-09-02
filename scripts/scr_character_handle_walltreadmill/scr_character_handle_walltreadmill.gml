/// @description  scr_character_handle_walltreadmill()
 // Script to handle the wall treadmill
 
 Wall_Treadmill = scr_character_collision_right_object(x, y, Angle, spr_mask_big, obj_wall_treadmill);
 
 if(Wall_Treadmill != noone){
	if (KeyRight_Pressed) PlaySound(snd_character_roll, global.SFXVolume, 1, 1);
	// When in the air and holding left/right, spin and accelerate up
	// If you jump, you can jump off
	if (!Ground && KeyRight) {
		Action = ActionJump;
		// Increase vertical speed, up to a cap
		XSpeed = 0;
		YSpeed = max(YSpeed - 2, -12)
		ShieldUsable = false;
		
		if (KeyAction_Pressed) {
			PlaySound(snd_character_jump, global.SFXVolume, 1, 1);
			XSpeed = -4;
		}
	}
 }
 
 Wall_Treadmill_Left = scr_character_collision_left_object(x, y, Angle, spr_mask_big, obj_wall_treadmill);
 
 if(Wall_Treadmill_Left != noone){
	if (KeyLeft_Pressed) PlaySound(snd_character_roll, global.SFXVolume, 1, 1);
 
	// When in the air and holding left/right, spin and accelerate up
	// If you jump, you can jump off
	if (!Ground && KeyLeft) {
		Action = ActionJump;
		// Increase vertical speed, up to a cap
		XSpeed = 0;
		YSpeed = max(YSpeed - 2, -12)
		ShieldUsable = false;
		
		if (KeyAction_Pressed) {
			PlaySound(snd_character_jump, global.SFXVolume, 1, 1);
			XSpeed = 4;
		}
	}
 }
 
// When on the ground running up a right wall
if (Ground && FloorMode == 1 && scr_character_collision_bottom_object(x, y, Angle, spr_mask_big, obj_wall_treadmill)) {
	XSpeed += 0.4;
}
	
// When on the ground running down a wall
if (Ground && FloorMode == 3 && scr_character_collision_bottom_object(x, y, Angle, spr_mask_big, obj_wall_treadmill)) {
	XSpeed -= 0.4;
}