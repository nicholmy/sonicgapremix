/// @description  Variables.

    ChainSize = sprite_get_height(ChainSprite); // Size of the Chain.
    AngleVal  = 270;
    AngleMov  = AngleVal;                       // How much the swing moves.
    _X        = x;                              // X used for chains.
    _Y        = y-(ChainSize*Chains);           // Y used for chains.
    AngleSpd  = 3;                              // How fast the platform swings.
    XPrevious = x;                              // Previous X position.
    XRelative = x;                              // Relative X Position.
    YRelative = y;                              // Relative Y Position.

