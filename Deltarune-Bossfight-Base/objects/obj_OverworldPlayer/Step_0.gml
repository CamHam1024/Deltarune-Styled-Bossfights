//Initialize
right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
down_key = keyboard_check(vk_down);
up_key = keyboard_check(vk_up);

//Key Press
//(its configuyred like thius to avoid the values cancelling out)
if (right_key = 1 && left_key = 1)
{
	right_key = 0;
}

if (down_key = 1 && up_key = 1)
{
	down_key = 0;
}

//calc the movement
xSpd = (right_key - left_key) * moveSpd * obj_System.ComboMulti;
ySpd = (down_key - up_key) * moveSpd * obj_System.ComboMulti;

//Colision

Arr = move_and_collide(xSpd, ySpd, obj_Solid_par);

if array_length(Arr) != 0 and place_meeting(x + (xSpd), y, obj_Solid_par) == true
{
	x -= (right_key - left_key)
	xSpd = 0;
}

if array_length(Arr) != 0 and place_meeting(x, y + (ySpd), obj_Solid_par) == true
{
	y -= (down_key - up_key)
	ySpd = 0;
}


//Apply movement
x += xSpd;
y += ySpd;