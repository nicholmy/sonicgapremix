/// @description Use the palette
// Palette: (Only if we allow Shaders)
if(global.Shaders != 0){
	pal_swap_set(spr_electricshock_palette, floor(PalettePosition), false);
}


draw_sprite(spr_electricshocker_yellow_upsidedwn, image_index, x, y);

if(global.Shaders != 0){
    pal_swap_reset()
}