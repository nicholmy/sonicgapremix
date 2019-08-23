with (other) {
/// Create and define most common character values.

   // Set the Chracter ID:
      CharacterID    = global.Character_1; // Who we're playing as.
      CharacterState = CharacterNormal;    // State of our Character, either Normal (Default), Super or Hyper.
      CharacterType  = IsPlayable;         // Is Playable or AI?
      
   // Horizontal Speed Values:
      XSpeed          = 0;        // The current horizontal speed.
      XSpeed_Top      = 6;        // Characters top horizontal speed when on flat ground.
      XSpeed_Max      = 16;       // Fastest the Character can move horizontally.
      GSpeed          = 0;        // Temp. Variable to store X or Y Speed.       
      XAcceleration   = 0.046875; // Horizontal acceleration and friction when on ground.
      XDeceleration   = 0.5;      // Horizontal deceleration when opposite input is held.
      XSlopeFactor    = 0.125;    // Rate at which the character slows down when moving up slopes. //0.5;
      AirAccel        = 0.09375   // Acceleration value in air.
      _Accel          = 0;        // Temp. acceleration variable.
      _Decel          = 0;        // Temp. deceleration variable.
      _Fric           = 0;        // Temp. friction variable.
      SpeedLimit      = false;    // Whether or not we limit the Horizontal Speed.
      Allow_XMovement = true;     // Whether or not we allow the Horizontal movement.
      SpeedShoeTimer  = 900;      // How long Speed shoes last.       
      
   // Vertical Speed Values:
      YSpeed         = 0;        // The current vertical speed.
      YSpeed_Max     = 16;       // Fastest the player can move/fall vertically.
      YAcceleration  = 0.21875;  // The force of gravity applied to the character while ion the air.
      YAccel_Common  = 0.21875;  // Common/Default force of acceleration. In case we have to reset it quickly.
      ConversionFact = 1;        // Speed conversion when landing on ground.
      AirLimit       = true;     // Whether or not we limit the Vertical Speed.
      AirTimer       = 0;        // Checks how long we're in the air.
      Allow_YMovement = true;    // Whether or not we allow the Vertical movement.

   // Other movement variables
      XSample        = 13;       // Pixel limit to divide horizontal movement; ignored if 0 or less
      YSample        = 13;       // Pixel limit to divide vertical movement; ignored if 0 or less

   // Terain interaction:
      Ground              = false;    // Checks if the character has/is grounded.
      Landed              = false;    // Checks if the character just landed this frame.
      PlatformCheck       = false;    // Checks if the character has landed on a platform.
      PlatformCheckTimer  = 30;       // Used to reset the Platform check. Prevents that the character looses collision.
      OnSwing             = noone;    // Checks if the character is on a swinging platform.
      OnMoving            = noone;    // Checks if the character is on a moving platform.
      OnCollapse          = noone;    // Checks if the character is on a collapsing tile.
      AllowStuck          = noone;    // If true, this will prevent the "Stuck in terrain" code.
      Angle               = 0;        // Angle of the terrain.
      AngleRound          = 0;        // Rounded angle.
      RelativeAngle       = 0;        // Current angle relative to the gravity angle.    
      AngleHold           = 0;        // Used for smoothing angle values.
      AnimationAngle      = 0;        // Used to rotate the characters sprite.
      Layer               = 0;        // Characters collision layer. Used for loops and special paths.

   // Control Flags: 
      InputAlarm     = 0;        // Used for locking input temporarly when loosing speed on step slopes.
      AlarmDirection = 0;        // For the above variable, this one locks either the right or left key.
      InputLock_L    = 0;        // Is the left input locked?
      InputLock_R    = 0;        // Is the right input locked?
      InputLock_S    = 0;        // Is the input locked after using a spring?      
      LockTimer      = 0;        // Keep track how long the input is locked.
      LockControl    = 1;        // Looks the control.
      LockTunnel     = 0;        // Locks falling when inside a tunnel.      
      Launched       = 0;        // Whether or not we launched up in the air (using a slope)
      LaunchedTimer  = 0;        // Makes sure to disable any kind of horizontal force when being launched.
      JumpLock       = 0;        // Used to lock the jumping direction.
      AllowLookUp    = 1;        // Checks if we're allowed to look up.
      AllowLookDown  = 1;        // Checks if we're allowed to look down.
      UsedCorkscrew  = 0;        // Used after a Corkscrew to revert changes made to the character.
      
   // Special/Character Specific Abilities and flags:
      AbilityPeelout  = 1;       // Can we use the Peelout?
      PeeloutFlag     = 0;       // Checks if we're performing a peelout.
      PeeloutTimer    = 0;       // Has to be 12 to perform a peelout.
      AbilityGrind    = 0;       // Can we grind on rails?
      AbilityBoost    = 0;       // Can we boost?
      AbilityHoming   = 1;       // Can we perform a homing attack?
      HomingTable     = 0;       // Contains the objects we can target.
      HomingUsed      = 0;       // Checks if we're used a homing attack.
      AbilityTricks   = 0;       // Can we perform tricks?
      AbilityDropDash = 1;       // Can we perform a drop dash?
      DropDashFlag    = 0;       // Used to change the animation.
      DropDashTimer   = 15;      // How long it takes to charge the drop dash.
      DropDashSpeed   = 0;       // How strong the drop dash is. 
      
   // Camera:
      Offset_Up      = -104;     // How many pixels the camera will move up while looking up.
      Offset_Down    = 88;       // How many pixels the camera will mvoe down while crouching.
      Offset_Hor     = 60;       // Horizontal offset.
      TimerUp        = 0;        // Keeps track of how long the character has been looking up.
      TimerDown      = 0;        // Keeps track of how long the character has been looking down.
      TimerDash      = 0;        // Keeps track of how long the character has been spindashing.
      ShiftX         = 0;        // How much the camera shifts on the x-axis.
      PreviousX      = x;        // Previous X Position.
      PreviousY      = y;        // Previous Y Position.
      BindToCam      = false;    // Whether or not the character can leave the boundaries. 
             
   // World interaction:
      Underwater     = false;    // Checks if the character is underwater.
	  InSpace		 = false;	 // Checks if the character is in space.
      DrownTimer     = 1800;     // How long it takes (in frames) for the character to drown.
      DrownCounter   = -1;       // The number count down above the character while about to drown.
      BubbleTimer    = 0;        // How long the character is stuck in the breathing state after touching a bubble.
      BreathTimer    = 20;       // Needed for creating bubbles after we drowned.
      HasDrowned     = false;    // Checks if the Character has drowned.
      Invincibility  = 0;        // Check whether or not the character is invincible. (1 - When Hurt, 1.5 - When having a invincibility shield, 2 - When Super/Hyper)
      InvTimer       = 0;        // How long the invincibility last.
      Shield         = 0;        // The current shield of the Character.
      ShieldChild    = 0;        // Needed to destroy/change a shield.
      ShieldBackup   = 0;        // Used when in super/hyper form and getting a shield.
      ShieldUsable   = 0;        // Whether or not we can use a shield.
      ShieldAttack   = 0;        // Checks if we're attacking using a shield.
      FloorMode      = 0;        // Returns the floor mode.
       
   // Rendering:
      FramesCount     = 0;       // Used for various animations. Like count frames when no input is given and the character is doing nothing.
      FrameHold       = 0;       // Holds the number of a frame, used after the character turns back to normal after their super/hyper form.
      RenderingSpeed  = 0;       // Used to modify the speed of various animations.
      SnapTimer       = 0;       // Used to rotate the Character properly in 8°Mode.
      PalettePosition = 0;       // If we manipulate a sprites palette, this keeps track of the position.  
      Rotation_Animation = 0;    // Used when the character has to use a rotation animation (ex. corkscrew) 
      Rotation_Speed  = 0.25;    // Used for rotation animations.
      Rotation_Frame  = 0;       // Used for rotation animations, but if we manually want to change the frame.
      Alpha           = 1;       // The opacity of the characters sprite.
      XLen            = 1;       // The X Length value used for drawing sparks.
      YLen            = 0;       // The Y Length value used for drawing sparks.

   // State:
      Action         = 0;        // Keeps track of the current action/state.
      
   // Physic Modifications:
      PhysicMode     = "Normal"; // Whether we're using default physics, water physics or super physics.
      HasSpeedShoes  = false;    // Checks whether or not we got speed shoes.
   
   // Jumping:
      JumpStrength   = -6.5;     // Strength of the characters jump.
      JumpRelease    = -4;       // The minimum strength the character can jump.
      JumpHeightMod  = true;     // Whether or not we can modify the jump height.
      
   // Rolling:
      RollDec        = 0.3;       // Rolling deceleration.
      RollDecLight   = 0.0234375; // Deceleration when holding the forward direction.
      RollDecStrong  = 0.125;     // Deceleration when holding the opposite direction.
      Rolling_Deceleration_Up   = 0.078125; // Slope decel. factor when rolling up.
      Rolling_Deceleration_Down = 0.3125;   // Slope decel. factor when rollong down.
      
   // Spindash:
      SpindashAccumulator =  0;   // Spindash accumlator.
      SpindashAccumMax    =  12;  // Max. accumlator amount.
      SpindashAccumMin    =  8;   // Min. ammount needed to perform a spindash.
      SpindashPitch       =  0;   // How much the spindash sounds pitch gets increased.
      
   // Pushing:
      Pushing_Timer       = 0;    // Keeps track how long we're already trying to push.
      Pushing_Timer_Max   = 3;    // How long it takes to actually push.
      
   // Skidding:
      SkiddingFrames      = 80;   // How long you can skid.
      SkidDirection       = 1;
    
   // Goal:
      GoalState           = 0;    // Check if we're in our goal state. (Results)
      GoalTimer           = 5;    // Keeps track how many frames it takes to stop sonic from movement.
   
   // Flying:
      FlightTimer         = 0;
      FlightDuration      = 480;
      FlySoundTimer       = 0;
      FlySoundControl     = 0;      
      FlyFallControl      = 0

   // (Amy only) - Hammer and dif. Jumps.
      AmyHammerAttack    = 0;    // Sets the Hammer attack for Amy. (0 = No attack, 1 = Standing Attack, 2 = Running Attack, 3 = Air Attack)
      AmyRollJump        = 0;    // Used to change Amy's animation.
      AmyHammerJump      = 0;    // Used when doing a hammer jump.
      AmyDashDirection   = 0;    // Used when doing a hammer dash.
   
   // (Knuckles only) - Gliding and Climbing.
      GlideTopSpeed      = 24;   // Fastest Knuckles can move horizontally while gliding.
      GlideGravity       = .125; // The gravity while gliding.
      GlideCrouchTimer   = 25;   // How long knuckles stays in his crouched state.
      GlideTurn_S        = 0;    // Special variable for turning knuckles.
      GlideTurn_A        = 0;    // Special variable for turning knuckles.
      GlideTurn_D        = 0;    // Special variable for turnuing knuckles.
      ClimbOX            = 0;    // Position returns the x position when grabbing onto a wall. If the X value is lower/higher, stop climbing.
      ClimbSpeed         = 1;    // How fast Knuckles can climb a wall.
      ClimbFrameTimer    = 6;    // When 0, advance the frame of knuckles climb animation.
      IsLedgeGrabbing    = 0;    // Checks if we're ledge grabbing.
      
   // (Mighty only) - Hammer Drop, Wall Jump, and Spike Behavior
      HasSpikeTapped     = 0;	 // If true, Mighty won't bump off spikes from the bottom
	  SpikeTimer		 = 0;    // Cooldown before checking for spiky collision
	  
   // (Ray only) - Gliding
	  GlideAngle = 0;
	  GlideSpeed = 0;
	  GlideAngleDirection = -1;   // -1 = Gliding towards upwards angle, 1 = Gliding towards downwards angle
	  GlideAngleSpeed = 4;		  // This is done for a slightly more dramatic curve at the beginning
	  GlideBoost = 2;
	  GlidePeriodFactor = 2;
                        
   // Transforming
      AllowTransformation = 1;    // Checks if we can transform.
      TransformEnded      = 0;    // Checks if a transformation has ended. 
      if(CharacterID != CharacterKnuckles){
         TransformTimer      = 15;   // How long it takes to return to a normal stage.
      }else{
         TransformTimer      = 3;   // How long it takes to return to a normal stage.         
      }
         
   // Death:
      DeathTimer          = "NO"; // Dying timer.


}
/// Input Keys.

    // Keys:
       KeyUp               = false
       KeyDown             = false
       KeyRight            = false
       KeyLeft             = false
       KeyAction           = false
       KeySpecial          = false
       KeyEnter            = false
       
    // Key presses:
       KeyUp_Pressed       = false
       KeyDown_Pressed     = false
       KeyRight_Pressed    = false
       KeyLeft_Pressed     = false
       KeyAction_Pressed   = false
       KeySpecial_Pressed  = false
       KeyEnter_Pressed    = false   
       
    // Key releases:
       KeyUp_Released      = false 
       KeyDown_Released    = false
       KeyRight_Released   = false
       KeyLeft_Released    = false
       KeyAction_Released  = false
       KeySpecial_Released = false
       KeyEnter_Released   = false          


///Define Animation system.
   scr_animation_init();

/// Checkpoint Respawn & Bonus Stage Rewards.
    if(global.BonusStage == false){
       if(global.CheckpointX != -1 && global.CheckpointY != -1){
          x = global.CheckpointX;
          y = global.CheckpointY;
          if(global.BonusRings != 0){
             global.Rings     += global.BonusRings;
             global.BonusRings = 0;
          }
          if(global.BonusShield != 0){             
             Shield = global.BonusShield;
             global.BonusShield  = 0;
          }  
             global.Ring100Check_Deactivate = false;         
             
          // Update Camera position:
             obj_camera.x      = x;
             obj_camera.y      = y;     
             obj_camera.Cam_XX = x;
             obj_camera.Cam_XX = y;                              
       } else if (global.ZoneAct == 1) {
		   /*if (instance_exists(par_character_mightyspawn) && CharacterID == CharacterMighty) {
			   x = par_character_mightyspawn.x;
			   y = par_character_mightyspawn.y;
		   } else if (instance_exists(par_character_rayspawn) && CharacterID == CharacterRay) {
			   x = par_character_rayspawn.x;
			   y = par_character_rayspawn.y;
		   }*/
	   } else if (global.ZoneAct == 2) {
		   /*if (instance_exists(par_character_rayspawn2) && CharacterID == CharacterRay) {
			   x = par_character_rayspawn2.x;
			   y = par_character_rayspawn2.y;
			   
			   
		   }*/
	   }
    }


