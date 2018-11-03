/// @description  Draw Knuckles.

    if(Knuckles_InvTime != 60){
       if((global.ObjectTime div 60) mod 3){
          draw_sprite_ext(sprite_index, image_index, floor(x), floor(y), Knuckles_Direction, 1, 0, c_white, 1)
       }
    }else{
          draw_sprite_ext(sprite_index, image_index, floor(x), floor(y), Knuckles_Direction, 1, 0, c_white, 1)
          if(Knuckles_State = "Spindash" && (image_index >= 14)){
             draw_sprite_ext(spr_spindash_dust, current_time div 40, floor(x-Knuckles_Direction*7), floor(y), Knuckles_Direction, 1, 0, c_white, 1);   
          }
    }


