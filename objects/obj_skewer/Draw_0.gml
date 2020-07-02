/// @description State is various lengths
// You can write your code in this editor
if (state == 0) {
	draw_sprite_ext(spr_skewer_short, 0, x, y, image_xscale, image_yscale, rotAngle, c_white, image_alpha);
} else if (state == 1) {
	draw_sprite_ext(spr_skewer_mid, 0, x, y, image_xscale, image_yscale, rotAngle, c_white, image_alpha);
} else {
	draw_sprite_ext(spr_skewer_long, 0, x, y, image_xscale, image_yscale, rotAngle, c_white, image_alpha);
}