/// @description  Grab trigger
if(!isGrabbing && lockTimer == 0){
	isGrabbing = true;	
	swingMode = 0;
	XSpeed = other.XSpeed;
	YSpeed = other.YSpeed;
	PlaySound(snd_character_hang, global.SFXVolume, 1, 1);
	show_debug_message("Swing Mode: " + string(swingMode))
	show_debug_message("XSpeed: " + string(XSpeed))
	show_debug_message("YSpeed: " + string(YSpeed))
}
    
    

