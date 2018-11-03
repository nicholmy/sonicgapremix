/// @description  Move.
    if(x < room_width+sprite_width/2 && image_xscale != -0.5){
       x+= 0.64;
    }else{
       image_xscale = -0.5;
       image_yscale =  0.5;
       y = ystart+sprite_height;
       x-= 0.32;
    }

