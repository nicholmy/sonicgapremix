/// @description  Move text.
 
    if(GamePosition != (global.ScreenWidth/2)-sprite_get_width(spr_game_over)){
       GamePosition += ((global.ScreenWidth/2)-16-sprite_get_width(spr_game_over)/2-GamePosition)*0.10;
    }
    if(OverPosition != (global.ScreenWidth/2)+sprite_get_width(spr_game_over)){
       OverPosition += ((global.ScreenWidth/2)+16+sprite_get_width(spr_game_over)/2-OverPosition)*0.10;
    }

/// Count down.
  
    if(GameTimer > 0){
       GameTimer--
    }else{
       GameTimer = 0;
       if(instance_exists(obj_fade_game_restart) == false){
          instance_create(0, 0, obj_fade_game_restart);
       }
    }
    
    if(GameTimer < 60*6 && keyboard_check_pressed(global.Key_ENTER)){
       GameTimer = 0;
    }

