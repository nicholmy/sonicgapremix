/// @description  Shift the Camera Up or Down.

    // Only run this if we follow the Character:
       if(Cam_Subject == par_character){
          // Looking up:
          if(Cam_Subject.Action == ActionLookup && Cam_Subject.TimerUp >= 120)        
              Cam_ShiftY = max(-104, Cam_ShiftY-2);
          // Looking Down:
          else if(Cam_Subject.Action == ActionCrouch && Cam_Subject.TimerDown >= 120)       
              Cam_ShiftY = min(104, Cam_ShiftY+2);                  
          else
              Cam_ShiftY = max(0, abs(Cam_ShiftY)-2)*sign(Cam_ShiftY);      

          // Pan the camera horizintally if the character is using a peelout move.
             if((Cam_Subject.Action == ActionPeelout && Cam_Subject.PeeloutTimer > 6) || Cam_Subject.PeeloutFlag == 1){
                var _dir = sign(Cam_Subject.XSpeed + Cam_Subject.AnimationDirection);
                Cam_ShiftX = clamp((abs(Cam_ShiftX) + Cam_ShiftSpeed) * _dir, -64, 64);
             } else if (Cam_Subject.XSpeed >= 6 && Cam_ShiftX >= 0 && Cam_Subject.FloorMode == 0) {
				// Shift Right
				Cam_ShiftX = clamp((abs(Cam_ShiftX) + Cam_ShiftSpeed), -64, 64);
			 } else if (Cam_Subject.XSpeed <= -6 && Cam_ShiftX <= 0 && Cam_Subject.FloorMode == 0) {
				 // Shift Left
				Cam_ShiftX = clamp((abs(Cam_ShiftX) + Cam_ShiftSpeed) * -1, -64, 64);
			 } else {
				if (Cam_Subject.FloorMode != 0 || (Cam_ShiftX >= 0 && Cam_Subject.XSpeed < 4) || (Cam_ShiftX <= 0 && Cam_Subject.XSpeed > -4)) {
                Cam_ShiftX = max(0, abs(Cam_ShiftX)-Cam_ShiftSpeed)*sign(Cam_ShiftX); 
				}
             }
          
            if (Cam_Subject.Action == ActionHammerDrop && Cam_Subject.Landed == true) {
                Camera_ShakeScreen   = true;              // If enabled, the screen will shake as long as _ShakeDuration is above 0.
                Camera_ShakeDuration = 5;                // How many frames the Shaking lasts.
                Camera_ShakeForce    = 3;
            }
                           
       } else {
		   // Shift back automatically anyways
		   Cam_ShiftX = max(0, abs(Cam_ShiftX)-Cam_ShiftSpeed)*sign(Cam_ShiftX); 
	   }


///Main Camera Control

//Update borders
Cam_LeftBorder   = (Cam_XX-8) - (Cam_Lag);
Cam_RightBorder  = (Cam_XX+8) + (Cam_Lag);
Cam_TopBorder    = Cam_YY-32;
Cam_BottomBorder = Cam_YY+32;


//set up some local variables to make for neat-looking code
var VW = (__view_get( e__VW.WView, 0 ))/2;
var VH = (__view_get( e__VW.HView, 0 ))/2;


//Move the Camera
if Cam_Subject = par_character
{
    //1. HORIZTONAL MOVEMENT
    //if Player has exceed the right border, move the camera by the amount exceeded
    if (Cam_Subject.x > Cam_RightBorder && Cam_Subject.x <= (Cam_RightLimit-VW))
    {
        Cam_XX += min(abs(Cam_Subject.x-Cam_RightBorder),16);
    }
    
    //if Player has exceed the left border, move the camera by the amount exceeded
    if (Cam_Subject.x < Cam_LeftBorder+Cam_Lag && Cam_Subject.x >= (Cam_LeftLimit+VW))
    {
        Cam_XX -= min(abs(Cam_LeftBorder+Cam_Lag-Cam_Subject.x),16);
    }
    
    //2. VERTICAL MOVEMENT
    //in the air....
    if (Cam_Subject.Ground == false && Cam_Subject.Action != ActionDie)
    {
        //if Player has exceed the bottom border, move the camera by the amount exceeded
        if (Cam_Subject.y > Cam_BottomBorder && Cam_Subject.y < Cam_BottomLimit-VH)
        {
            Cam_YY += Cam_Subject.y-Cam_BottomBorder;
        }
        
        //if Player has exceed the top border, move the camera by the amount exceeded
        if (Cam_Subject.y < Cam_TopBorder && Cam_Subject.y > Cam_TopLimit+VH)
        {
            Cam_YY -= Cam_TopBorder-Cam_Subject.y;
        }
    }
    
    //on the ground
    if (Cam_Subject.Action == ActionHang || (Cam_Subject.Ground == true && Cam_Subject.Action != ActionDie))
    {
        //if player is not centered vertically
        if Cam_Subject.y != Cam_YY
        {
            //this creates the camera lag when you land after a jump
            if abs(Cam_Subject.y-Cam_Subject.yprevious) <= 6 //if sonic has only moved six of less pixels from the previous frame. The reason we use yprevious instead of YSpeed is because we have to account for slopes, in which Sonic technically moving vertically, despite his YSpeed being zero.
            {
                if (Cam_Subject.y > Cam_YY && Cam_Subject.y < Cam_BottomLimit-VH)
                Cam_YY += min(abs(Cam_Subject.y-Cam_YY),6);
                
                
                if (Cam_Subject.y < Cam_YY && Cam_Subject.y > Cam_TopLimit+VH)
                Cam_YY -= min(abs(Cam_YY-Cam_Subject.y),6);
            }
            
            //this keeps thing mostly centered when going on loops and slopes, though there is a limit... 
            //...if Sonic is moving vertically faster than 16 px, he will "outrun" the camera. this is denoted by the min function
            if abs(Cam_Subject.y-Cam_Subject.yprevious) > 6
            {
                if (Cam_Subject.y > Cam_YY && Cam_Subject.y < Cam_BottomLimit-VH)
                Cam_YY += min(abs(Cam_Subject.y-Cam_YY),16);
                
                
                if (Cam_Subject.y < Cam_YY && Cam_Subject.y > Cam_TopLimit+VH)
                Cam_YY -= min(abs(Cam_YY-Cam_Subject.y),16);
            }
        }
    }

}

//Otherwise, if the camera is not looking at the player, but at an NPC or something ( like a boss fight)
if (Cam_Subject != noone && Cam_Subject != par_character)
{
//if target is not centered horizontally
if Cam_Subject.x != Cam_XX
{

if (Cam_Subject.x > Cam_XX && Cam_XX <= Cam_RightLimit-VW)
    Cam_XX += min(abs(Cam_Subject.x-Cam_XX),Cam_ChangeSpeed);


if (Cam_Subject.x < Cam_XX && Cam_XX >= Cam_LeftLimit+VW)
    Cam_XX -= min(abs(Cam_XX-Cam_Subject.x),Cam_ChangeSpeed);
}



//if target is not centered vertically
if Cam_Subject.y != Cam_YY
{

if (Cam_Subject.y > Cam_YY && Cam_YY < Cam_BottomLimit-VH)
    Cam_YY += min(abs(Cam_Subject.y-Cam_YY),Cam_ChangeSpeed);


if (Cam_Subject.y < Cam_YY && Cam_YY > Cam_TopLimit+VH)
    Cam_YY -= min(abs(Cam_YY-Cam_Subject.y),Cam_ChangeSpeed);
}


}

///Update position
x = Cam_XX + Cam_ShiftX + random_range(-Camera_ShakeForce, Camera_ShakeForce); 
y = Cam_YY + Cam_ShiftY + random_range(-Camera_ShakeForce, Camera_ShakeForce);






