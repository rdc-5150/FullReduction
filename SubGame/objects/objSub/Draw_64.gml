////GMLive}
if (live_call()) return live_result;
    
//health bar box
var pc;
pc = (hull / hullmax) * 100;
draw_healthbar(2, 2, 256, 20, (hull / hullmax) * 100, c_black, c_red, c_fuchsia, 0, true, true);

//power bar boxes
var pc2;
pc2 = (ship_power / ship_power_max) * 100;

//electric engine
if sprite_index = sprSubElec
    draw_healthbar(512, 2, 766, 20, (ship_power / ship_power_max) * 100, c_black, c_yellow, c_yellow, 0, true, true);

//bioreactor engine
if sprite_index = sprSubBio
    draw_healthbar(512, 2, 766, 20, (ship_power / ship_power_max) * 100, c_black, c_red, c_red, 0, true, true);

//nuclear engine
if sprite_index = sprSubNuke
    draw_healthbar(512, 2, 766, 20, (ship_power / ship_power_max) * 100, c_black, c_lime, c_lime, 0, true, true);