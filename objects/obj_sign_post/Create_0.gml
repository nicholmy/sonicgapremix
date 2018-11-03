/// @description  Variables.
 
    Camera         = instance_create(x, y-80, obj_sign_post_camera)
    SpinActivated  = false;              // Whether or not to spin.
    SpinDuration   = 128;                // How many frames the Sign post spins.
    SpinTimer      = 2;                  // How many frames it takes to change the animation frame.
    SpinCharacter  = 0;                  // Required to correctly display the last frame.
    Drop           = 0;                  // Is the sign dropping?
    SpecialFlag    = isNextActPost;                  // Creates a different result object if true.
    XSpeed         = 0;                  // Horizontal speed of the sign post.
    YSpeed         = 0;                  // Vertical speed of the sign post.
    Finished       = 0;                  // Used when special flag is set to 1. Checks if this signpost is useless.
    image_speed    = 0;                  // You know what this does.



