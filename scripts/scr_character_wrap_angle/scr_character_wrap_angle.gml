/// @description scr_character_wrap_angle(value);
/// @param value
// Ensure that the angle is within the bounds:

   while(argument0 < 0){         
         argument0 += 360;
   }
   while(argument0 >= 360){
         argument0 -= 360;
   }
   
   // Return the corrected angle:
   return argument0;
