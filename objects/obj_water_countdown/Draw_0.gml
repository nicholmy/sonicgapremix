/// @description  Draw.

    i = Parent;
    if(instance_exists(i)){
       if(i.Action != ActionDie){
          if(image_index = 1 || image_index = 3 || image_index = 5 || image_index = 7
          || image_index = 9 || image_index = 11){
             if((global.ObjectTime div 60) mod 3){
                draw_sprite(sprite_index, image_index, floor(i.x), floor(i.y-54));
             }
          }else{
             draw_sprite(sprite_index, image_index, floor(i.x), floor(i.y-54));
          }
       }
    }else{
       if(image_index = 1 || image_index = 3 || image_index = 5 || image_index = 7
       || image_index = 9 || image_index = 11){
          if((global.ObjectTime div 60) mod 3){
             draw_sprite(sprite_index, image_index, floor(x), floor(y));
          }
       }else{
          draw_sprite(sprite_index, image_index, floor(x), floor(y));
       }    
    }
   
    

