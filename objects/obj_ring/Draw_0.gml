/// @description  Draw Rings.

    // Draw them Flashing:
       if(InMotion && RingTimer < 90){
          if((RingTimer div 4) mod 2) draw_sprite(spr_ring, image_index, x, y);
       }else{
          // Draw them normally:       
             draw_sprite(spr_ring, image_index, x, y);
       }


