/// @description Insert description here
// You can write your code in this editor
if (state == 0) {
	draw_sprite_ext(spr_springboard_right, 0, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
} else {
	draw_sprite_ext(spr_springboard_right, 1, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
}