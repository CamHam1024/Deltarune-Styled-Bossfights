function BG_MiddyLabHUD() //Middy Lab HUD
{
	//Variable init
	if !variable_instance_exists(id, "BGmove")
	{
		BGmove = 0;
	}
	
	//Draw code
	BGmove += 0.15 * global.WorldSpeed;
	
	var Col1 = make_color_hsv(220,255,30)
	var Col2 = make_color_hsv(70,255,30)
	var Col3 = make_color_hsv(220,255,255)
	var Col4 = make_color_hsv(70,255,255)
	
	//draw solid
	draw_rectangle_color(0, 0, 1920, 1080, Col1, Col1, Col2, Col2, 0);
	
	//set blendmode so that the alpha is displayed correctly
	gpu_set_colorwriteenable(true, true, true, false)
	
	//draw Alpha stuff
	draw_sprite_tiled_ext(spr_TestBG, 0, 10+BGmove, -10+BGmove, 0.8, 0.8, Col3, 0.05);
	draw_sprite_tiled_ext(spr_TestBG, 0, -BGmove, -BGmove, 0.8, 0.8, Col4, 0.05);
	
	//reset the blendmode
	gpu_set_colorwriteenable(true, true, true, true)
	
}