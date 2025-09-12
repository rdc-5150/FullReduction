//power upgrade item collection
if (place_meeting(x, y, objPwr)) {
    ship_power = 100;
    ship_power_max =  (ship_power / ship_power_max) + 50;
}
    with (other) {
        instance_destroy();
    }

if ship_power_max >= 100
{
draw_sprite(sprPwr, 0, x, y-32);
}
   