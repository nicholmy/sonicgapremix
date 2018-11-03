/// @description scr_character_handle_hanging()
// When you collide with this sensor, make the character hang
 
// Find the Sensor:
Sensor = scr_character_collision_top_object(x, y, Angle, spr_mask_main, par_hang);

// Handle the initial trigger
if (Sensor != noone && !Sensor.inUse && YSpeed > 0 && !KeyDown) {
	x = Sensor.x;
	y = Sensor.y + Sensor.hangOffset;
	
	Action = ActionHang;
	XSpeed = 0;
	YSpeed = 0;
	
	Sensor.inUse = true;
	Sensor.isTriggered = true;
	
	PlaySound(snd_character_hang, global.SFXVolume, 1, 1); 
}