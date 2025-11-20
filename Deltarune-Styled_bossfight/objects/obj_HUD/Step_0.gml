// obj_HUD - Step Event
#region ScreenShake

if (Shaking == true)
{
	
	var xx = camPos_x + random_range(-Shake_Amount, Shake_Amount);
	var yy = camPos_y + random_range(-Shake_Amount, Shake_Amount);
	
	camera_set_view_pos(camera, xx, yy);
	
	if (Shake_Timer > 0)
	{
		Shake_Timer -= 1	
	}
	else
	{
		Shaking = false;
	}
}
else
{
	camera_set_view_pos(camera, camPos_x, camPos_y);	
}
#endregion

// === Stage Animation Vars ===
StageBGVar += 0.3 * global.WorldSpeed;
// ===