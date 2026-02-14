// obj_Player - Draw Event

//draw_sprite_ext(spr_Middy, playerAnimation, x, y, 1, 1, 0, c_white, 1);
//draw_sprite_ext(spr_TestPlayer, image_index, x, y, 2, 2, 0, make_color_hsv(255,255,255), 0.1);

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

//draw_sprite_ext(spr_Middy, playerAnimation, x, y, 1, 1, 0, c_white, 1);
draw_sprite_ext(spr_TestPlayer, image_index, x, y, image_xscale, image_yscale, 0, make_colour_hsv(obj_DeltStuff.SoulColour,255,SoulSat), 1);
