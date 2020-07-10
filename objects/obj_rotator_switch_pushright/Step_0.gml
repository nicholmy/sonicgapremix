/// @description Switch trigger management
if(place_meeting(x-4, y+8, par_character) and par_character.KeyRight and !isTriggered and par_character.Action != ActionDie){
	isTriggered = true;
    PlaySound(snd_object_switch, global.SFXVolume, 1, 1);
	with (obj_rotator_rotating_switch) {
		rotSpeed = 2;
	}
}

if (isTriggered and !place_meeting(x-4, y, par_character)){
	isTriggered = false;
	with (obj_rotator_rotating_switch) {
		rotSpeed = 0;
	}
}