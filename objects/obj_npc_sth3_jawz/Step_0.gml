/// @description  Speed up.

    CharCheck = instance_exists(par_character);
    CharNear  = instance_nearest(x, y, par_character);
    if(CharCheck != false){
       if(distance_to_object(instance_nearest(x, y, CharNear) < 80)){
          if(XSpeed < TurboSpeed){
             XSpeed += (floor(TurboSpeed)-XSpeed)*0.05;
          }
       }
    }
    
    x += image_xscale*XSpeed;


