/// @description Insert description here
// State 0 - Not visible
// State 1 - Visible, waiting
// State 2 - Shooting
// State 3 - Disappearing

if (state == 0) {
	//draw_sprite(spr_npc_sth1_leon_appear, 0, x, y);
	draw_sprite_ext(spr_npc_sth1_leon_appear, 0, x, y, -1, 1, 0, -1, 1);
} else if (state == 1) {
	//draw_sprite(spr_npc_sth1_leon_appear, 1, x, y);
	draw_sprite_ext(spr_npc_sth1_leon_appear, 1, x, y, -1, 1, 0, -1, 1);
} else if (state == 2) {
	draw_sprite_ext(spr_npc_sth1_leon, 0, x, y, -1, 1, 0, -1, 1);
}