//StageBG
//gpu_set_colorwriteenable(true, true, true, false) Use this to make the alpha work correctly

function StageBG_MiddyLab(moveVar) //Middy Lab
{
	var Col = make_color_hsv(70,255,30)
	
	//draw solid
	draw_rectangle_color(0, 0, room_width, room_height, Col, Col, c_black, c_black, 0); //creates a black background for testing!
	
	//set blendmode so that the alpha is displayed correctly
	gpu_set_colorwriteenable(true, true, true, false)
	
	//draw Alpha stuff
	draw_sprite_tiled_ext(spr_TestBG, 0, 0, -moveVar/2, 0.5, 0.5, c_lime, 0.05);
	draw_sprite_tiled_ext(spr_TestBG, 0, 0, -moveVar, 1, 1, c_lime, 0.1);
	
	//reset the blendmode
	gpu_set_colorwriteenable(true, true, true, true)
}

function StageBG_MiddyLabAlt() //Middy Lab
{
	//Variable init
	if !variable_instance_exists(id, "ABGmove")
	{
		ABGmove = 0;
	}
	
	//Draw code
	ABGmove += 0.3 * global.WorldSpeed;
	
	var Col = make_color_hsv(200,0,255)
    var Col2 = make_color_hsv(200,200,150)
	
	//draw solid
	draw_rectangle_color(0, 0, room_width, room_height, Col, Col, Col2, Col2, 0);
	
	//set blendmode so that the alpha is displayed correctly
	gpu_set_colorwriteenable(true, true, true, false)
	
	//draw Alpha stuff
	draw_sprite_tiled_ext(spr_TestBG, 0, 0, ABGmove/2, 0.8, 0.8, c_red, 0.05);
	draw_sprite_tiled_ext(spr_TestBG, 0, 0, ABGmove, 1, 1, c_red, 0.1);
	
	//reset the blendmode
	gpu_set_colorwriteenable(true, true, true, true)
	
	//for vore backgrounds if i ever use em
	
}
