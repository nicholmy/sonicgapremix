/// @description  Change Alpha.
    if(Alpha > 0){
       Alpha   -= .1;
       alarm[0] =  1;
    }else{
       instance_destroy();
    }


