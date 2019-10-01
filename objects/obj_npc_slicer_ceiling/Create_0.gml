/// @description Create and position the claws
// You can write your code in this editor

leftClaw = instance_create(x-8, y-8, obj_npc_slicer_claw)
leftClaw.depth = depth + 1
leftClaw.image_speed = 0
rightClaw = instance_create(x+8, y-8, obj_npc_slicer_claw)
rightClaw.depth = depth - 1
rightClaw.image_speed = 0