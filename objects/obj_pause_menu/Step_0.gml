/// @description  Slide to the center of the view and darken the background.
   
    if(Finished == false){
        _alpha += (0.5-_alpha)*0.05;
       _x      += (global.ScreenWidth/2-_x)*0.25;
    }else{
       _alpha += (0-_alpha)*0.10;
       _x     += (global.ScreenWidth+100-_x)*0.10; 
       if(_x >= global.ScreenWidth+64){
          instance_destroy();
       }
    }
    

/// Change and select options.

 // Change Options:
    if(keyboard_check_pressed(global.Key_DOWN) && Option_ID != 3){
       Option_ID++
       PlaySound(snd_object_switch, global.SFXVolume, 1, 1);
    }else if(keyboard_check_pressed(global.Key_DOWN) && Option_ID == 3){
       Option_ID = 1;
       PlaySound(snd_object_switch, global.SFXVolume, 1, 1);       
    }
    if(keyboard_check_pressed(global.Key_UP) && Option_ID != 1){
       Option_ID--
       PlaySound(snd_object_switch, global.SFXVolume, 1, 1);       
    }else if(keyboard_check_pressed(global.Key_UP) && Option_ID == 1){
       Option_ID = 3;
       PlaySound(snd_object_switch, global.SFXVolume, 1, 1);       
    }    
    
 // Choose Options:
    if(keyboard_check_pressed(global.Key_ACTION)){
       if(Option_ID == 1){
          keyboard_key_press(global.Key_ENTER);
       }
       if(Option_ID == 2){
          if(instance_exists(par_fade) == false){
             keyboard_key_press(global.Key_ENTER);
             Restart = true;
          }
       }  
       if(Option_ID == 3){
          if(instance_exists(par_fade) == false){
             instance_create(0, 0, obj_fade_end);
          }
       }             
    }

