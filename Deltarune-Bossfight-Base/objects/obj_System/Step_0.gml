// obj_System - Step Event

#region Step Micros

//i made macros here for DeltaTime, this shoudl work! :D
actual_delta = delta_time / 1000000 //use this for Timers and clocks!
delta_multi = actual_delta / target_delta //Delta Multiplier: use this for everything else?

ComboMulti = delta_multi * WorldSpeed; //combines Delta_Multi with the WorldSpeed (obj_System.ComboMulti)

#endregion

#region Instance Spawning
if !instance_exists(obj_camera)
{
	instance_create_depth(room_width/2, room_height/2, 0, obj_camera)	
}

if !instance_exists(obj_DeltStuff)
{
	instance_create_depth(x-32, y, 0, obj_DeltStuff);
}

if !instance_exists(obj_HUD)
{
	instance_create_depth(0, 16, 0, obj_HUD);
}
if !instance_exists(obj_Debug)
{
	instance_create_depth(0, 0, -10, obj_Debug);
}
#endregion

#region Pauseing
if (keyboard_check_pressed(vk_home))
{
	if (Paused != true)
	{
		Paused = true;
		PrevWorldSpeed = WorldSpeed; //mostly used to restore world speed after pausing
		WorldSpeed = 0;
	}
	else
	{
		Paused = false;
		WorldSpeed = PrevWorldSpeed
	}
}

#endregion