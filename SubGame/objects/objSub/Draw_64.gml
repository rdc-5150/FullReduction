//background black box
draw_rectangle_color(0,0,512,30,c_black,c_black,c_black,c_black,false)

//health bar box
var pc;
pc = (hull / hullmax) * 100;
draw_healthbar(128, 2, 384, 15, (hull / hullmax) * 100, c_black, c_red, c_blue, 0, true, true);

//power bar boxes
var pc2;
pc2 = (ship_power / ship_power_max) * 100;
//electric engine
if image_index = 0
    draw_healthbar(128, 30, 384, 15, (ship_power / ship_power_max) * 100, c_black, c_yellow, c_yellow, 0, true, true);
//bioreactor engine
if image_index = 1
    draw_healthbar(128, 30, 384, 15, (ship_power / ship_power_max) * 100, c_black, c_red, c_red, 0, true, true);
//nuclear engine
if image_index = 2
    draw_healthbar(128, 30, 384, 15, (ship_power / ship_power_max) * 100, c_black, c_lime, c_lime, 0, true, true);


//draw_text(10, 12, string(ammo)); 
//draw_sprite(sprTorpedo,0,20,10);