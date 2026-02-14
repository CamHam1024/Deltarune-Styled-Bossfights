// obj_System - Step Event

#region Step Micros

//i made macros here for DeltaTime, this shoudl work! :D
actual_delta = delta_time / 1000000 //use this for Timers and clocks!
delta_multi = actual_delta / target_delta //Delta Multiplier: use this for everything else?

ComboMulti = delta_multi * WorldSpeed; //combines Delta_Multi with the WorldSpeed

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