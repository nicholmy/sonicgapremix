/// @description  Update Colors.

//  Red:
    if(ColorRed < 255){
       ColorRed += 15;
    }

//  Green:
    if(ColorGreen < 255 && ColorRed > 255/2.5){
       ColorGreen += 15;
    }
        
//  Red:
    if(ColorBlue < 255 && ColorGreen > 255/2.5){
       ColorBlue += 15;
    }

//  End the transition:
    if(ColorBlue == 255 && State == 1){
       if(image_alpha < 1){
          image_alpha += 0.1;
       }else{
          State = 2;
       }
    }
    
    if(State = 2){
       if(image_alpha != 0){
          image_alpha -= 0.025;
       }else{
          instance_destroy();
       }
    }

    Scale += 5;

