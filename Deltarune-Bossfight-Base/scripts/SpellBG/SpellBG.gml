//StageBG
function SpellBG_Kami() //Middy Lab
{
	//variable Init
	if !variable_instance_exists(id, "KamiMove")
	{
		KamiMove = 0;
		KamiHue = 0;
	}
	
	//draw code
	KamiMove += 1 * global.WorldSpeed;
	KamiHue += 1 * global.WorldSpeed;
	
	if (KamiMove == 64){KamiMove = 0;}
	if (KamiHue >= 255){KamiHue = 0;}
	
	//draw Solid
	
	//set blendmode so that the alpha is displayed correctly
	gpu_set_colorwriteenable(true, true, true, false);
	
	//draw alpha stuff
	draw_sprite_tiled_ext(spr_TestBGSpell, 0, KamiMove, KamiMove, 1, 1, make_color_hsv(KamiHue, 255, 255), 0.1*SpellAlpha);
	
	//reset blendmode
	gpu_set_colorwriteenable(true, true, true, true);
	
}