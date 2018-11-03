/// @description  Activate.
    if(Activated = false && Finished = false){

       if(global.CheckpointX != x && global.CheckpointY != y){
          Activated = true;
          PlaySound(snd_object_checkpoint, global.SFXVolume, 1, 1)
          global.CheckpointX = x;
          global.CheckpointY = y-5;
          global.CheckpointT = global.GameTime;
          
          // Bonus Stage:
             if(global.Rings >= 25){
                instance_create(x, y-75, obj_bonus_spark)
             }
             
       }else{
          Finished        = true;
          sprite_index    = spr_starpost_activated
          image_speed     = 1/4;
          global.GameTime = global.CheckpointT;
       }
       
    }
    

