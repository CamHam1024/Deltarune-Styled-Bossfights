// obj_System - Step Event

#region Step Micros

//i made macros here for DeltaTime, this shoudl work! :D
global.actual_delta = delta_time / 1000000 //use this for Timers and clocks!
global.delta_multi = global.actual_delta / target_delta //Delta Multiplier: use this for everything else?

global.ComboMulti = global.delta_multi * global.WorldSpeed; //combines Delta_Multi with the WorldSpeed

#endregion

#region Pauseing

if (keyboard_check_pressed(vk_home))
{
	if (global.Paused != true)
	{
		global.Paused = true;
		PrevWorldSpeed = global.WorldSpeed; //mostly used to restore world speed after pausing
		global.WorldSpeed = 0;
	}
	else
	{
		global.Paused = false;
		global.WorldSpeed = PrevWorldSpeed
	}
}

#endregion