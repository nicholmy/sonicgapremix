/// @description Move
// Add gravity as a force
if (hasGravity) {
	YAccel += Gravity
}

// Add forces to the object's speed...
XSpeed += XAccel
YSpeed += YAccel

// Check for collision
// ...But only move if they don't collide with something
if(place_meeting(x + XSpeed, y, par_collision_solid)){ 
	while(!place_meeting(x + sign(XSpeed), y, par_collision_solid)){ 
		x += sign(XSpeed); 
	}
	
	if (bounceWalls) {
		image_xscale *= -1;
		XSpeed         *= -1;
	}
} else if(place_meeting(x + XSpeed, y, obj_badnik_wall)){ 
    while(!place_meeting(x + sign(XSpeed), y, obj_badnik_wall)){ 
            x += sign(XSpeed); 
    } 
	if (bounceWalls) {
		image_xscale *= -1;
		XSpeed         *= -1;
	}
} 
x += XSpeed

if(place_meeting(x, y + YSpeed, par_collision_terrain)){
	while(!place_meeting(x, y + sign(YSpeed), par_collision_terrain)){
	        y += sign(YSpeed);
	}
	if (YSpeed > 0) isGround = true;
} 
y += YSpeed