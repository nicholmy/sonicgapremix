/// @description  Monitor Icon.

  // Move Up:
     if(IconMoveTimer != 0){
        IconPosition  -= 1;
        IconMoveTimer -= 1;
     }
  // Stop Movement:
     else if(IconMoveTimer == 0 && IconDisappearTimer != 0) { 
             IconDisappearTimer -= 1;
     }
     
  // Do something (Reward us with Rings, Shields, etc)
     if(IconMoveTimer == 0 && IconRewarded = -1){
        IconRewarded = 1;
        event_user(0);
     }     
     

/// Gravity.
    if(Landed == false){
       if(YSpeed >= 0 && place_meeting(x, y+1, par_collision_terrain)){
          YSpeed  = 0;
          Landed  = true;
          while(place_meeting(x, y, par_collision_terrain)){
                y--;
          }
       }else{
          YSpeed += Gravity;
       }
          y+= YSpeed;
    }

