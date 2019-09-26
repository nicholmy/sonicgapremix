/// @description Reset the state of the slicer
// Don't reset if the slicer is in panic
if (state != 3) {
	instance_destroy(leftClaw)
	instance_destroy(rightClaw)

	image_speed = 1
	state = 0

	leftClaw = instance_create(x-8, y+8, obj_npc_slicer_claw)
	leftClaw.depth = depth + 1
	leftClaw.image_speed = 0
	rightClaw = instance_create(x+8, y+8, obj_npc_slicer_claw)
	rightClaw.depth = depth - 1
	rightClaw.image_speed = 0
}