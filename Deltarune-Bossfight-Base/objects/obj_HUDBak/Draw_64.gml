// obj_HUD - Draw Gui Event

#region Draw HUD
if (HudActive == true)
{
	#region HUD 1
	//create the surface
	if (!surface_exists(global.Background_Surface[1]))
	{
		global.Background_Surface[1] = surface_create(room_width, room_height); //Normal playable Area Surface
	}

	//draw the surface
	//top
	draw_surface_part_ext(global.Background_Surface[1], 0, 0, room_width, global.PlayAreaY1, 0, 0, 1, 1, c_white, 1);
	//left
	draw_surface_part_ext(global.Background_Surface[1], 0, global.PlayAreaY1, global.PlayAreaX1, global.PlayAreaY2-global.PlayAreaY1, 0, global.PlayAreaY1, 1, 1, c_white, 1);
	//bottom
	draw_surface_part_ext(global.Background_Surface[1], 0, global.PlayAreaY2, room_width, room_height-global.PlayAreaY2, 0, global.PlayAreaY2, 1, 1, c_white, 1);
	//right
	draw_surface_part_ext(global.Background_Surface[1], global.PlayAreaX2, global.PlayAreaY1, room_width+global.PlayAreaX2, global.PlayAreaY2-global.PlayAreaY1, global.PlayAreaX2, global.PlayAreaY1, 1, 1, c_white, 1);

	surface_set_target(global.Background_Surface[1]); //Set the Surface to the Global set surface
	draw_clear_alpha(c_black, 0); //Cleans up the surface (unless you want MSPaint!)

	//draw on surface

	//HUD Design script
	//BG_MiddyLabHUD()
	
	//Outline
	draw_rectangle_color(global.PlayAreaX1-5, global.PlayAreaY1-5, global.PlayAreaX2+5, global.PlayAreaY2+5, c_dkgray, c_dkgray, c_dkgray, c_dkgray, 0)

	// ====

	surface_reset_target();

	#endregion
}
else
{
	if (surface_exists(global.Background_Surface[1])){ surface_free(global.Background_Surface[1]); }	
}
#endregion