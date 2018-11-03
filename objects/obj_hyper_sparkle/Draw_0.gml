/// Draw Sparkle.

 // Get and Set Alpha: 
    if(instance_exists(par_character)){
       var (MyAlpha) = par_character.Alpha;
    }else{
           (MyAlpha) = 0;
    }

 // Draw the Sparkle.   
    draw_sprite_ext(sprite_index, image_index, x+lengthdir_x(R, D), y+lengthdir_y(R, D), 1, 1, 0, c_white, MyAlpha)


