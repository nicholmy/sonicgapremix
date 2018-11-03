/// @description Run Things

if(isActive == 0) {
	/*// Handle Boss Camera
	if(rectangle_in_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ))){
        with(obj_camera){
            Cam_Subject    = obj_boss_camera_greenhill;
            Cam_LeftLimit  = Cam_Subject.x-__view_get( e__VW.WView, 0 )/2;
            Cam_RightLimit = Cam_Subject.x+__view_get( e__VW.WView, 0 )/2;
        }
		  
		  
		obj_audio_manager.MajorBossFade = true;
		isSpawnFrame = 1;
		isActive = 1;
    }*/
} else {
	// Handle Getting Hit
	if(State == "Hit" && HP != 0){
       if(InvTime > 0){
          InvTime --
       }else{
          State   = HitReturnState;
          InvTime = 60;         
       }
    }else if(State == "Hit" && HP < 1){
             State = "Defeated";
    }
	
	/// Boss is defeated.
  
    if(State == "Defeated"){
       if(DefTime > 0){
          if(DefTime mod 8 == 0){
             scr_create_dummy_effect(spr_boss_explosion, 0.2, x-random(50)+35, y-15+random(40), 1, -1);
             PlaySound(snd_object_destroy, global.SFXVolume, 1, 0);  
         }         
         DefTime --
       }else{      
           
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

    if(State != "Defeated"){
       if(rectangle_in_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ))){
          with(obj_camera){
               Cam_Subject    = obj_boss_camera_greenhill;
               Cam_LeftLimit  = Cam_Subject.x-__view_get( e__VW.WView, 0 )/2;
               Cam_RightLimit = Cam_Subject.x+__view_get( e__VW.WView, 0 )/2;
          }
		  
		  
		  if (isActive == 0) {
			  obj_audio_manager.MajorBossFade = true;
		  }
		  isActive = 1;
       }
	   x += XSpeed;
	   y += YSpeed;
    }
}