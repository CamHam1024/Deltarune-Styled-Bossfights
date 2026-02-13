// obj_Debug - Draw Event
draw_set_color(c_green);
draw_set_font(fnt_System);

#region Draw playable Area
var Col1 = c_black, Col2 = c_red;

if (keyboard_check_pressed(ord("P")))
{
	DisplayPA =! DisplayPA;
}

if (DisplayPA == true)
{
	
	draw_rectangle_color(global.PlayAreaX1, global.PlayAreaY1, global.PlayAreaX2, global.PlayAreaY2, Col2, Col2, Col2, Col2, 1);
}
#endregion

//========================

#region Draw Text

if (keyboard_check_pressed(ord("T")))
{
	DisplayText =! DisplayText;
}



if (DisplayText == true)
{
	var fntSize = 30
	
	//Debug Text and values
	draw_text(25, 25+(fntSize*0), "Debug Settings Enabled. Press ESC to exit. | 1: Main Game Room. | 2: Middy's Test Lab. | 3: Hedge's Test Lab.");
	draw_text(25, 25+(fntSize*1), "Current Room: " + room_get_name(room));
	draw_text(25, 25+(fntSize*3), "Playable Area:" + "\nX1: " + string(global.PlayAreaX1) + "\n" + "X2:" + string(global.PlayAreaX2) + "\n" 
	+ "Y1: " + string(global.PlayAreaY1) + "\n" + "Y2: " + string(global.PlayAreaY2));
	
	draw_text(25*10, 25+(fntSize*3), "Player Variables:\n" + "HP: " + string(global.PlayerHP) + " / " + string(global.PlayerMaxHP));
	
	if instance_exists(obj_VeiwTinkering)
	{
		draw_text(25, 25+(fntSize*9), "Screen Vars: ");
		draw_text(25, 25+(fntSize*10), "Res W: " + string(obj_VeiwTinkering.Res_W));
		draw_text(25, 25+(fntSize*11), "Res H: " + string(obj_VeiwTinkering.Res_H));
		draw_text(25, 25+(fntSize*12), "Res scale: " + string(obj_VeiwTinkering.Res_Scale));
		
		draw_text(25*10, 25+(fntSize*9), "Win Vars (Res * Res-scale)");
		draw_text(25*10, 25+(fntSize*10), "Win W: " + string(obj_VeiwTinkering.window_width));
		draw_text(25*10, 25+(fntSize*11), "Win H: " + string(obj_VeiwTinkering.window_height));
		
		//draw_text(25*10, 25+(fntSize*9), "Zoom Time: " + string(obj_VeiwTinkering.zoomtime));
		//draw_text(25*10, 25+(fntSize*10), "Zoom rate: " + string(obj_VeiwTinkering.zoomrate));
		//draw_text(25*10, 25+(fntSize*11), "Zoom Min max: " + string(obj_VeiwTinkering.zoomMinMax));
	}
}
#endregion
image_xscale = 0.5;
image_yscale = 0.5;
draw_self();