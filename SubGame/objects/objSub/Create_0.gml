if (live_call()) return live_result;
    

// Movement variables
hspd = 0;                // Horizontal velocity
vspd = 0;                // Vertical velocity
acceleration = 0.085;      // How fast sub speeds up
friction = 10;          // Water resistance

// Physics
water_resistance = 0.95; // Velocity multiplier each step

//Hull strength
hull = 100 // base HP of ship
hullmax = 100 //maximum HP of ship

//Power Reserves
ship_power = 100 //ship's power stores
ship_power_max = 100 //ship's maximum power stores

////light orb system
//orbmax = 2 //number of orbs that can be used

facing = 0

torpacq = false