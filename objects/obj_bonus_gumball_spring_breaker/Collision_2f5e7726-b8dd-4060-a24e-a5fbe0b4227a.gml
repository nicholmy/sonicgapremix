/// @description  Destroy and Break tiles.
    if(instance_exists(par_collision_collapse) && alarm[0] = -1){
       with(par_collision_collapse){
            alarm[0] = 45;          
       }
    }
    alarm[0] = 60;


