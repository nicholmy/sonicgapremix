/// @description  Loop Points.

    if(CheckSound(global.BGMID) == true && (global.BGMLoopStart != -1 && global.BGMLoopEnd != -1)){
       if(audio_sound_get_track_position(global.BGMID) >= global.BGMLoopEnd-global.BGMLoopDelay){
          audio_sound_set_track_position(global.BGMID, global.BGMLoopStart);
       }
    }


