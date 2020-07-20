/// @description  Draw Rings.

    // Draw them Flashing:
       if(RingTimer < 90){
          if((RingTimer div 4) mod 2) draw_sprite(spr_ring_bonus, image_index, x, y);
       }else if (RingTimer < 20) {
		   if((RingTimer div 2) mod 2) draw_sprite(spr_ring_bonus, image_index, x, y);
	   } else {
          // Draw them normally:       
             draw_sprite(spr_ring_bonus, image_index, x, y);
       }
