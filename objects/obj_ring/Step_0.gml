/// @description  Animation Speed.
   if(InMotion == 0){
      image_index = global.ObjectTime div 120;
   }
   
   if(InMotion == 1 && RingTimer > 120){
      image_index = global.ObjectTime div 80;
   }
      
   if(InMotion && RingTimer < 120){   
      image_index = global.ObjectTime div 200;   
   }

/// Movement.

    // Get Attracted to the rings:
       Char = instance_nearest(x, y, par_character);
       if(Char){
          if(Char.Shield == ShieldElectricity){
             DistanceToChar = distance_to_object(Char);
             if(DistanceToChar < 80){
                IsAttracted = 1;
             }
          }else{
                IsAttracted = 0;
          }
          
             // While Attracted, move towards the character:
                if(IsAttracted == 1){
                   AngleToChar = degtorad(point_direction(x, y, Char.x, Char.y));
                   XSpeed      = min(8, max(-8, XSpeed+cos(AngleToChar)*0.5));
                   YSpeed      = min(8, max(-8, YSpeed-sin(AngleToChar)*0.5));                                      
                }
                      
       }

    // Move if the ring is in motion:
       
       // Apply X Force:
          x += XSpeed + cos(AngleToChar)*IsAttracted;
          
          if(InMotion == true){
          
             // Set Mask:
                mask_index = spr_ring_mask_ver;
             
             // Unstuck and bounce when we collide with walls:
                if(XSpeed > 0 && place_meeting(x + 6, y, par_collision_solid))     ||
                   XSpeed < 0 && place_meeting(x - 6, y, par_collision_solid)      ||
                   XSpeed > 0 && place_meeting(x + 6, y, par_collision_obstacles)  ||
                   XSpeed < 0 && place_meeting(x - 6, y, par_collision_obstacles)  {
                   
                   // Unstick from the wall:
                      x -= XSpeed;
                      
                   // Bounce and lose strength:
                      XSpeed = -XSpeed * 0.9;
                }
             
          }
       
       // Apply Y Force:
          y += YSpeed + sin(AngleToChar)*IsAttracted;
          
          if(InMotion == true){
          
             // Set Mask:
                mask_index = spr_ring_mask_hor;
                          
             // Unstuck and bounce when we collide with walls:
                if(YSpeed > 0 && place_meeting(x, y + 6, par_collision_solid))     ||
                   YSpeed < 0 && place_meeting(x, y - 6, par_collision_solid)      ||
                   YSpeed > 0 && place_meeting(x, y + 6, par_collision_obstacles)  ||
                   YSpeed < 0 && place_meeting(x, y - 6, par_collision_obstacles)  {
                   
                   // Unstick from the wall:
                      y -= YSpeed;
                      
                   // Bounce and lose strength:
                      YSpeed = -YSpeed * 0.9;
                }
                 
             // Apply Gravity:
                YSpeed += GravityForce;
              
             // Destroy if the timer runs out:
                if(RingTimer > 0) RingTimer -= 1;
                if(RingTimer < 1) instance_destroy();   
             
          }


