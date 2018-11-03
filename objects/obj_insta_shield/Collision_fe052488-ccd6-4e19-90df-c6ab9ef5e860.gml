// Bounce: 
   var NewSpeed =  sqrt(sqr(other.hspeed) + sqr(other.vspeed));
   var NewAngle =  point_direction(id.x, id.y, other.x, other.y);
   other.hspeed =  dcos(NewAngle) * NewSpeed;
   other.vspeed = -dsin(NewAngle) * NewSpeed;
   
   

