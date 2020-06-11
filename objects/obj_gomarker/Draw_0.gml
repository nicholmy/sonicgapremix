/// @description Draw and Animate

if (!isSpinning) {
	sprite_index = sprite784;
	image_speed = 1
	draw_sprite(sprite784, image_index, x, y)
} else {
	sprite_index = sprite785;
	image_speed = spinSpeed / 4.0;
	draw_sprite(sprite785, image_index, x, y)
}
