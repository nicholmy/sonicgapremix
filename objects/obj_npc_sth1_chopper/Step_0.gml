/// @description  Jump/Fall:

 // Apply Gravity:
    YSpd += YGrv 
    
 // Check if we're in our starting position, jump again if true.
    if(y >= ystart){
       YSpd = -7;
    }    
    
 // Increase/Decrease the Y Position using YSpd.
    y += YSpd;
    

