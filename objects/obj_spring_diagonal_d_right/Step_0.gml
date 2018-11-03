/// @description  Change the springs frame.
    if(Frame != 0 && FrameTimer != 0){
       if(FrameTimer != 0){
          FrameTimer -= 1;
       }
       if(FrameTimer == 5){
          Frame      = 1;
       }else if(FrameTimer == 0){
                Frame       = 0;
                FrameTimer  = 0;
       }
    }


