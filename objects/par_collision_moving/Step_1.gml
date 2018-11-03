/// @description  Handle the moving platform & character position.

var i, PreviousX, PreviousY;
PreviousX = x;
PreviousY = y;

//Set Horizontal/Vertical Speed:
if(XSpd < X_DCSpeed) {
   X_DCSpeed -= 0.025
}else if(XSpd > X_DCSpeed) {
   X_DCSpeed += 0.025
} 
if(YSpd < Y_DCSpeed) {
   Y_DCSpeed -= 0.025
} else if(YSpd > Y_DCSpeed) {
   Y_DCSpeed += 0.025
}

HorSpd +=  X_DCSpeed;
VerSpd += -Y_DCSpeed;

// Activate:
Activated = true;

//Set the X/Y Position:
x = floor(RelativeX+HorSpd); 
y = floor(RelativeY-VerSpd); 
       
    // Change the X/Y Position of the Character standing on this platform:
       i = 0;
       repeat(instance_number(par_character)){
              CharMain = par_character;
              if(instance_exists(CharMain) == false){
                 i++
                 continue;
              }
              if(CharMain.Action != ActionDie){
                 if(CharMain.Ground == true && CharMain.OnMoving = id){
                    CharMain.x += (x-PreviousX);
                    CharMain.y  = ((y-sprite_yoffset)-PlatformOffset);
                 }
              }
              i++
       }




