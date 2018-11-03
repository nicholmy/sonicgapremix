/// @description  Gravity.
    if(Bump == true){
       if(YSpeed >= 0 && place_meeting(x, y+1, par_collision_terrain)){
          YSpeed  = 0;
          while(place_meeting(x, y, par_collision_terrain)){
                y--;
          }
       }else{
          YSpeed += Gravity;
       }
          y+= YSpeed;
    }

