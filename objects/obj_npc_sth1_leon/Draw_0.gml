/// @description Insert description here
// State 0 - Not visible
// State 1 - Visible, waiting
// State 2 - Shooting
// State 3 - Disappearing

if (state == 0) {
	draw_sprite(spr_npc_sth1_leon_appear, 0, x, y);
} else if (state == 1) {
	draw_sprite(spr_npc_sth1_leon_appear, 1, x, y);
} else if (state == 2) {
	draw_sprite(spr_npc_sth1_leon, 0, x, y);
}