/// @description  Logo States
switch(state)
{
    case 1: // Move the Flick icon to the center of the screen.
    {
        y = scr_tween_quad_out(TTimer, ystart, (room_height / 2) - ystart, 45);
        if (TTimer < 45)
            ++TTimer;
        else
        {   // Play the iconic(tm) flicky chrip.
            PlaySound(snd_object_flicky_logo, global.SFXVolume, 1, 1);
            TTimer  = 0;
            xstart  = x;
            state   = 2;
        }
        break;
    }
    case 2:
    {   // Small pause between the chirp and the text entrance.
        if (alarm[0] <= 0)
            alarm[0] = 24;
        break;
    }
    case 3:
    {   // Start showing the Flicky Engine text.
        x = scr_tween_quad_out(TTimer, xstart, -72, 16);
        XText = scr_tween_quad_out(TTimer, x, (x + YOrigin - 4) - x, 16);   
        if (TTimer < 16)
            ++TTimer;
        else
        {   // Wrapping things up.
            TTimer   = 0;
            alarm[0] = 72;
            state    = 4;
        }
    }
}

if(state == 5){
   // Increase BG Alpha.
   if(BGAlpha != 1.5){
      BGAlpha += .010;
   }else if(BGAlpha >= 1.4) {
        x     += 16
        XText += 16
        if (TTimer < 16)
            ++TTimer;
        else
        {   // Done
               if(instance_exists(obj_fade_next) == false){
                  instance_create(0, 0, obj_fade_next);
               }
        }
   }
}

