/// @description Insert description here
// You can write your code in this editor
if (timer < 60) {
	state = 0;
	mask_index = spr_skewer_short;
} else if (timer < 65) {
	state = 1;
	mask_index = spr_skewer_mid;
} else if (timer < 125) {
	state = 2;
	mask_index = spr_skewer_long;
} else {
	state = 1;
	mask_index = spr_skewer_mid;
}

timer = (timer + 1) % 130