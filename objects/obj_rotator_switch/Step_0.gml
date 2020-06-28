/// @description Switch trigger management
if(place_meeting(x, y-1, par_character) and !isTriggered){
	isTriggered = true;
    PlaySound(snd_object_switch, global.SFXVolume, 1, 1);
    image_index                = 1;
	with (obj_rotator_rotating_switch) {
		rotSpeed = 2;
	}
}

if (isTriggered and !place_meeting(x, y-1, par_character)){
	isTriggered = false;
    image_index                = 0;
	with (obj_rotator_rotating_switch) {
		rotSpeed = 0;
	}
}