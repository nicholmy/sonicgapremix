/// @description Create platforms
// You can write your code in this editor
for (var i = 0; i < platCount; i++) {
	platArr[i] = instance_create(x, y, obj_pulley_platform); 
	platArr[i].progress = (i / platCount) * maxPathLength;
}