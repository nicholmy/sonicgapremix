/// @description  Movement.

 // Change direction/Wall Collision.
    if(place_meeting(x + XSpd, y, par_collision_solid)){ 
       while(!place_meeting(x + sign(XSpd), y, par_collision_solid)){ 
             x += sign(XSpd); 
       } 
       image_xscale *= -1;
       XSpd         *= -1;
    }  
    if(place_meeting(x + XSpd, y, obj_badnik_wall)){ 
       while(!place_meeting(x + sign(XSpd), y, obj_badnik_wall)){ 
             x += sign(XSpd); 
       } 
       image_xscale *= -1;
       XSpd         *= -1;
    }     
    x += XSpd;       
    image_xscale = XSpd;
   
   

