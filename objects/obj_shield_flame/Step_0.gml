/// @description  Set the X/Y Position.

    if(Parent.Action != ActionJump && Parent.Action != ActionRolling){
       x = floor(Parent.x);
       y = floor(Parent.y);
    }else{
       x = floor(Parent.x);
       y = floor(Parent.y+4);   
    }

/// Change Layer and animate the Shield.

    if(Drawing_Layer == "fore"){
       depth  = Parent.depth - 1;
    } 
    if(Drawing_Layer == "back"){
       depth  = Parent.depth;
    }
    
    if(Shield_State == "default"){
       if(image_index > 0){
          Drawing_Layer = "back";
       }
       if(image_index > 9){
          Drawing_Layer = "fore";
       }
    }
    
    // Change animation and set the speed:
       if(Shield_State == "default"){
          sprite_index  = spr_shield_flame;
          Drawing_Speed = 0.6;
          image_speed   = Drawing_Speed;
          image_xscale  = 1;
       }
       
       if(Shield_State == "dash"){
          sprite_index  = spr_shield_flame_action;       
          Drawing_Speed = 0.6;
          image_speed   = Drawing_Speed;
          if(image_xscale == 0){
             image_xscale  = Parent.AnimationDirection; 
             Drawing_Layer = "fore";                  
          }  
       }       

