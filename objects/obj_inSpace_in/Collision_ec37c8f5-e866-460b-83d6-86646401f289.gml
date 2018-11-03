/// @description Stop the Space Countdown
if (other.Underwater) {
	other.Underwater = false;
	other.InSpace = false;
	PhysicMode     = "Normal";
	other.DrownTimer = 1800;
	
    if(instance_exists(other.DrownCounter)){
        instance_destroy(other.DrownCounter);
    } 
		
	if(CheckSound(obj_audio_manager.Jingle_Drowning) == true){ 
        if(other.Invincibility < 1.5){
            LoopSound(obj_audio_manager.ZoneBGM, global.BGMVolume, 1);   
            global.BGMVolume = global.MaxBGMV;
        }
        StopSound(obj_audio_manager.Jingle_Drowning);
    }
}