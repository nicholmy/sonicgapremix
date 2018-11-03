/// @description  Control Variables

YOrigin     = sprite_get_height(sprite_index) / 2; // Center of the Logo sprite.
XText       = room_width / 2;
TextWidth   = sprite_get_width(spr_flicky_text); // Width of the text part of the logo.

x        = room_width / 2;         // Set the initial position of the logo to be
y        = room_height + YOrigin;  // at the bottom center of the screen.
xstart   = x;
ystart   = y;

TTimer   = 0; // Tween timer.
BGAlpha  = 0;

alarm[0] = 30; // Wait 30 frames before showing the logo.

state    = 0;



