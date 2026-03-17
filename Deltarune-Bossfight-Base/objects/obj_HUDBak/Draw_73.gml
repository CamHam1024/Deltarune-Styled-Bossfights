/// @description Darkness and SpotLight effect
// obj_HUD - End Draw Event

#region EFFECT LAYER 0 (for effects) experimental... maybe used for drawing things in darkness?

if (global.Darkness == true)
{
	//create surface
	if (!surface_exists(global.Background_Surface[0]))
	{
		global.Background_Surface[0] = surface_create(room_width, room_height); //Normal playable Area Surface
	}
    
	draw_surface_part_ext(global.Background_Surface[0], global.PlayAreaX1, global.PlayAreaY1, obj_PlayAreaBAK.xsize*2, obj_PlayAreaBAK.ysize*2, 
	global.PlayAreaX1, global.PlayAreaY1, 1, 1, c_white, 1);
	
	//draw on surface
	//set surface
	surface_set_target(global.Background_Surface[0]); //Set the Surface to the Global set surface
	draw_clear_alpha(c_black, 0); //Cleans up the surface (unless you want MSPaint!)
	
	//= darkness background =
	
	//draw_rectangle_color(0, 0, 1920, 1080, 0, 0, 0, 0, 0)
	//StageBG_MiddyLab();
	
	// ====
    
	#region Enemy glow in the dark design
	
	with(obj_Twoface)
	{
		draw_sprite_ext(spr_TestEnemies, 1, x, y, 2, 2, 0, c_white, 1)
	}

	#endregion
    
	#region Lanturn lighted objects
	
	gpu_set_blendmode(bm_subtract);
	
	with(obj_Twoface)
	{
		if (SpotLight == true)
		{
			lanturn_effect(x, y, 50, 10, 100);
		}
	}

	lanturn_effect(mouse_x, mouse_y, 100, 5, 50);
	
	#endregion 
	
	// ====
	gpu_set_blendmode(bm_normal);
	//==
	surface_reset_target();

}
else
{
	if (surface_exists(global.Background_Surface[0])){ surface_free(global.Background_Surface[0]); }
}
	
#endregion 