/// @description  End it.

    if(GoingOut = 0){
       if(GoOff_2 < 0){
          GoOff_2 += 20;
          alarm[5] = 1;
       }
    }else{
       if(SpecialFlag == false){
          if(instance_exists(obj_fade_level_select) == false){
             //instance_create(x, y, obj_fade_level_select);
			 instance_create_layer(x, y, layer_get_id("Manager_Layer"), obj_fade_level_select)
          }
       }else{
          if(instance_exists(par_character)){
             with(par_character){ 
                  GoalState   = 2;
                  LockControl = 0;
             }
             global.GameTime = 0;
             global.DoTime   = 1;
			 
          }
		  
          Act2Disappear = true;          
          global.ZoneAct++;
		  global.CheckpointX = x;
		  global.CheckpointY = y;
          
		  TCard = instance_create(0, 0, obj_title_card_controller)
          TCard.SpecialFlag        = true;  
		  
		  if(instance_exists(obj_audio_manager)){
			  with(obj_audio_manager){ 
				  //Play the next act's music
				  obj_audio_manager.alarm[1] = 1;
			  }
		  }
       }
    }


