/// @description scr_character_collision_right(x, y, angle, mask); 
/// @param x
/// @param  y
/// @param  angle
/// @param  mask
// Returns when the right sensor has collided.
   
   // Setup temporal masks:
      TempMask   = (mask_index);
      mask_index = (argument3);
      
   // Test the Collision:
      ColTest    = scr_character_collision(floor(argument0 + cos(degtorad(argument2)) * 11), 
                                           floor(argument1 - sin(degtorad(argument2)) * 11), 
                                           Layer);
	// Right-only collisions
	if(!ColTest && XSpeed >= 0){
        ColTest = place_meeting(floor(argument0 + cos(degtorad(argument2)) * 11), 
                                floor(argument1 - sin(degtorad(argument2)) * 11),
                                par_collision_onewayleft);
    }									   
	  
   // Return to the old mask:
      mask_index = TempMask;
   
   // Return:
      return (ColTest);


