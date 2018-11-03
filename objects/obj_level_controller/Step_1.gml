/// @description  Global Timers.

    if(global.BonusStage == false && GamePaused == false){
       if(global.DoTime > 0){
          if(global.GameTime < 599999){
             global.GameTime   += 1000/60;
          }else{
             global.GameTime = 599999
             if(instance_exists(par_character)){
                with(par_character){
                     Action = ActionDie;
                }
             }
          }
       }
    }
    
    if(GamePaused == false){
       global.ObjectTime += 1000/60;
    }



