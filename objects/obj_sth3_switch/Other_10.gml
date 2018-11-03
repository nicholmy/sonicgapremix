/// @description  Switch Events.

    // Open Doors in Flicky Ruins:
       rm_ruins = room_exists("rm_flicky_ruins");       
       if(rm_ruins != noone){
     
          if(room == rm_flicky_ruins){
      
          // Open Door:
             if(SwitchTriggerEvent[1] == true){
                _Door = instance_nearest(x, y, obj_flicky_ruins_door);
                if(_Door != noone){
                   with(_Door){
                        if(DoorOpen == false){
                           DoorOpen = true;
                        } 
                   }
                }
             }
      
          // Close Door:
             if(SwitchTriggerEvent[1] == false){
                _Door = instance_nearest(x, y, obj_flicky_ruins_door);
                if(_Door != noone){
                   with(_Door){
                        if(DoorOpen == true){
                           DoorOpen = false;
                        } 
                   }
                }
             }
             
          }             
                
       }


       

