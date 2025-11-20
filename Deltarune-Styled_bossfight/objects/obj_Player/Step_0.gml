// obj_Player - Step Event

#region Player Movement
//Player Movement
//Left
if (keyboard_check(vk_left))
{
	if (x > global.PlayAreaX1+(sprite_width/2))
	{
		x -= playerSpeed * moveMulti * global.ComboMulti;
	}
}

//Right
if (keyboard_check(vk_right))
{
	if (x < global.PlayAreaX2-(sprite_width/2))
	{
		x += playerSpeed * moveMulti * global.ComboMulti;
	}
}

//Up
if (keyboard_check(vk_up))
{
	if (y > global.PlayAreaY1+(sprite_height/2))
	{
		y -= playerSpeed * moveMulti * global.ComboMulti;
	}
}

//Down
if (keyboard_check(vk_down))
{
	if (y < global.PlayAreaY2-(sprite_height/2))
	{
		y += playerSpeed * moveMulti * global.ComboMulti;
	}
}

#endregion

#region Player Focusing

if (keyboard_check(vk_shift))
{
	focused = true;
	if (moveMulti > 0.5)
	{
		moveMulti -= 0.5/10	
	}
}
else
{
	focused = false;	
	if (moveMulti < 1)
	{
		moveMulti += 0.5/10	
	}
}

#endregion

#region Keeping Player in bounds
var moveDis = 0; //calculates how far the player overshoots	

//Puts player back into the bounds
//Left
if (x < global.PlayAreaX1 + (sprite_width/2)) 
{
	moveDis = global.PlayAreaX1 - x;
	x = x + (sprite_width/2) + moveDis;
}
//Right
if (x > global.PlayAreaX2 - (sprite_width/2)-1)
{
	moveDis = x - global.PlayAreaX2;
	x = x - (sprite_width/2) - moveDis + 1;
}
//Up
if (y < global.PlayAreaY1 + (sprite_height/2))
{
	moveDis = global.PlayAreaY1 - y;
	y = y + (sprite_height/2) + moveDis;
}
//down
if (y > global.PlayAreaY2 - (sprite_height/2)-1)
{
	moveDis = y - global.PlayAreaY2;
	y = y - (sprite_height/2) - moveDis+1;
}
#endregion

#region Player invuln

if (InvulnTimer == 0)
{
	Invuln = false;
	InvulnTimer = -1
}
else if (InvulnTimer > 0)
{
	InvulnTimer --;	
}

#endregion



