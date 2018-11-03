/// @description  Variables.

	Active			 = 0;
    Boss_HP          = 6;        // How many hits it takes until defeated.
    Boss_State       = "Normal"; // State of the boss. 'Normal' > 'Hit' > 'Destroyed'
    Boss_InvTime     = 60;       // Invuln. Frames.
    Boss_DefTime     = 60;       // How long it takes until fully destroyed. (used to spawn explosions)
    Boss_FireTime    = 180;      // When to fire.
    Boss_Direction   = -1;       // Direction the boss is facing.
    Boss_Moving      = 0;        // Movement of the boss. (0 = Idle, 1 = Down, 2 = Up, 3 = Left, 4 = Right)
    Boss_MoveSpeed   = 2;
	Boss_AngRadius   = 0;        // Used to float.
    Boss_AngPosition = ystart; 
    image_speed      = 0; 
	
    
 // Create Flame:
    instance_create(x, y, obj_npc_sth3_firebreather_flame)


