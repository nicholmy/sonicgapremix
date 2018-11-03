/// @description  Random Attack.

    var rAttack;
    rAttack = choose(1, 2, 3, 2, 3, 1, 1, 3, 2, 1);

//  Punch:            
    if(rAttack = 1){    
       Knuckles_State = "Punch";
       exit;
    }
    else      
//  Spindash:
    if(rAttack = 2){
       image_index    = 12;    
       Knuckles_State = "Spindash";
       exit;
    }    
    else
//  Punch & Spindash:
    if(rAttack = 3){
       Knuckles_State = "Spindash";
       exit;
    }                
    

