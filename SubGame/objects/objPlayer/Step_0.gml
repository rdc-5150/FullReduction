key_up = keyboard_check(ord("W"));
key_left = keyboard_check(ord("A"));
key_down = keyboard_check(ord("S"));
key_right = keyboard_check(ord("D"));


move_x = key_right - key_left;
move_x *= move_speed;

if (place_meeting(x, y+2, objWall))
{
	move_y = 0;
	if (key_up) move_y = -jump_speed;
}
else if (move_y < 20) move_y += 1;
    
move_and_collide(move_x, move_y, objWall);

if (move_x != 0) image_xscale = sign(move_x);
    

