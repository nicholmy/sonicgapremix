/// @description  Draw Rectangles.
    with(all){
    
         if(!(object_get_parent(object_index) == par_collision_solid or object_get_parent(object_index) == par_collision_platform)){      
         
         draw_set_alpha(0.5)
         if(object_get_name(object_index) == "par_character"){
            if(Layer == 0){
               draw_set_color(c_red)
            }else{
               draw_set_color(c_blue)
            }
         }else{         
         draw_set_color(c_maroon)
         }
         if(sprite_get_xoffset(sprite_index) == 0 && sprite_get_yoffset(sprite_index) == 0){
            draw_rectangle(x - 2, y - 2, x + sprite_get_width(sprite_index) + 2, y + sprite_get_height(sprite_index) + 2, true)
         }else{
            draw_rectangle(x - sprite_get_xoffset(sprite_index) - 2, y - sprite_get_yoffset(sprite_index) - 2, x + sprite_get_width(sprite_index)/2 + 1, y + sprite_get_height(sprite_index)/2 + 1, true)
         }
         if(visible == false){
            image_alpha = 0.25
            visible = true;
         }

         draw_set_color(c_white)   
         draw_set_alpha(1)    
         
         }
         
    }        


