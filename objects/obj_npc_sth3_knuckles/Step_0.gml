/// @description  States.
 
 // Idle:
    if(Knuckles_State = "Idle"){
       if(image_index > 6){
          image_index = 0;
       }
       image_index += 0.15;
       if(alarm[0] = -1){
          alarm[0] = choose(120, 60, 60, 120);
       }
    }
 
 // Punch:
    if(Knuckles_State = "Punch"){
       if(image_index >= 12){
          Knuckles_State = "Idle";       
       }
       image_index += 0.15;
    }
    
 // Spindash:
    if(Knuckles_State = "Spindash"){
       if(image_index > 19){ 
          PlaySound(snd_character_spindash_charge, global.SFXVolume, 1+_Pitch, 1);
          if(_Pitch < 1){
             _Pitch+=0.10;
          } 
          image_index = 14;
          Knuckles_SpindashTimer--;
       }
       if(Knuckles_SpindashTimer == 0){
          Knuckles_SpindashTimer = 6;         
          Knuckles_State         = "Roll";
          Knuckles_XSpeed        = Knuckles_Direction*6;
          _Pitch                 = 0;
          image_index            = 20;
          PlaySound(snd_character_spindash_release, global.SFXVolume, 1, 1);           
       }       
       if(image_index < 14){
          image_index += 0.15;
       }else{
          image_index += 0.50;
       }
    }
    
 // Roll:
    if(Knuckles_State = "Roll"){
       if(image_index < 20 || image_index > 27){
          image_index = 20;
       }
       image_index += 0.50;
    }
 
 // Glide (Jump)
    if(Knuckles_State = "Glide"){
       if(Knuckles_GlideState < 1){
          Knuckles_GlideState += 0.05;
          if(Knuckles_GlideState == 0.25){
             image_index = 13;
          }else if(Knuckles_GlideState == 0.75){
                   image_index = 12;
          }else if(Knuckles_GlideState >= 0.95){
                   PlaySound(snd_character_jump, global.SFXVolume, 1, 1);
                   Knuckles_Ground = false;
                   Knuckles_YSpeed = -6;
          }
       }else{
         if(Knuckles_GlideState == 1 && Knuckles_YSpeed < 0){
            if(image_index < 20 || image_index > 27){
               image_index = 20;
            }
            image_index += 0.50;            
         }else{
            Knuckles_GlideState  = 2;
            image_index = 29;
         }
         if(Knuckles_GlideState = 2){
            Knuckles_GlideAccel += 0.015625;
            Knuckles_XSpeed      = Knuckles_Direction*4+Knuckles_GlideAccel;
         }
         if(Knuckles_GlideState = 2 && ((Knuckles_XSpeed < 0 && x < __view_get( e__VW.XView, 0 )+sprite_get_width(sprite_index)*2) || (Knuckles_XSpeed > 0 && x > __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-sprite_get_width(sprite_index)*2))){
            Knuckles_State      = "Drop";                
            Knuckles_XSpeed     = Knuckles_XSpeed*0.25;  
            Knuckles_GlideState = 0;
            Knuckles_GlideTimer = 60;
         }
       }
    }
 
 // Drop:
    if(Knuckles_State = "Drop"){
       if(Knuckles_Ground != 1){
          if(image_index != 31){
             image_index += 0.10;
          }
       }else{
         if(image_index > 15){
            image_index = 12;
            Knuckles_XSpeed = 0;
            PlaySound(snd_character_land, global.SFXVolume, 1, 1);
         }
         if(image_index < 14){
            image_index += 0.15;
         }else{
            Knuckles_State  = "Idle";
         }
       }
    }
   
 // Hurt.
    if(Knuckles_State = "Hurt"){
       if(Knuckles_HP != 0){
          if(image_index != 28){
             image_index         = 28;       
             Knuckles_Ground     = false;    
             Knuckles_GlideState = 0;                 
             Knuckles_XSpeed     = -Knuckles_Direction*2;
             Knuckles_YSpeed     = -4;                      
          }
       }else if(Knuckles_HP < 1){
          if(image_index < 32){
             image_index         = 32;       
             Knuckles_Ground     = false;    
             Knuckles_GlideState = 0;                 
             Knuckles_XSpeed     = -Knuckles_Direction*2;
             Knuckles_YSpeed     = -4;  
             if(CheckSound(bgm_knuckles_fight) == true){
                StopSound(bgm_knuckles_fight);
             }
          }        
       }
    }
   
    if(Knuckles_InvTime < 60){
       Knuckles_InvTime--
    }
    if(Knuckles_InvTime <= 0){
       Knuckles_InvTime = 60;
    }
    
 // Switch Direction:
    if(Knuckles_State == "Idle"){
       if(par_character.x > x){
          Knuckles_Direction = 1;
       }
       if(par_character.x < x){
          Knuckles_Direction = -1;
       }       
    }   
    
 // Glide Accel & Timer:
    if(Knuckles_State != "Glide"){
       Knuckles_GlideAccel = 0;
       Knuckles_GlideTimer = 60;
    }    
    
 // Fix Alarm:
    if(Knuckles_State != "Idle"){
       if(alarm[0] != -1){
          alarm[0]  = -1;
       }
    }

/// Collision & Horizontal & Vertical Movement.

 // Collision:
    if(place_meeting(x, y + Knuckles_YSpeed, par_collision_solid)){ 
       while(!place_meeting(x, y + sign(Knuckles_YSpeed), par_collision_solid)){ 
             y += sign(Knuckles_YSpeed);
       } 
       Knuckles_YSpeed = 0;       
       Knuckles_Ground = 1;
    // When hit:
       if(Knuckles_State == "Hurt" && Knuckles_HP != 0){
          Knuckles_InvTime = 59;
          Knuckles_XSpeed  = 0;         
          Knuckles_State   = "Glide";
       }else if(Knuckles_State == "Hurt" && Knuckles_HP = 0){
                Knuckles_XSpeed = 0;   
                Knuckles_YSpeed = 0;      
                if(floor(image_index) != 34){
                   image_index += 0.15;
                }else{
                   image_index = 34;
                }
       }
    }else{
     // Gravity:
       if(Knuckles_GlideState != 2){
          Knuckles_YSpeed += 0.21875 
       }else{
          Knuckles_YSpeed  = 0;
       }
       Knuckles_Ground = 0;
    }
    if(Knuckles_GlideState != 2){    
       y += Knuckles_YSpeed; 
    }        
    
 // Hit Borders:
    if(Knuckles_XSpeed < 0 && x < __view_get( e__VW.XView, 0 )+sprite_get_width(sprite_index)/2){
       if(Knuckles_State = "Roll"){
          Knuckles_State     = "Idle";
          Knuckles_Direction = -Knuckles_Direction;
          Knuckles_XSpeed    = 0;
       }
       if(Knuckles_GlideState == 2){
          Knuckles_State      = "Drop";
          Knuckles_XSpeed     = 0;
          Knuckles_Direction = -Knuckles_Direction;
          Knuckles_GlideState = 0;     
          Knuckles_GlideTimer = 0;               
       }       
       x = __view_get( e__VW.XView, 0 )+sprite_get_width(sprite_index)/2
       
    }    
    if(Knuckles_XSpeed > 0 && x > __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-sprite_get_width(sprite_index)/2){
       if(Knuckles_State = "Roll"){
          Knuckles_State     = "Idle";
          Knuckles_Direction = -Knuckles_Direction;
          Knuckles_XSpeed    = 0;          
       }
       if(Knuckles_GlideState == 2){
          Knuckles_State      = "Drop";
          Knuckles_XSpeed     = 0;
          Knuckles_Direction  = -Knuckles_Direction;
          Knuckles_GlideState = 0;          
          Knuckles_GlideTimer = 0;
       }           
       x = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-sprite_get_width(sprite_index)/2;
    }   
     
 // Update positions:   
    x += Knuckles_XSpeed;
    
    
    

/// Camera lock.
 
    if(Knuckles_HP != 0){
       if(rectangle_in_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ))){
          with(obj_camera){
               Cam_Subject    = instance_nearest(x, y, obj_boss_camera);
               Cam_LeftLimit  = Cam_Subject.x-__view_get( e__VW.WView, 0 )/2;
               Cam_RightLimit = Cam_Subject.x+__view_get( e__VW.WView, 0 )/2;
          }
    
          // Loop Boss Theme.
             if(CheckSound(bgm_knuckles_fight) == false){
                LoopSound(bgm_knuckles_fight, global.SFXVolume, 1)
             }                 
       }
    }else{
		if (DeadFlag == false) {
          with(obj_camera){
               Cam_Subject    = par_character;
               Cam_LeftLimit  = 0;
               Cam_RightLimit = room_width;
          }
		  DeadFlag = true;
		}
    }

