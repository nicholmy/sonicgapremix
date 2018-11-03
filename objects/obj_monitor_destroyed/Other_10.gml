/// @description  Give us something.
    
    switch(IconID){
           case 0: { 
                PlaySound(snd_object_ring, global.SFXVolume, 1, 0) 
                global.Rings += 10
                break; 
           }
           
           case 1: { 
                PlaySound(snd_shield_get_bubble, global.SFXVolume, 1, 0) 
                   if(DestroyParent.ShieldChild != 0){
                      if(instance_exists(DestroyParent.ShieldChild)){
                         with(DestroyParent.ShieldChild){
                              instance_destroy();
                         }
                      }
                   }           
                   DestroyParent.Shield = ShieldBubble;
                   DestroyParent.ShieldUsable = true;        
                break; 
           }   
           
           case 2: { 
                PlaySound(snd_shield_get_flame, global.SFXVolume, 1, 0)              
                   if(DestroyParent.ShieldChild != 0){
                      if(instance_exists(DestroyParent.ShieldChild)){
                         with(DestroyParent.ShieldChild){
                              instance_destroy();
                         }
                      }
                   }             
                   DestroyParent.Shield = ShieldFlames;
                   DestroyParent.ShieldUsable = true;                                   
                break; 
           }
           
           case 3: { 
                PlaySound(snd_shield_get_electricity, global.SFXVolume, 1, 0) 
                   if(DestroyParent.ShieldChild != 0){
                      if(instance_exists(DestroyParent.ShieldChild)){
                          with(DestroyParent.ShieldChild){
                               instance_destroy();
                         }
                      }
                   }              
                   DestroyParent.Shield = ShieldElectricity;
                   DestroyParent.ShieldUsable = true;                  
                break; 
           }           
           
           case 4: {
                PlaySound(snd_character_life, global.MaxSFXV, 1, 1)
                global.Lives++
                break; 
           }   
           
           case 5: {
                   with(DestroyParent){
                       Invincibility = 1.5;
                       InvTimer      = 900;                                       
                   }                     
                break;                
           }              
           
           case 6: {
                with(DestroyParent){
                    HasSpeedShoes  = true;
                    SpeedShoeTimer = 900;                                       
                }                       
                break;                
           }                                                                   
    }


