//GMLive
if (live_call()) return live_result;


// Input detection keyboard
var input_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
var input_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var input_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
var input_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
var input_A = keyboard_check_pressed(ord("Z"));
var input_B = keyboard_check_pressed(ord("X"));
var input_C = keyboard_check_pressed(ord("C"))


 // Sprite rotation based on movement direction
var target_angle = image_angle; 

// Straight spritemovements 
if (input_left) {
    image_index = 1;
    target_angle = 0;    // Straight left
}

if (input_right) {
    image_index = 0;
    target_angle = 0;    // Straight right
}
   
////angled sprite movements
if (input_right && input_up) {
    image_index = 0;
    target_angle = 25;    // Straight right
}
   
if (input_right && input_down) {
     image_index = 0;
    target_angle = -25;    // Straight right
}
if (input_left && input_up) {
     image_index = 1;
    target_angle = -25;    // Straight right
}
if (input_left && input_down) {
    image_index = 1;
    target_angle = 25;    // Straight right
}

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


////controller movement
//var _gp = global.gamepad_main;
//if (_gp != undefined) 
//{
    //input_left = gamepad_axis_value(_gp, gp_axislh);
    //input_right = gamepad_axis_value(_gp, gp_axislh);
    //input_up = gamepad_axis_value(_gp, gp_axislv);
    //input_down = gamepad_axis_value(_gp, gp_axislv);
    //input_A = gamepad_button_check_pressed(_gp, gp_shoulderl); 
    //input_B = gamepad_button_check_pressed(_gp, gp_shoulderr); 
    //input_C = gamepad_button_check_pressed(_gp, gp_stickr);
//} 


//
////Variables for Red/Ex
//var target_size = (image_xscale && image_yscale)


// Smooth rotation interpolation
var rotation_speed = 5; 

// Adjust this value to control rotation smoothness
image_angle = lerp(image_angle, target_angle, rotation_speed * (1/60));

//Room Clamp plus width of sub for Portals
x = clamp(x,0, room_width)
y = clamp(y,1, room_height); 


// Water resistance
hspd *= water_resistance;
vspd *= water_resistance;

// === APPLY MOVEMENT ===
x += hspd;
y += vspd;

//laser firing
//if torpacq = true{
    //if ship_power >= 10 {
           //if (keyboard_check(ord("M"))) {
            //var bullet = instance_create_layer(x, y + 10, "Instances", objTorpedo)
               //objTorpedo.image_angle = target_angle;
             //ship_power -= 2;
            //} 
        //
            //else if image_index = 0 {
               //if (keyboard_check(ord("M"))) {
                //var bullet = instance_create_layer(x, y + 10, "Instances", objTorpedo)
                //ship_power -= 2;
            //}
//}

 

//reduction mechanic, shoulder buttons on gamepad
if (keyboard_check_pressed(ord("Z"))){
    if image_yscale >= .15 
    { 
        image_yscale -= .15;
        image_xscale = image_yscale;
    }
    
}


//expansion mechanic
if (keyboard_check_pressed(ord("X"))){
    if image_yscale <= 1.85
    {
    image_yscale += .15;
    image_xscale = image_yscale;
    }
   
//reset to initial reduction
if (keyboard_check_pressed(ord("C"))){
    if image_yscale != 1 {
    image_yscale = 1
    image_xscale = image_yscale;
    }
} 
    
var cam = view_camera[0]; // Assuming you're using view 0

// Calculate new viewport size based on player scale
var base_width = 768;  // Your base viewport width
var base_height = 432; // Your base viewport height

var new_width = base_width * image_xscale;
var new_height = base_height * image_yscale;

// Apply the new viewport size
camera_set_view_size(cam, new_width, new_height);
}
