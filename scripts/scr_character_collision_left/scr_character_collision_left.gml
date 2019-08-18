/// @description scr_character_collision_left(x, y, angle, mask); 
/// @param x
/// @param  y
/// @param  angle
/// @param  mask
// Returns when the left sensor has collided.
   
   // Setup temporal masks:
      TempMask   = (mask_index);
      mask_index = (argument3);
      
   // Test the Collision:
      ColTest    = scr_character_collision(floor(argument0 - cos(degtorad(argument2)) * 11), 
                                           floor(argument1 + sin(degtorad(argument2)) * 11), 
                                           Layer);
										  
	// If the object on the left is a left-only collision, check for it and give that result
	if(!ColTest && XSpeed <= 0){
        ColTest = place_meeting(floor(argument0 - cos(degtorad(argument2)) * 11), 
                                floor(argument1 + sin(degtorad(argument2)) * 11),
                                par_collision_onewayright);
    }
   
   // Return to the old mask:
      mask_index = TempMask;
   
   // Return:
      return (ColTest);


