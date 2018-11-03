/// @description  Shoot and everything else.

    CharCheck = instance_exists(par_character);
    CharNear  = instance_nearest(x, y, par_character);
    if(CharCheck != false){
       if(distance_to_object(instance_nearest(x, y, CharNear) < 80)){
          if(ShootTimer > 0){
             ShootTimer--;
          }else{
             ShootTimer  = 80;
             alarm[0]    = 1;
             PlaySound(snd_object_projectile, global.SFXVolume, 1, 1);
             Spike = instance_create(x, y-10, obj_npc_sth3_bloominator_spike){
                  if(CharNear.x < x) with(Spike) { hspeed = -1;             vspeed = -6; gravity = 0.3}
                  else
                  if(CharNear.x > x) with(Spike) { hspeed =  1;             vspeed = -6; gravity = 0.3}   
                  else   
                  if(CharNear.x = x) with(Spike) { hspeed = choose(1, -1);  vspeed = -6; gravity = 0.3}                                 
             }
          }
       }
    }

