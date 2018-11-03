/// @description  Movement.

/// Change direction/Wall Collision.
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
    
 // Bounce:
    if(place_meeting(x, y + YSpd, par_collision_solid)){
       while(!place_meeting(x, y + sign(YSpd), par_collision_solid)){
             y += sign(YSpd);
       }
       YSpd = -choose(3, 3.25, 3.50);
    } 
    
    YSpd += YGrv;
    y += YSpd;

