/// @description  Gamepad Input.
//  Note:
//  When input is given with your Gamepad, it actually simulates and hits keys of your Keyboard.

          if(global.Controller_Input_Found != -1){
          
          // Deadzone:
             gamepad_set_axis_deadzone(global.Controller_Input_Found, global.Controller_Deadzone);
                    
             if(gamepad_button_check(global.Controller_Input_Found, global.Controller_Up)){
                keyboard_check(global.Key_UP)
             }
             if(gamepad_button_check_pressed(global.Controller_Input_Found, global.Controller_Up)){
                keyboard_key_press(global.Key_UP)
             }          
             if(gamepad_button_check_released(global.Controller_Input_Found, global.Controller_Up)){
                keyboard_key_release(global.Key_UP)
             }     
                       
          // Down:
             if(gamepad_button_check(global.Controller_Input_Found, global.Controller_Down)){
                keyboard_check(global.Key_DOWN)
             }
             if(gamepad_button_check_pressed(global.Controller_Input_Found, global.Controller_Down)){
                keyboard_key_press(global.Key_DOWN)
             }          
             if(gamepad_button_check_released(global.Controller_Input_Found, global.Controller_Down)){
                keyboard_key_release(global.Key_DOWN)
             }    
                       
          // Left:
             if(gamepad_button_check(global.Controller_Input_Found, global.Controller_Left)){
                keyboard_check(global.Key_LEFT)
             }
             if(gamepad_button_check_pressed(global.Controller_Input_Found, global.Controller_Left)){
                keyboard_key_press(global.Key_LEFT)
             }          
             if(gamepad_button_check_released(global.Controller_Input_Found, global.Controller_Left)){
                keyboard_key_release(global.Key_LEFT)
             }    
                       
          // Right:
             if(gamepad_button_check(global.Controller_Input_Found, global.Controller_Right)){
                keyboard_check(global.Key_RIGHT)
             }
             if(gamepad_button_check_pressed(global.Controller_Input_Found, global.Controller_Right)){
                keyboard_key_press(global.Key_RIGHT)
             }          
             if(gamepad_button_check_released(global.Controller_Input_Found, global.Controller_Right)){
                keyboard_key_release(global.Key_RIGHT)
             }              
          
          // Action:
             if(gamepad_button_check(global.Controller_Input_Found, global.Controller_Action)){
                keyboard_check(global.Key_ACTION)
             }
             if(gamepad_button_check_pressed(global.Controller_Input_Found, global.Controller_Action)){
                keyboard_key_press(global.Key_ACTION)
             }          
             if(gamepad_button_check_released(global.Controller_Input_Found, global.Controller_Action)){
                keyboard_key_release(global.Key_ACTION)
             }                    
             
          // Special:
             if(gamepad_button_check(global.Controller_Input_Found, global.Controller_Special)){
                keyboard_check(global.Key_SPECIAL)
             }
             if(gamepad_button_check_pressed(global.Controller_Input_Found, global.Controller_Special)){
                keyboard_key_press(global.Key_SPECIAL)
             }          
             if(gamepad_button_check_released(global.Controller_Input_Found, global.Controller_Special)){
                keyboard_key_release(global.Key_SPECIAL)
             }      
                        
          // Enter/Pause:
             if(gamepad_button_check(global.Controller_Input_Found, global.Controller_Enter)){
                keyboard_check(global.Key_ENTER)
             }
             if(gamepad_button_check_pressed(global.Controller_Input_Found, global.Controller_Enter)){
                keyboard_key_press(global.Key_ENTER)
             }          
             if(gamepad_button_check_released(global.Controller_Input_Found, global.Controller_Enter)){
                keyboard_key_release(global.Key_ENTER)
             }  
             
       }

       
       


