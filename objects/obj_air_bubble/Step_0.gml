/// @description  Change Frame/Size.

    if(image_index != BubbleIndex){
       image_index += 0.10;
    }else{
       image_index = BubbleIndex;
    }
    
    // Allow to be pop'd:
       if(image_index = 6 && BubblePop = false){
          BubblePop = true;
       }

/// Movement.

    // Transition:
       if(hspeed >= 1){
          Transition = -1;
       }else if(hspeed <= -1){
          Transition = 1;
       }
              
    // Set Speed.
       if(Transition = 1){
          hspeed += .06;
       }else{
          hspeed -= .06;
       }
       
    // Destroy if we hit the surface or collision.
       if(y <= global.WaterSurfacePosition){
          instance_destroy();
       }
 
    // Destroy if we hit collision.
       if(place_meeting(x, y+1, par_collision_solid)){
          instance_destroy();
       }

