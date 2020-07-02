/// @description  (Un)Pause Game. & Activate Instances
/// @param Un

    
    if(global.DoTime == true && instance_exists(par_fade) == false && !instance_exists(obj_game_over)){
    
       // Check if we pressed Pause:
          if(keyboard_check_pressed(global.Key_ENTER)){
           
             // Pause the Game:   
                if(GamePaused == false && GamePBG == noone && instance_exists(obj_pause_menu) == false){
                   GamePaused = true;
                   GamePBG    = background_create_from_surface(application_surface, 0, 0, global.ScreenWidth, global.ScreenHeight, 0, 0);
                   instance_deactivate_all(1);
                   audio_pause_all();                   
                   if(global.BonusStage == false){
                      instance_create(0, 0, obj_pause_menu);
                      instance_activate_object(obj_pause_menu)
                   }
                   instance_activate_object(obj_global_manager)                  
                   exit;
                }
                
             // Unpause the Game:
                if(GamePaused == true && GamePBG != noone){            
                   background_delete(GamePBG);
                   GamePaused = false;
                   GamePBG    = noone;
                   instance_activate_all();
                   audio_resume_all();  
                   if(instance_exists(obj_pause_menu)){
                      with(obj_pause_menu){
                           Finished = true;
                      }
                   }
                   exit;                 
                }
             
          }
    
    } 



/// Destroy instances outside the view.

    // We don't need any of this in a Bonus Stage:
    // So only run it when we're in an actual stage.
       if(global.BonusStage == false && GamePaused == false){
    
    // Deactivate all objects:
       instance_deactivate_all(true);
       
    // Activate instances:
       instance_activate_object(par_controller);
        
    // Activate instances inside the view:
       for(i=0; i<8; i+= 1){
           if(__view_get( e__VW.Visible, i ) == false){
              break;
           }
              instance_activate_region(__view_get( e__VW.XView, i ) - 80, __view_get( e__VW.YView, i ) - 80, __view_get( e__VW.WView, i ) + 80, __view_get( e__VW.HView, i ) + 80, true)
       }
    
    // Activate instances in a specific region while the character is moving fast.
       if(instance_exists(par_character)){
          for(i=0; i<instance_number(par_character); i+=1){
              var _Ext, _Pl;
                  _Pl  = instance_find(par_character, i);
                  _Ext = max(abs(_Pl.XSpeed) * 3, abs(_Pl.YSpeed) * 3)
                         instance_activate_region((_Pl.x - __view_get( e__VW.WView, 0 ) div 2) + min(-_Ext, 0),
                                                  (_Pl.y - __view_get( e__VW.HView, 0 ) div 2) + min(-_Ext, 0), 
                                                  (__view_get( e__VW.WView, 0 )) + max(_Ext, 0),
                                                  (__view_get( e__VW.HView, 0 )) + max(_Ext, 0),
                                                  true);                
          }
       } 
    
    // Special case, when instances HAVE to be loaded:
       instance_activate_object(par_bridge);
       instance_activate_object(par_collision_pushable);
       instance_activate_object(obj_sth3_switch);
       instance_activate_object(par_collision_swing);
       instance_activate_object(par_collision_collapse);
       instance_activate_object(par_collision_collapse_tiles); 
       instance_activate_object(par_collision_moving);
	   instance_activate_object(par_gimmick_extendchain);
	   instance_activate_object(obj_hanginglift_hook);
	   instance_activate_object(par_obj_debris);
	   instance_activate_object(obj_polepod_spawner);
	   instance_activate_object(obj_polepod_outside);
	   instance_activate_object(obj_polepod_inside);
	   instance_activate_object(obj_polepod_door);
	   instance_activate_object(obj_polepod_stopper);
	   instance_activate_object(par_door);
	   instance_activate_object(obj_rock_spawner_big);
	   instance_activate_object(obj_wackyspinner_pole);
	   instance_activate_object(obj_buzzsaw_trap);
	   instance_activate_object(obj_buzzsaw_trigger);
       instance_activate_object(obj_buzzsaw_end);
	   instance_activate_object(spr_npc_sth3_bloominator_spike);
	   instance_activate_object(obj_swingingclaw_short);
	   instance_activate_object(obj_swingingclaw_claw);
	   //instance_activate_object(obj_chandelier_manager);
       }
       


    

