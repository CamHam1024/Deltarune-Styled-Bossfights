// obj_Player - Draw Event

//Player Animation
playerAnimation += image_speed * obj_System.ComboMulti;
if (playerAnimation == 3) {playerAnimation = 0;}

#region invuln Anim
if (Invuln == true)
{
	SSTimer += 1;
	if (SSTimer == 15)
	{
		if (SoulSat == 255)
		{
			SoulSat = 100
		}
		else
		{
			SoulSat = 255	
		}
		SSTimer = 0;
	}
}
else
{
	SoulSat = 255
}
#endregion

//the sprite is drawn in obj_PlayArea
