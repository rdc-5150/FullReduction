//nuclear engine upgrade item collection
if (place_meeting(x, y, objNukeEng)) {
    sprite_index = sprSubNuke;
    ship_power = 250
    ship_power_max = 250;
    acceleration += .075
}
 with (other) {
        instance_destroy();
    }