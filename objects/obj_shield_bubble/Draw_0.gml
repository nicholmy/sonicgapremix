/// @description  Draw the shield.
    if(Parent.Invincibility < 1.5){
       draw_sprite_ext(sprite_index, -1, floor(Parent.x), floor(Parent.y+ShieldOffset), 1, 1, Parent.AnimationAngle, c_white, Parent.Alpha);
    }

