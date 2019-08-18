/// @description Insert description here
// You can write your code in this editor
base = instance_create(baseX, baseY, obj_swingingclaw_base)
base.depth = 1
claw = instance_create(baseX, baseY + chainLength, obj_swingingclaw_claw)
claw.depth = 1
