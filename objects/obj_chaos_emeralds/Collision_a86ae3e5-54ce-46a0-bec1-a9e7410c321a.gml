/// @description  Collect Chaos emerald.
    
    if(other.Action != ActionDie){
       if(Collected = false){
          Collected = true;    
          global.Emeralds++;
          PlaySound(snd_object_emerald, global.SFXVolume, 1, 1);
          instance_destroy();       
       }
    }


