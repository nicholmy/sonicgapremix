/// @description  Set the application name.
    
    if(window_get_caption() != GameTitle){
            window_set_caption(GameTitle);
    }

    

/// Change the Screen size.
    if(keyboard_check_pressed(vk_f4) == true){
    
       // Increase the Screen size variable:
          if(global.ScreenSize < 4){
             global.ScreenSize++
          }else{
             global.ScreenSize = 1;
          }
          
       // Modify the Screen size:
          switch(global.ScreenSize){
                 case 1:{ window_set_size(global.ScreenWidth,   global.ScreenHeight);   window_set_fullscreen(0); alarm[0] = 1; break }
                 case 2:{ window_set_size(global.ScreenWidth*2, global.ScreenHeight*2); alarm[0] = 1; break }
                 case 3:{ window_set_size(global.ScreenWidth*3, global.ScreenHeight*3); alarm[0] = 1; break }          
                 case 4:{ window_set_size(global.ScreenWidth,   global.ScreenHeight);   alarm[0] = 1; window_set_fullscreen(1); break }                           
          }
       
    }

    if(keyboard_check_pressed(vk_escape) == true){
       game_end()
    }

/// Restart Game.
    if(keyboard_check_pressed(vk_f2) == true){
       game_restart();
    }

