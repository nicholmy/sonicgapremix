/// @description  Fade.
   
    if(Credit_Fade == true && Credit_Alpha != 0){
       Credit_Alpha -= 0.05;
    }else if(Credit_Fade == false && Credit_Alpha != 1){
       Credit_Alpha += 0.05;
    }
    
    if(Credit_Fade == true && Credit_Alpha == 0){
       if(alarm[0] == -1){
          alarm[0]  = 30;
       }
    }
    

/// Skip.
  
    if(keyboard_check(global.Key_ENTER)){
       alarm[1] = 1;
    }

