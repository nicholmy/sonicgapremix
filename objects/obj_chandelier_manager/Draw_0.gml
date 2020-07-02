/// @description Draw the base and chain
// You can write your code in this editor
var dist = (platform.y- 16 - y);
var chainNum = dist / 16;
var chainGap = dist / chainNum;

for (var i = 0; i < chainNum; i++) {
	draw_sprite_ext(spr_chandelier_chain, 0, x, platform.y - 16 - i * chainGap, image_xscale, image_yscale, 0, c_white, image_alpha)
}

draw_sprite_ext(spr_chandelier_top, 0, x, y, image_xscale, image_yscale, 0, c_white, image_alpha)
draw_sprite_ext(spr_chandelier_bottom_detail, 0, x, platform.y-16, image_xscale, image_yscale, 0, c_white, image_alpha)

