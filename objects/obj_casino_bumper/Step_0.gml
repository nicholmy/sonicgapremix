/// @description  Animate and give Score.

    if(BumperState == 0){
       image_index  = 0;
    }else{
       image_index = 1;
       if(alarm[0] = -1){
          alarm[0] = 5;
          PlaySound(snd_object_bumper, global.SFXVolume, 1, 1);          
          // Give Score:
             if(ScoreGiven != 10){
                ScoreGiven++
                global.Score += 10;
             }
       }
    }


