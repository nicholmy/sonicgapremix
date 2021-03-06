/// @description scr_character_collision_bottom(x, y, angle, mask); 
/// @param x
/// @param  y
/// @param  angle
/// @param  mask
// Returns when the bottom sensor has collided.
   
   // Setup temporal masks:
      TempMask   = (mask_index);
      mask_index = (argument3);
	  //var yada = argument3;
	  //mask_index = (spr_mask_sensor_bottom);
      
   // Test the Collision:
      ColTest    = scr_character_collision(floor(argument0 + sin(degtorad(argument2)) * 11), 
                                           floor(argument1 + cos(degtorad(argument2)) * 11), 
                                           Layer);

   // Special case: if the normal collision test failed, check for collision within platforms:
   // There's a weird collision bug with platforms when you're inside one and fall out the bottom in the air
      if(!ColTest && YSpeed >= 0){
          ColTest = place_meeting(floor(argument0 + sin(degtorad(argument2)) * 11),
                                  floor(argument1 + cos(degtorad(argument2)) * 11),
                                  par_collision_platform) && 
                   !place_meeting(floor(argument0), floor(argument1), 
                                  par_collision_platform);
			/*ColTest = place_meeting(floor(argument0 + sin(degtorad(argument2)) * 11),
                                  floor(argument1 + cos(degtorad(argument2)) * 11),
                                  par_collision_platform) && 
                   !scr_character_collision_top_object(floor(argument0), floor(argument1), 0, spr_mask_big,
                                  par_collision_platform);*/
      }

   /***** NEW COLLISION ******/
   /*// Test the Collision:
	ColTest    = scr_character_collision(floor(argument0 + sin(degtorad(argument2)) * 20), 
                                           floor(argument1 + cos(degtorad(argument2)) * 20), 
                                           Layer);

   // Special case: if the normal collision test failed, check for collision within platforms:
      if(!ColTest && !Ground && YSpeed >= 0){
          ColTest = place_meeting(floor(argument0 + sin(degtorad(argument2)) * 20),
                                  floor(argument1 + cos(degtorad(argument2)) * 20),
                                  par_collision_platform) && 
                   !place_meeting(floor(argument0), floor(argument1), 
                                  par_collision_platform);
      }*/
   
   // Return to the old mask:
      mask_index = TempMask;
   
   // Return:
      return (ColTest);


