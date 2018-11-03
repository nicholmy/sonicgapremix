/// @description  Draw Sparkles.

var _roll = 80;  //how much ring is tilted toward camera
var _pitch = sin(time*0.12)*15;  //rocking back and forth
var _x0 = dcos(_pitch);
var _x1 = dsin(_pitch)*dcos(_roll);
var _y0 = -dsin(_pitch);
var _y1 = dcos(_pitch)*dcos(_roll)
var _yaw = time * 30;  //rotation of ring
var _scale = sin(time*0.03) * 20 + 5; //expand or shrink
for (var i = 0; i < 360; i += 45) {
var _x = random_range(0.8,1.2) * _scale * dcos(i + _yaw);
var _y = random_range(0.8,1.2) * _scale * dsin(i + _yaw);
    var _xx = x + _x * _x0 + _y * _x1;
    var _yy = y + _x * _y0 + _y * _y1;
    draw_sprite(sprite_index,-1,_xx,_yy);
}
time += 0.5;

