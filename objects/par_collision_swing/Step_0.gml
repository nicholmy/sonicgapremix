/// @description  Swing Movement.
    var Temp;
    Temp = AngleMov+AngleSpd;
    AngleMov = scr_character_wrap_angle(Temp);

    if(AngleMov > AngleVal){
       AngleSpd -= 0.051; 
    }
    if(AngleMov < AngleVal){
       AngleSpd += 0.051; 
    }


