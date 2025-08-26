if (live_call()) return live_result;
    
//wall collision
if (place_meeting(x, y, objWall)){
    hspd = 0
    vspd = 0
}
var push_distance = 2;
if (place_meeting(x + push_distance, y, objWall)) {
    x -= push_distance;
}
if (place_meeting(x - push_distance, y, objWall)) {
    x += push_distance;
}
if (place_meeting(x, y + push_distance, objWall)) {
    y -= push_distance;
}
if (place_meeting(x, y - push_distance, objWall)) {
    y += push_distance;
    
}