/// @description  Destroy.

    if(distance_to_object(par_character) < 140){
       if(destroy_timer > 0){
          if(image_speed == 0){
             image_speed = 0.30;
          }
          destroy_timer --
       }else{
          instance_destroy()
       }
    }

