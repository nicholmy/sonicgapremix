/// @description  Everything.
          
    // Exit:
       if(Finished == true){
          exit
       }
    
      if(rectangle_in_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ))){
         obj_camera.Cam_Subject = Camera;
         obj_camera.Cam_LeftLimit  = __view_get( e__VW.XView, 0 ); 
         obj_camera.Cam_RightLimit = Camera.x+__view_get( e__VW.WView, 0 )/2;  
      }       
      
    // Spin:
       if(SpinActivated){
       
          // Spin the Sign every 2 frames:
             if(SpinDuration != 0){
                if(SpinTimer != 0){
                   SpinTimer -= 1;
                }else{
                   SpinTimer    = 2;
                   image_index += 1;
                   if(SpinDuration mod 4 == 0){
                      scr_create_dummy_effect(spr_invincibility_sparkle, 0.6, x-24+(irandom_range(0, 3)*16), y-48+(irandom_range(0, 2)*16), 1, -1);
                   }
                }
             }
             
          // Spin as long as the SpinDuration variable is above 0:
             if(Drop == false){
                if(SpinDuration != 0){
                   SpinDuration -= 1;
                }else{
                   SpinDuration  = 0;
                   if(image_index != par_character.CharacterID*4){
                      image_index  = par_character.CharacterID*4;
                      with(par_character){
                           GoalState = 1;
                           
                      }                      
                      if(instance_exists(obj_scoring_results) == false){
                         Tally = instance_create(x, y, obj_scoring_results);
                         if(SpecialFlag == true){
                            Tally.SpecialFlag = true;
                            Finished          = true;
                         }                            
                      }
					  
					  // Start the palette change!
						if (instance_exists(obj_SkySanctuary_BGTall)) {
							obj_SkySanctuary_BGTall.alarm[0] = 60;
						}
                   }
                }
             }
       }

    // Drop:
       if(place_meeting(x, y + YSpeed, par_collision_solid) && YSpeed > 0){ 
          while(!place_meeting(x, y + sign(YSpeed), par_collision_solid)){ 
                y += sign(YSpeed);
          } 
          Drop   = false;
          XSpeed = 0;
          YSpeed = 0;
          event_user(0);
       }
       if(Drop == true){
          YSpeed += fallGrav 
          if(YSpeed > 4){
             YSpeed = 4;
          }
          y  += YSpeed;
          if(SpinActivated == false){
             SpinActivated = true;
          }
       }
       
    // Bounce:
       if(instance_exists(par_character) && Drop == true){
          if(place_meeting(x, y-1, par_character) and YSpeed > 0 and par_character.YSpeed < 0){
             if(par_character.Action == ActionJump){
                YSpeed  = par_character.YSpeed;
                XSpeed  = (x - par_character.x)/6;
                /*if(CheckSound(snd_object_signpost) == false){
                   PlaySound(snd_object_signpost, global.SFXVolume, 1, 1);
                }*/
				
				PlaySound(snd_object_bumper, global.SFXVolume, 1, 1);          
				var scoreEffect = instance_create(x, y-1, obj_effect_score);
				scoreEffect.image_index = 0;
                global.Score += 10;
             }
          }
		  /*if(par_character.y > y and YSpeed > 0 and par_character.YSpeed < 0){
             if(par_character.Action == ActionJump){
                YSpeed  = par_character.YSpeed;
                XSpeed  = (x - par_character.x)/6;
                if(CheckSound(snd_object_signpost) == false){
                   PlaySound(snd_object_signpost, global.SFXVolume, 1, 1);
                }
             }
          }*/
       }
       if(Drop == true){
          if(x < __view_get( e__VW.XView, 0 )+sprite_width/2){
             XSpeed = 2;
          }  
          if(x > __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-sprite_width/2){
             XSpeed = -2;
          }              
          x += XSpeed; 
          }     

    // Update Camera position (for dropping)
       if(SpecialFlag != 0){    
          //Camera.y = y-80;
       }          

