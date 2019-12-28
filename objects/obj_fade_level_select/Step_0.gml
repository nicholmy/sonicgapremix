/// @description  Update Colors.

//  Red:
    if(ColorRed < 255){
       ColorRed += 20; 
    }

//  Green:
    if(ColorGreen < 255 && ColorRed > 255/2.5){
       ColorGreen += 20;
    }
        
//  Red:
    if(ColorBlue < 255 && ColorGreen > 255/2.5){
       ColorBlue += 20;
    }

//  End the transition:
    if(ColorBlue == 255){
       if(image_alpha < 1){
          image_alpha += 0.050;
       }else{
         StopSound_All()
         instance_destroy()
       }
    }


