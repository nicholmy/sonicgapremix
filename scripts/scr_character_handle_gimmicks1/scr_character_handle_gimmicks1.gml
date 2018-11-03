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