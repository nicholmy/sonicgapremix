/// @description  Rewards.
    if(Collected != 0){
       if(image_index == 0){
          // No Reward.
       }
       if(image_index == 2){
          global.Rings += choose(10, 10, 10, 10, 10, 20, 40, 10, 20, 40, 80, 10, 10, 20) 
          PlaySound(snd_object_ring, global.SFXVolume, 1, 1);
       }
       if(image_index == 3){
          global.Lives++
          PlaySound(snd_character_life, global.SFXVolume, 1, 1);
       }
       if(image_index == 4){
          if(par_character.ShieldChild != 0){
             if(instance_exists(par_character.ShieldChild)){
                with(par_character.ShieldChild){
                     instance_destroy();
                }
             }
          }        
          par_character.Shield = ShieldBubble;        
          global.BonusShield   = ShieldBubble;         
          PlaySound(snd_shield_get_bubble, global.SFXVolume, 1, 1);          
       }
       if(image_index == 5){
          if(par_character.ShieldChild != 0){
             if(instance_exists(par_character.ShieldChild)){
                with(par_character.ShieldChild){
                     instance_destroy();
                }
             }
          }         
          par_character.Shield = ShieldElectricity;
          global.BonusShield   = ShieldElectricity;
          PlaySound(snd_shield_get_electricity, global.SFXVolume, 1, 1);            
       }
       if(image_index == 6){
          if(par_character.ShieldChild != 0){
             if(instance_exists(par_character.ShieldChild)){
                with(par_character.ShieldChild){
                     instance_destroy();
                }
             }
          }         
          par_character.Shield = ShieldFlames;             
          global.BonusShield   = ShieldFlames;        
          PlaySound(snd_shield_get_flame, global.SFXVolume, 1, 1);            
       }              
       if(image_index == 7){
          if(instance_exists(obj_bonus_gumball_spring_breaker) == false){
        with(instance_create(96,       748, obj_bonus_gumball_spring_breaker)){             
             image_xscale = 8;
        }
             instance_create(96,       768, obj_bonus_gumball_collapse);
             instance_create(96+32,    768, obj_bonus_gumball_collapse);
             instance_create(96+32*2,  768, obj_bonus_gumball_collapse);
             instance_create(96+32*3,  768, obj_bonus_gumball_collapse);
             instance_create(112,      752, obj_spring_up_red);
             instance_create(112+32,   752, obj_spring_up_red);
             instance_create(112+32*2, 752, obj_spring_up_red);
             instance_create(112+32*3, 752, obj_spring_up_red);
          }
       }
    }

