/// @description  Get into special stage.
if(instance_exists(obj_fade_bonus) == false && accframe = 10){
   instance_create(par_character.x, par_character.y, obj_fade_bonus)
   with(par_character){
        if(Underwater == true){
           DrownTimer = 1800;
           if(CheckSound(obj_audio_manager.Jingle_Drowning) == true){ 
               if(Invincibility < 1.5){
                  global.BGMVolume = global.MaxBGMV;
                  LoopSound(obj_audio_manager.ZoneBGM, global.BGMVolume, 1);                     
               }
                  StopSound(obj_audio_manager.Jingle_Drowning);
           }           
        }
   }
}

if(accframe < 10){
   accframe ++
}

