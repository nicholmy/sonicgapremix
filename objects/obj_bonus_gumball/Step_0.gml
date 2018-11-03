/// @description  Fall.
  
 // Add Gravity:
    y    += YSpd;
    YSpd += YGrv;
    
 // Limit Speed:    
    if(YSpd > 2){
       YSpd = 2;
    }
    
 // Destroy:  
    if(y>room_height+16){
       instance_destroy();
    }

