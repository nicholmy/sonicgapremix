/// @description  Trigger switch event.

    if(RunStep == true){
       if(SwitchTriggered[SwitchID] == false){
          if(SwitchTriggerEvent[SwitchID] = true){
             SwitchTriggerEvent[SwitchID] = false;
             event_user(0);
          }    
       }
       if(SwitchTriggered[SwitchID] == true){
          if(SwitchTriggerEvent[SwitchID] = false){
             SwitchTriggerEvent[SwitchID] = true;
             event_user(0);
          }    
       }
    }    

    

/// Collision with Objects.

    if(place_meeting(x, y-1, par_character)){
       if(SwitchTriggered[SwitchID] == false){
          PlaySound(snd_object_switch, global.SFXVolume, 1, 1);
          SwitchTriggered[SwitchID]  = true;
          image_index                = 1;
       }       
    }else   
    if(place_meeting(x, y, par_collision_pushable)){
       if(SwitchTriggered[SwitchID] == false){
          PlaySound(snd_object_switch, global.SFXVolume, 1, 1);
          SwitchTriggered[SwitchID]  = true;
          image_index                = 1;
       }
    }else{
       if(SwitchTriggered[SwitchID]  = true){     
          SwitchTriggered[SwitchID]  = false;
          image_index                = 0;
       }    
    }
    
    

