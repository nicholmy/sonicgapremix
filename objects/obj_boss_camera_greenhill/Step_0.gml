/// @description Spawn the boss and lock camera when in focus
// You can write your code in this editor

if (!hasBossSpawned) {
	// Handle Boss Camera
	if(rectangle_in_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ))){
	    with(obj_camera){
	        Cam_Subject    = obj_boss_camera_greenhill;
	        Cam_LeftLimit  = Cam_Subject.x-__view_get( e__VW.WView, 0 )/2;
	        Cam_RightLimit = Cam_Subject.x+__view_get( e__VW.WView, 0 )/2;
	    }
		  
		  
		obj_audio_manager.MajorBossFade = true;
		
		instance_create(x, y, bossToSpawn);
		bossToSpawn.isSpawnFrame = 1;
		bossToSpawn.isActive = 1;
	
		hasBossSpawned = true;
		
		
	}
}