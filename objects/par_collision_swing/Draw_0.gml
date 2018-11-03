/// @description  Draw Chains and platform.

    draw_sprite(ChainSpriteTop, 0, _X, _Y);
    XRelative = _X;
    YRelative = _Y;
    repeat(Chains-1){
           XRelative = XRelative+(cos(degtorad(AngleMov))*ChainSize);
           YRelative = YRelative-(sin(degtorad(AngleMov))*ChainSize);    
           draw_sprite(ChainSprite, 0, floor(XRelative), floor(YRelative));   
    }

// Draw Platform:
   draw_sprite(sprite_index, 0, floor(x), floor(y));

