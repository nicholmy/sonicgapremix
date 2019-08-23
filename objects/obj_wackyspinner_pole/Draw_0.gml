/// @description Use the palette
// Palette: (Only if we allow Shaders)
if(global.Shaders != 0){
	pal_swap_set(spr_wackyspinner_palette, floor(PalettePosition), false);
}

draw_sprite(spr_wackyspinner_pole, 0, x, y);

if(global.Shaders != 0){
    pal_swap_reset()
}