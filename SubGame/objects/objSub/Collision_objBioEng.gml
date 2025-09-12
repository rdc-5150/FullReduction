//bioreactor engine upgrade item collection
if (place_meeting(x, y, objBioEng)) {
    sprite_index = sprSubBio
    ship_power = 150
    ship_power_max = 150;
    acceleration += .075;
    
}
 with (other) {
        instance_destroy();
    }