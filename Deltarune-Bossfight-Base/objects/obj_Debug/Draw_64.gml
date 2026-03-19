// obj_Debug - Draw Event
draw_self();
image_xscale = 0.5;
image_yscale = 0.5;

draw_set_color(c_green);
draw_set_font(fnt_System);

#region Debug

if (keyboard_check_pressed(ord("T")))
{
	DisplayDebug =! DisplayDebug;
}

if (DisplayDebug == true)
{
	var fntSize = 25
	
	//Debug Text and values
	draw_text(25, 25+(fntSize*0), "Debug Settings Enabled. Press ESC to exit. | 1: Main Game Room. | 2: Middy's Test Lab. | 3: Hedge's Test Lab.");
	draw_text(25, 25+(fntSize*1), "Current Room: " + room_get_name(room));
	draw_text(25, 25+(fntSize*3), "Playable Area:" + "\nX1: " + string(obj_System.PlayAreaX1) + "\n" + "X2:" + string(obj_System.PlayAreaX2) + "\n" 
	+ "Y1: " + string(obj_System.PlayAreaY1) + "\n" + "Y2: " + string(obj_System.PlayAreaY2));
	
	if instance_exists(obj_DeltStuff)
	{
		draw_text(25*10, 25+(fntSize*3), "Player Variables:");
		draw_text(25*10, 25+(fntSize*4), "HP: " + string(obj_System.PlayerHP) + " / " + string(obj_System.PlayerMaxHP));
		draw_text(25*10, 25+(fntSize*5), "TP: Not Implimented Yet");
		if (obj_DeltStuff.SoulMode = 0){draw_text(25*10, 25+(fntSize*6), "Soul Col: Red/Wrath")}
		if (obj_DeltStuff.SoulMode = 1){draw_text(25*10, 25+(fntSize*6), "Soul Col: Blue/Pride")}
	}
	
	if instance_exists(obj_HUD)
	{
		draw_text(25, 25+(fntSize*9), "Screen Vars: ");
		draw_text(25, 25+(fntSize*10), "Res W: " + string(obj_System.Res_W));
		draw_text(25, 25+(fntSize*11), "Res H: " + string(obj_System.Res_H));
		draw_text(25, 25+(fntSize*12), "Res scale: " + string(obj_System.Res_Scale));
		
		draw_text(25*10, 25+(fntSize*9), "Wind Vars: (Res * Res-scale)");
		draw_text(25*10, 25+(fntSize*10), "Wind W: " + string(obj_System.window_width));
		draw_text(25*10, 25+(fntSize*11), "Wind H: " + string(obj_System.window_height));
		
		if instance_exists(obj_camera)
		{
			//draw_text(25, 25+(fntSize*14), "Camera Target Pos: ");
			//draw_text(25, 25+(fntSize*15), "TargX: " + string(obj_camera.targX));
			//draw_text(25, 25+(fntSize*16), "TargY: " + string(obj_camera.targY));
		
			draw_text(25*10, 25+(fntSize*14), "Camera Target zoom: ");
			draw_text(25*10, 25+(fntSize*15), "Zoom Rate: " + string(obj_camera.zoomrate));
			draw_text(25*10, 25+(fntSize*16), "Cam x: " + string(camera_get_view_x(view_camera[0])));
			draw_text(25*10, 25+(fntSize*17), "Cam y: " + string(camera_get_view_y(view_camera[0])));
		
			//draw_text(25*10, 25+(fntSize*9), "Zoom Time: " + string(obj_VeiwTinkering.zoomtime));
			//draw_text(25*10, 25+(fntSize*10), "Zoom rate: " + string(obj_VeiwTinkering.zoomrate));
			//draw_text(25*10, 25+(fntSize*11), "Zoom Min max: " + string(obj_VeiwTinkering.zoomMinMax));
		}
	}
}
#endregion

//========================