/// @description  Movement.

    if(image_index == 0){
       hspeed = Direction*2;
       vspeed = -2;
    }
    if(image_index == 1){
       hspeed = -Direction*2;
       vspeed = -2;        
    }
    if(image_index == 2){
       hspeed = Direction*2;      
    }
    if(image_index == 3){
       hspeed = -Direction*2;
    }    
    
    gravity = 0.241;

