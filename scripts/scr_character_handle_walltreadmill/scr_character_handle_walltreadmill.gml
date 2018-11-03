/// @description  scr_character_handle_walltreadmill()
 // Script to handle the wall treadmill
 
 Wall_Treadmill = scr_character_collision_right_object(x, y, Angle, spr_mask_big, obj_wall_treadmill);
 
 if(Wall_Treadmill != noone){
	// When in the air and holding left/right, spin and accelerate up
	// If you jump, you can jump off
	if (!Ground && KeyRight) {
		Action = ActionJump;
		YSpeed -= 0.5;
		ShieldUsable = false;
		
		if (KeyAction_Pressed) {
			PlaySound(snd_character_jump, global.SFXVolume, 1, 1);
			XSpeed = -4;
		}
	}
 }
 
 Wall_Treadmill_Left = scr_character_collision_left_object(x, y, Angle, spr_mask_big, obj_wall_treadmill);
 
 if(Wall_Treadmill_Left != noone){
	// When on the ground running up a wall, speed up
	// When on the ground running down a wall, speed down
 
	// When in the air and holding left/right, spin and accelerate up
	// If you jump, you can jump off
	if (!Ground && KeyLeft) {
		Action = ActionJump;
		YSpeed -= 0.5;
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