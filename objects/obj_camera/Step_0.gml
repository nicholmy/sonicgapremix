/// @description  Camera Shake.
    if(Camera_ShakeScreen = true){
       if(Camera_ShakeDuration != 0){
          /*if(CheckSound(Camera_ShakeSound) == false){
             LoopSound(Camera_ShakeSound, global.SFXVolume, 1);
          }*/
          Camera_ShakeDuration--         
       }else{
          /*if(CheckSound(Camera_ShakeSound) == true){
             StopSound(Camera_ShakeSound);
          }*/      
          Camera_ShakeScreen = false;   
          Camera_ShakeForce  = 0; 
       }
    }

/// Camera lag timer.
    if(Cam_Lag > 0){
       Cam_Lag -= 3;
    }else{
       Cam_Lag = 0;
    }

