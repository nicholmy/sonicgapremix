/// @description  Going out.
    
    if(GoingOut = 0){
       if(GoOff > 0){
          GoOff -= 20;
          alarm[4] = 1;
       }else{
          alarm[5] = 1;
       }
    }else{
     alarm[5] = 1; 
    }


