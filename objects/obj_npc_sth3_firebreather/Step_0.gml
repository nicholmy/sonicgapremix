/// @description  Boss is hit.

    if(Boss_State == "Hit" && Boss_HP != 0){
       if(Boss_InvTime > 0){
          Boss_InvTime --
          image_speed  = 1/4;
       }else{
          Boss_State   = "Normal";
          Boss_InvTime = 60;
          image_speed  = 0;
          image_index  = 0;          
       }
    }else if(Boss_State == "Hit" && Boss_HP < 1){
             Boss_State = "Defeated";
    }
    

/// Boss Fire.

    if(Boss_FireTime > 0 && Boss_Moving = 0 && (Boss_State == "Normal" || Boss_State == "Hit" )){
       Boss_FireTime--
       if(Boss_FireTime <= 18){
          if((Boss_FireTime mod 6) == 0){
             ID = instance_create(x+Boss_Direction*32, y+4, obj_npc_sth3_firebreather_projectile)
             ID.image_speed = 0.2;
             ID.XSpd        = Boss_Direction*4;              
          }
       }
       if(Boss_FireTime == 18){
          if(CheckSound(snd_object_fire) == false){
             PlaySound(snd_object_fire, global.SFXVolume, 1, 1);
          }
       }
    }
    if(Boss_FireTime < 1){
       Boss_FireTime = choose(180, 240);
    }


/// Boss is defeated.
  
    if(Boss_State == "Defeated"){
       if(Boss_DefTime != 0){
          if(Boss_DefTime mod 8 == 0){
             scr_create_dummy_effect(spr_boss_explosion, 0.2, x-random(50)+35, y-15+random(40), 1, -1);
             PlaySound(snd_object_destroy, global.SFXVolume, 1, 0);  
             if(instance_exists(obj_npc_sth3_firebreather_flame)){
                with(obj_npc_sth3_firebreather_flame){
                     instance_destroy();
                }
             }
         }         
         Boss_DefTime --
       }else{      
           
       // Create Broken Parts and reset camera.
          for(i=0; i<4; i++){
              Part[i] = instance_create(x, y, obj_npc_sth3_firebreather_parts);
              Part[i] . image_xscale = Boss_Direction;
              Part[i] . image_index = i;
              Part[i] . Direction   = Boss_Direction;
          }

       // Reset Camera:
          with(obj_camera){
               //Cam_Subject    = instance_nearest(x, y, par_character);
			   Cam_Subject    = par_character;
               Cam_LeftLimit  = 0;
               Cam_RightLimit = room_width;
          }       
          obj_audio_manager.UpdateActMusic = true;
       // Destroy:  
          instance_destroy();
          
       }       
    }

/// Boss Camera.

    if(Boss_State != "Defeated"){
       if(rectangle_in_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ))){
          with(obj_camera){
               Cam_Subject    = obj_boss_firebreather_camera;
               Cam_LeftLimit  = Cam_Subject.x-__view_get( e__VW.WView, 0 )/2;
               Cam_RightLimit = Cam_Subject.x+__view_get( e__VW.WView, 0 )/2;
          }
		  
		  
		  if (Active == 0) {
			  alarm[0] = 20;				 // Start Movement.
			  obj_audio_manager.MajorBossFade = true;
		  }
		  Active = 1;
       }
    }

/// Boss Float.

    if(Boss_State != "Defeated"){
       if(Boss_Moving == 0 || Boss_Moving = 3 || Boss_Moving = 4){
          Boss_AngRadius +=3
          y = Boss_AngPosition+lengthdir_y(6, Boss_AngRadius)
       } else if (Boss_Moving == 1) {
		  y = y + Boss_MoveSpeed;
	   } else if (Boss_Moving == 2) {
		  y = y - Boss_MoveSpeed;
	   }
    }

