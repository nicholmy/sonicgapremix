/// @description scr_character_handle_hanging()
// When you collide with this sensor, make the character hang
 
// Find the Sensor:
Conveyor = scr_character_collision_bottom_object(x, y, Angle, spr_mask_main, obj_conveyor);

// If on the conveyor belt on the ground
if (Conveyor != noone && Ground) {
	var LWall = scr_character_collision_left(x + Conveyor.conveyorSpeed, y, Angle, spr_mask_big);
	var RWall = scr_character_collision_right(x + Conveyor.conveyorSpeed, y, Angle, spr_mask_big);
	
	// If nothing's in the way...
	if (!LWall && !RWall) {
		x += Conveyor.conveyorSpeed;
	
		// Jump with at least the speed of the conveyor belt
		if (KeyAction_Pressed) {
			XSpeed += Conveyor.conveyorSpeed;
		}
	} else {
		XSpeed = 0;
	}
}

// Find something harmful that is sparky:
Elec_Gen = scr_character_collision_bottom_object(x, y, Angle, spr_mask_main, par_electricgenerator);
   
// Get Hit:
if(instance_exists(obj_insta_shield) != 1 && Elec_Gen != noone && Shield != ShieldElectricity && Action != ActionTransform && Ground){
    if(isHittable){
    scr_character_action_hit(Elec_Gen, false);
    }
} 

var Pole_Pod_Door = scr_character_collision_object(x, y, obj_polepod_door);

if (Pole_Pod_Door != noone && XSpeed > 0 && x > Pole_Pod_Door.x) {
	// Get the corresponding pod from this door
	var Pole_Pod = Pole_Pod_Door.spawnerID;
	
	// Only if the pod is resting at the bottom
	if (Pole_Pod.MoveState == 0) {
		// Convert speed into the pod's momentum and kick it off
		with (Pole_Pod) {
			CharacterID = other.id;
			Momentum = abs(CharacterID.XSpeed) * ConvFactor;
			MoveState = 1;
			//x += 64;
			show_debug_message("Initial Momentum:" + string(Momentum))
		}
	
		XSpeed = 0;
		YSpeed = 0;
		Ground = 1;
		Action = ActionSpin;
		AnimationDirection = 1;
		PlaySound(snd_object_accelerator, global.SFXVolume, 1, 1);
	}
}