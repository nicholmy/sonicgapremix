/// @description Insert description here
    isCollected = true;
	with (obj_bonuscondition_getallrings) {
		ringsLeft--;
	}
// Ring Stereo Sound:
    if(global.RingStereo == 1){
    if(global.RingStereoID == 1){
        PlaySound(snd_object_ring_left, global.SFXVolume, 1, 1); 
        global.RingStereoID  = 2;
    }else
    if(global.RingStereoID == 2){
        PlaySound(snd_object_ring_right, global.SFXVolume, 1, 1); 
        global.RingStereoID  = 1;
    }                
    }else{ // Play the Ring sound in both ears:
            PlaySound(snd_object_ring, global.SFXVolume, 1, 1);                  
    }
	
	instance_destroy();