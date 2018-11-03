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

