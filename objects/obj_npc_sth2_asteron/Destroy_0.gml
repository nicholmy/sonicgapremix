/// @description  Explode!

 // Create Flicky:
    instance_create(x, y, choose(obj_animal_flicky, obj_animal_cucky, obj_animal_ricky,
                                 obj_animal_rocky, obj_animal_pecky, obj_animal_pocky
                          ));
    
 // Add Score:
    global.Score += 100;
    with(instance_create(x, y-10, obj_effect_score)){               
         image_index  = 1;
    }   
    
 // Dummy Effect:
    scr_create_dummy_effect(spr_explosion, 0.2, x, y, 1, 0);
    
 // Play Sound:
    PlaySound(snd_object_break, global.SFXVolume, 1, 0);
    
 // Create Spikes.
    Spike_1 = instance_create(x, y, obj_npc_sth2_asteron_spike);
    Spike_2 = instance_create(x, y, obj_npc_sth2_asteron_spike);
    Spike_3 = instance_create(x, y, obj_npc_sth2_asteron_spike);
    Spike_4 = instance_create(x, y, obj_npc_sth2_asteron_spike);
    Spike_5 = instance_create(x, y, obj_npc_sth2_asteron_spike);
    
    with(Spike_1){
         hspeed =  0;
         vspeed = -4;
    }
    with(Spike_2){
         sprite_index = spr_npc_sth2_asteron_spike_2;
         image_xscale = -1;         
         hspeed =  2;
         vspeed = -2;
    }
    with(Spike_3){
         sprite_index = spr_npc_sth2_asteron_spike_2;
         hspeed = -2;
         vspeed = -2;
    }   
    with(Spike_4){
         sprite_index = spr_npc_sth2_asteron_spike_3;   
         image_xscale = -1;           
         hspeed = 2;
         vspeed = 2;
    }
    with(Spike_5){
         sprite_index = spr_npc_sth2_asteron_spike_3;  
         hspeed = -2;
         vspeed =  2;
    }         
    
    
     

