/// @description  Add Gravity.

    // Everything:
       if(YSpeed >= 0 && place_meeting(x, y - YSpeed , par_collision_solid)){
          YSpeed  = choose(-2.5, -3.5);
          if(XSpeed = 0){
             randomize();
             image_xscale = choose(1, -1);
             XSpeed       = image_xscale*2;
             alarm[0]     = 1;
          }
          while(place_meeting(x, y + sign(YSpeed), par_collision_solid)){
                y--;
          }
       }else{
          YSpeed += Gravity;
       }
       x += XSpeed;
       y += YSpeed;

       

/// Change direction.
    if(place_meeting(x + XSpeed, y, par_collision_solid)){
       while(!place_meeting(x + sign(XSpeed), y, par_collision_solid)){
             x += sign(XSpeed);
       }
       image_xscale *= -1;
       XSpeed       *= -1;
    }

