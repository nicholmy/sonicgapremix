/// @description  Stop, Update Plate.

 // Set image speed back to zero.
    Triggered   = false;
    alarm[0]    = 35;
    image_speed = 0;
    
 // Activate Plate:
    with(obj_bonus_gumball_plate){
         Triggered = true;
    }
    
 

