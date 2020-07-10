/// @description  Movement.

 // Change direction/Wall Collision.
 
    if(isMoving and place_meeting(x + XSpd, y, par_collision_solid)){ 
       while(!place_meeting(x + sign(XSpd), y, par_collision_solid)){ 
             x += sign(XSpd); 
       }
       
	   isMoving = false;
	   alarm[0] = 60;
    }  
    if(isMoving and place_meeting(x + XSpd, y, obj_badnik_wall)){ 
       while(!place_meeting(x + sign(XSpd), y, obj_badnik_wall)){ 
             x += sign(XSpd); 
       }

	   isMoving = false;
	   alarm[0] = 60;
    }
	/*if(isMoving and !place_meeting(x, y+sprite_height, par_collision_solid)){ 
	   isMoving = false;
	   alarm[0] = 60;
	}*/
    
	if (isMoving) {
		x += XSpd;       
		image_xscale = -XSpd;
	}
   
   

