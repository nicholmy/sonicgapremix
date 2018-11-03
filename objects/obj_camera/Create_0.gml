/// @description  Set up Variables.
  
 // Width/Height:
    _W = global.ScreenWidth;
    _H = global.ScreenHeight;
    
 // Set view:
    __view_set( e__VW.Object, 0, id );
    __view_set( e__VW.HBorder, 0, _W/2 );
    __view_set( e__VW.VBorder, 0, _H/2 );

 // Create a rectangle around the subject that the subject must exceed before the camera will move. Like the Genesis games!
    Cam_LeftBorder   = x-8;
    Cam_RightBorder  = x+8;
    Cam_TopBorder    = y-32;
    Cam_BottomBorder = y+32;

 // Additional
    Cam_Subject    = par_character; // who is the camera following? (most often it's the player)
    Cam_CameraLock = false;         // whether the cam is locked from moving
    
 // Limits. You can can't go outside these boundaries 
    Cam_LeftLimit   = 0;
    Cam_RightLimit  = room_width;
    Cam_TopLimit    = 0;
    Cam_BottomLimit = room_height;

 // Camera Binding:   
    Cam_BindX = false;
    Cam_MinX = 0;
    Cam_MaxX = room_width;
    
 // Camera Lag:
    Cam_Lag = 0;

 // Define Camera Position. We used temp variables xx and yy to help with Shifting while looking up/down etc
    Cam_XX = x;
    Cam_YY = y;

 // Shifting variables:
    Cam_ShiftX     = 0; // Camera Shift X Value.
    Cam_ShiftY     = 0; // Camera Shift Y Value.
    Cam_ShiftSpeed = 4; // Shifting speed.
    
 // Speed at wich to change target/subject
    Cam_ChangeSpeed = 6.5;

 // Special functions.
    Camera_ShakeScreen   = false;              // If enabled, the screen will shake as long as _ShakeDuration is above 0.
    Camera_ShakeDuration = 0;                  // How many frames the Shaking lasts.
    Camera_ShakeForce    = 0;                  // The force of the Shake, 2 to 3 is a good number, everything above 3 is a strong shake.
    Camera_ShakeSound    = snd_object_crumble; // If not set to noone, the game will loop this sound until the shake is over.
    Camera_DebugDisplay  = true;              // Displays Debug Graphics.         



