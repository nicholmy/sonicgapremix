/// @description  Change Image.

 // Exit:
    if(image_index = 11) exit;
    
 // Everything else.
    if(image_index = 0 || image_index = 2 || image_index = 4 || image_index = 6 
    || image_index = 8 || image_index = 10){  
       alarm[0] = 115;
    }

    if(image_index = 1 || image_index = 3 || image_index = 5 || image_index = 7
    || image_index = 9){
       alarm[0] = 5;
    }


    image_index++

