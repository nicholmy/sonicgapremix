/// @description  Draw each setup & setup input.
 
    // Welcome Setup:
       if(SetupProcess == 1){
          draw_set_color(c_white)
          draw_set_halign(fa_center)
          draw_set_font(global.Font_Letters)
          
          // Ask for Setupe:
          draw_text(320/2, 32, string_hash_to_newline("DO YOU WANT TO SET UP THE ENGINE?"))
          
          // Menu Options:
          if(SetupMID == 1){
             draw_set_color(c_yellow)
          }else{
             draw_set_color(c_white)
          }  draw_text(320/2-64, 224/2, string_hash_to_newline("YES"))
          
          if(SetupMID == 2){
             draw_set_color(c_yellow)
          }else{
             draw_set_color(c_white)
          }  draw_text(320/2+64, 224/2, string_hash_to_newline("NO"))
          
          draw_set_color(c_white) 
          draw_set_halign(-1)
       }

    // Keyboard/Gamepad Setup:
       if(SetupProcess == 2){
          draw_set_color(c_white)
          draw_set_halign(fa_center)
          draw_set_font(global.Font_Letters)
          
          if(!SetupKeyboard && !SetupGamepad){
             // Ask for Input settings:
             draw_text(320/2, 32, string_hash_to_newline("CHANGE YOUR#KEYBOARD AND GAMEPAD SETTINGS!"))
          
             // Menu Options:
             if(SetupMID == 1){
                draw_set_color(c_yellow)
             }else{
                draw_set_color(c_white)
             }  draw_text(320/2, 224/2, string_hash_to_newline("KEYBOARD"))
          
             if(SetupMID == 2){
                if(global.Controller_Input_Found != -1){
                   draw_set_color(c_yellow)
                }else{
                   draw_set_color(c_red)
                }
             }else{
                draw_set_color(c_white)
             }  draw_text(320/2, 224/2 + 32, string_hash_to_newline("GAMEPAD"))
                                        
             if(SetupMID == 3){
                draw_set_color(c_yellow)
             }else{
                draw_set_color(c_white)
             }  draw_text(320/2, 224/2 + 64, string_hash_to_newline("CONTINUE"))
          
             draw_set_color(c_white) 
             draw_set_halign(-1)
          }
          
          // Keyboard:
          if(SetupKeyboard){
          
             switch(SetupKeyID){
                    case 0:{
                    draw_text(320/2, 32, string_hash_to_newline("CHANGE YOUR#KEYBOARD AND GAMEPAD SETTINGS!"))  
                    draw_text(320/2, 224/2, string_hash_to_newline("PRESS ANY KEY#FOR ( UP )"))    

                    if(keyboard_check_pressed(vk_anykey) && SetupCanEnter == 1){
                       global.Key_UP = keyboard_key;
                       SetupCanEnter = 0;
                       SetupKeyID++
                    }
                                            
                    break;
                    }
                    
                    case 1:{
                    draw_text(320/2, 32, string_hash_to_newline("CHANGE YOUR#KEYBOARD AND GAMEPAD SETTINGS!"))  
                    draw_text(320/2, 224/2, string_hash_to_newline("PRESS ANY KEY#FOR ( DOWN )"))    

                    if(keyboard_check_pressed(vk_anykey) && SetupCanEnter == 1){
                       global.Key_DOWN = keyboard_key;
                       SetupCanEnter = 0;
                       SetupKeyID++
                    }
                                            
                    break;
                    }
                    
                    case 2:{
                    draw_text(320/2, 32, string_hash_to_newline("CHANGE YOUR#KEYBOARD AND GAMEPAD SETTINGS!"))  
                    draw_text(320/2, 224/2, string_hash_to_newline("PRESS ANY KEY#FOR ( LEFT )"))    

                    if(keyboard_check_pressed(vk_anykey) && SetupCanEnter == 1){
                       global.Key_LEFT = keyboard_key;
                       SetupCanEnter = 0;
                       SetupKeyID++
                    }
                                            
                    break;
                    }
                    
                    case 3:{
                    draw_text(320/2, 32, string_hash_to_newline("CHANGE YOUR#KEYBOARD AND GAMEPAD SETTINGS!"))  
                    draw_text(320/2, 224/2, string_hash_to_newline("PRESS ANY KEY#FOR ( RIGHT )"))    

                    if(keyboard_check_pressed(vk_anykey) && SetupCanEnter == 1){
                       global.Key_RIGHT = keyboard_key;
                       SetupCanEnter = 0;
                       SetupKeyID++
                    }
                                            
                    break;
                    }                    
                    
                    case 4:{
                    draw_text(320/2, 32, string_hash_to_newline("CHANGE YOUR#KEYBOARD AND GAMEPAD SETTINGS!"))  
                    draw_text(320/2, 224/2, string_hash_to_newline("PRESS ANY KEY#FOR ( ACTION )"))    

                    if(keyboard_check_pressed(vk_anykey) && SetupCanEnter == 1){
                       global.Key_ACTION = keyboard_key;
                       SetupCanEnter = 0;
                       SetupKeyID++
                    }
                                            
                    break;
                    }
                    
                    case 5:{
                    draw_text(320/2, 32, string_hash_to_newline("CHANGE YOUR#KEYBOARD AND GAMEPAD SETTINGS!"))  
                    draw_text(320/2, 224/2, string_hash_to_newline("PRESS ANY KEY#FOR ( SPECIAL )"))    

                    if(keyboard_check_pressed(vk_anykey) && SetupCanEnter == 1){
                       global.Key_SPECIAL = keyboard_key;
                       SetupCanEnter = 0;
                       SetupKeyID++
                    }
                                            
                    break;
                    }                                       
                    
                    case 6:{
                    draw_text(320/2, 32, string_hash_to_newline("CHANGE YOUR#KEYBOARD AND GAMEPAD SETTINGS!"))  
                    draw_text(320/2, 224/2, string_hash_to_newline("PRESS ANY KEY#FOR ( ENTER )"))    

                    if(keyboard_check_pressed(vk_anykey) && SetupCanEnter == 1){
                       global.Key_ENTER = keyboard_key;
                       SetupCanEnter = 0;
                       SetupKeyID++
                    }
                                            
                    break;
                    }
                    
                    case 7:{
                    SetupKeyID    = 0;
                    SetupKeyboard = 0;  
                                  
                    break;
                    }
                                                                                
             }
             
          }
          
          // Gamepad:
          if(SetupGamepad){
          
             switch(SetupGPadID){
                    case 0:{
                    draw_text(320/2, 32, string_hash_to_newline("CHANGE YOUR#KEYBOARD AND GAMEPAD SETTINGS!"))  
                    draw_text(320/2, 224/2, string_hash_to_newline("PRESS ANY KEY#FOR ( UP )"))    
                    
                    var _i;
                        _i = gamepad_get_button_pressed(global.Controller_Input_Found)
                    if(_i != 0 && SetupCanEnter == 1){
                       global.Controller_Up = _i;
                       _i = 0;                       
                       SetupCanEnter = 0;
                       SetupGPadID++
                    }
                                            
                    break;
                    }
                    
                    case 1:{
                    draw_text(320/2, 32, string_hash_to_newline("CHANGE YOUR#KEYBOARD AND GAMEPAD SETTINGS!"))  
                    draw_text(320/2, 224/2, string_hash_to_newline("PRESS ANY KEY#FOR ( DOWN )"))    
                    
                    var _i;
                        _i = gamepad_get_button_pressed(global.Controller_Input_Found)
                    if(_i != 0 && SetupCanEnter == 1){
                       global.Controller_Down = _i;
                       _i = 0;                       
                       SetupCanEnter = 0;
                       SetupGPadID++
                    }
                                           
                    break;
                    }
                    
                    case 2:{
                    draw_text(320/2, 32, string_hash_to_newline("CHANGE YOUR#KEYBOARD AND GAMEPAD SETTINGS!"))  
                    draw_text(320/2, 224/2, string_hash_to_newline("PRESS ANY KEY#FOR ( LEFT )"))    
                    
                    var _i;
                        _i = gamepad_get_button_pressed(global.Controller_Input_Found)
                    if(_i != 0 && SetupCanEnter == 1){
                       global.Controller_Left = _i;
                       _i = 0;                       
                       SetupCanEnter = 0;
                       SetupGPadID++
                    }
                                             
                    break;
                    }
                    
                    case 3:{
                    draw_text(320/2, 32, string_hash_to_newline("CHANGE YOUR#KEYBOARD AND GAMEPAD SETTINGS!"))  
                    draw_text(320/2, 224/2, string_hash_to_newline("PRESS ANY KEY#FOR ( RIGHT )"))    
                    
                    var _i;
                        _i = gamepad_get_button_pressed(global.Controller_Input_Found)
                    if(_i != 0 && SetupCanEnter == 1){
                       global.Controller_Right = _i;
                       _i = 0;                       
                       SetupCanEnter = 0;
                       SetupGPadID++
                    }
                                             
                    break;
                    }                    
                    
                    case 4:{
                    draw_text(320/2, 32, string_hash_to_newline("CHANGE YOUR#KEYBOARD AND GAMEPAD SETTINGS!"))  
                    draw_text(320/2, 224/2, string_hash_to_newline("PRESS ANY KEY#FOR ( ACTION )"))    
                    
                    var _i;
                        _i = gamepad_get_button_pressed(global.Controller_Input_Found)
                    if(_i != 0 && SetupCanEnter == 1){
                       global.Controller_Action = _i;
                       _i = 0;                       
                       SetupCanEnter = 0;
                       SetupGPadID++
                    }
                                             
                    break;
                    }
                    
                    case 5:{
                    draw_text(320/2, 32, string_hash_to_newline("CHANGE YOUR#KEYBOARD AND GAMEPAD SETTINGS!"))  
                    draw_text(320/2, 224/2, string_hash_to_newline("PRESS ANY KEY#FOR ( SPECIAL )"))    
                    
                    var _i;
                        _i = gamepad_get_button_pressed(global.Controller_Input_Found)
                    if(_i != 0 && SetupCanEnter == 1){
                       global.Controller_Special = _i;
                       _i = 0;                       
                       SetupCanEnter = 0;
                       SetupGPadID++
                    }
                                            
                    break;
                    }                                       
                    
                    case 6:{
                    draw_text(320/2, 32, string_hash_to_newline("CHANGE YOUR#KEYBOARD AND GAMEPAD SETTINGS!"))  
                    draw_text(320/2, 224/2, string_hash_to_newline("PRESS ANY KEY#FOR ( ENTER )"))    
                    
                    var _i;
                        _i = gamepad_get_button_pressed(global.Controller_Input_Found)
                    if(_i != 0 && SetupCanEnter == 1){
                       global.Controller_Enter = _i;
                       _i = 0;                       
                       SetupCanEnter = 0;
                       SetupGPadID++
                    }
                                           
                    break;
                    }
                    
                    case 7:{                  
                    SetupGPadID  = 0;    
                    SetupGamepad = 0;
                                                      
                    break;
                    }
                                                                                
             }
             
          }
                    
       }
       
     // Volume Setup:
       if(SetupProcess == 3){
          draw_set_color(c_white)
          draw_set_halign(fa_center)
          draw_set_font(global.Font_Letters)
          
             // Ask for character.
             draw_text(320/2, 32, string_hash_to_newline("CHANGE THE VOLUMES?"))
          
             // Menu Options:
             if(SetupMID == 1){
                draw_set_color(c_yellow)
             }else{
                draw_set_color(c_white)
             }  draw_text(320/2, 224/2, string_hash_to_newline("BACKGROUND MUSIC "+string( max(floor(global.MaxBGMV*100),min(0))) + "%"));
          
             if(SetupMID == 2){
                draw_set_color(c_yellow)
             }else{
                draw_set_color(c_white)
             }  draw_text(320/2, 224/2+32, string_hash_to_newline("SOUND EFFECTS "+string( max(floor(global.MaxSFXV*100),min(0))) + "%"));
             
             if(SetupMID == 3){
                draw_set_color(c_yellow)
             }else{
                draw_set_color(c_white)
             }  draw_text(320/2, 224/2+64, string_hash_to_newline("CONTINUE"))
                       
             draw_set_color(c_white) 
             draw_set_halign(-1)

       }       

     // Character Setup:
       if(SetupProcess == 4){
          draw_set_color(c_white)
          draw_set_halign(fa_center)
          draw_set_font(global.Font_Letters)
          
             // Ask for character.
             draw_text(320/2, 32, string_hash_to_newline("WHICH CHARACTER WOULD#YOU LIKE TO USE?"))
          
             // Menu Options:
             if(SetupMID == 1){
                draw_set_color(c_blue)
             }else{
                draw_set_color(c_white)
             }  draw_text(320/2, 224/2-32, string_hash_to_newline("SONIC THE HEDGEHOG"))
          
             if(SetupMID == 2){
                draw_set_color(c_yellow)
             }else{
                draw_set_color(c_white)
             }  draw_text(320/2, 224/2-16, string_hash_to_newline("MILES TAILS PROWER"))
             
             if(SetupMID == 3){
                draw_set_color(c_red)
             }else{
                draw_set_color(c_white)
             }  draw_text(320/2, 224/2, string_hash_to_newline("KNUCKLES THE ECHIDNA"))
                                                     
             if(SetupMID == 4){
                draw_set_color(c_purple)
             }else{
                draw_set_color(c_white)
             }  draw_text(320/2, 224/2 + 16, string_hash_to_newline("AMY ROSE"))
             
             if(SetupMID == 5){
                draw_set_color(c_maroon)
             }else{
                draw_set_color(c_white)
             }  draw_text(320/2, 224/2 + 32, string_hash_to_newline("MIGHTY THE ARMADILLO"))
			 
			 if(SetupMID == 6){
                draw_set_color(c_orange)
             }else{
                draw_set_color(c_white)
             }  draw_text(320/2, 224/2 + 48, string_hash_to_newline("RAY THE FLYING SQUIRREL"))
          
             draw_set_color(c_white) 
             draw_set_halign(-1)

       }     
	   
	   // Level Setup:
       if(SetupProcess == 5) {
			draw_set_color(c_white)
			draw_set_halign(fa_center)
			draw_set_font(global.Font_Letters)
          
			// Ask for level.
			draw_text(320/2, 32, string_hash_to_newline("LEVEL SELECT"))
			
			// Menu Options:
            if(SetupMID == 1){
				draw_set_color(c_yellow)
            }else{
				draw_set_color(c_white)
            }  
			 
			draw_text(320/2, 224/2-32, string_hash_to_newline("SKY STATION"))
			
			if(SetupMID == 2){
				draw_set_color(c_yellow)
            }else{
				draw_set_color(c_white)
            }  
			 
			draw_text(320/2, 224/2-16, string_hash_to_newline("STAR STATION"))
			
			if(SetupMID == 3){
				draw_set_color(c_yellow)
            }else{
				draw_set_color(c_white)
            }  
			 
			draw_text(320/2, 224/2-0, string_hash_to_newline("TECHNOLOGY TREE"))
			
			if(SetupMID == 4){
				draw_set_color(c_yellow)
            }else{
				draw_set_color(c_white)
            }  
			 
			draw_text(320/2, 224/2+16, string_hash_to_newline("BOSS ZONE"))
			
			if(SetupMID == 5){
				draw_set_color(c_yellow)
            }else{
				draw_set_color(c_white)
            }  
			 
			draw_text(320/2, 224/2+32, string_hash_to_newline("TEST ZONE"))
			
			draw_set_color(c_white) 
            draw_set_halign(-1)
	   }



