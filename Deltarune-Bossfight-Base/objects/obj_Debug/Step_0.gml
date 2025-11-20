/// objDebugobject - Step Event

#region Key presses
//Quit Game
if (keyboard_check_pressed(vk_escape))
{
	game_end();	
}

//Special rooms
if (keyboard_check_pressed(ord("1")))
{
	room_goto(rm_Main);
}

if (keyboard_check_pressed(ord("2")))
{
	room_goto(rm_MiddyLab);	
}

if (keyboard_check_pressed(ord("3")))
{
	room_goto(rm_HedgeLab);
}

//Player Invuln
if (instance_exists(obj_Player))
{
	with(obj_Player)
	{
		if (keyboard_check_pressed(vk_f1))
		{
			Invuln = !Invuln;	
		}
		if (keyboard_check_pressed(vk_f2))
		{
			Invuln = true	
			InvulnTimer = 120
		}
	}
}

#endregion

#region Playable Area Manipulation
if (keyboard_check_pressed(vk_f5))
{
	global.SpellActive =! global.SpellActive;
}

if (keyboard_check_pressed(vk_f6))
{
	global.Darkness =! global.Darkness
}

if (instance_exists(obj_HUD))
{
	with(obj_HUD)
	{
		if (keyboard_check_pressed(vk_f7))
		{
			HudActive = !HudActive;
		}
	}
}

if (keyboard_check(ord("A")))
{
	//global.PlayAreaX1 += 1
	//global.PlayAreaX2 -= 1
	//global.PlayAreaY1 += 1
	//global.PlayAreaY2 -= 1
}
if (keyboard_check(ord("D")))
{
	//global.PlayAreaX1 -= 1
	//global.PlayAreaX2 += 1
	//global.PlayAreaY1 -= 1
	//global.PlayAreaY2 += 1
}

if (keyboard_check_pressed(ord("3")))
{
	room_goto(rm_HedgeLab);
}

#endregion