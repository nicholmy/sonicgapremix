/// @description Insert description here
// You can write your code in this editor
if(explodeTime > 0){
	if(explodeTime mod 8 == 0){
	    scr_create_dummy_effect(spr_boss_explosion, 0.2, x-random(50)+35, y-15+random(40), 1, -1);
	    PlaySound(snd_object_destroy, global.SFXVolume, 1, 0);  
	}         
    
	explodeTime--;    
}