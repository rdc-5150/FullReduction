//GMLive
if (live_call()) return live_result;

// Input detection
var input_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
var input_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var input_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
var input_down = keyboard_check(vk_down) || keyboard_check(ord("S"));


// === DIRECTIONAL MOVEMENT ===
if (input_left) {
    hspd -= acceleration;
    //during movement the ship's power level will slowly regenerate
    ship_power += .02;
}

if (input_right) {
    hspd += acceleration;
    //during movement the ship's power level will slowly regenerate
    ship_power += .02;
    
}
if (input_up) {
    vspd -= acceleration;
            //during movement the ship's power level will slowly regenerate
    ship_power += .02;
}

if (input_down) {
        //during movement the ship's power level will slowly regenerate
    vspd += acceleration;
    ship_power += .02;
}

// Sprite rotation based on movement direction
var target_angle = image_angle;

// Straight movements 
if (input_left) {
    image_xscale = -1;
    target_angle = 0;    // Straight left
}

if (input_right) {
    image_xscale = 1;
    target_angle = 0;    // Straight right
}
   
//angled movements
if (input_right && input_up) {
    image_xscale = 1;
    target_angle = 25;    // Straight right
}
   
if (input_right && input_down) {
    image_xscale = 1;
    target_angle = -25;    // Straight right
}
if (input_left && input_up) {
    image_xscale = -1;
    target_angle = -25;    // Straight right
}
if (input_left && input_down) {
    image_xscale = -1;
    target_angle = 25;    // Straight right
}
    

// Smooth rotation interpolation
var rotation_speed = 5; // Adjust this value to control rotation smoothness
image_angle = lerp(image_angle, target_angle, rotation_speed * (1/60));

x = clamp(x,0, room_width);

y= clamp(y,0,room_height); 


// Water resistance
hspd *= water_resistance;
vspd *= water_resistance;

// === APPLY MOVEMENT ===
x += hspd;

y += vspd;

//Torpedo firing
if torpacq = true{
    if ship_power >= 10 
    if (keyboard_check_pressed(ord("M"))) {
    var bullet = instance_create_layer(x, y+5, "Instances", objTorpedo)
    bullet.direction = point_direction(0, 0, image_xscale, 0); 
        ship_power -= 5;
    }
}